import fnmatch
import functools
import glob
import sys

reading = False

FORBID_INCLUDE = [
    r'code/**/*_docs.dm',
    r'code/**/README.dm',
]

IGNORE_INCLUDE = [
    # Some of these are included, some aren't.
    r'code/unit_tests/*.dm',
    # Ditto, todo: modularise or remove
    r'code/datums/music_tracks/*.dm',
    # TGS handles importing itself due to API security reasons
    r'code/modules/tgs/**/*.dm'
]

lines = []
total = 0
for line in sys.stdin:
    total+=1
    line = line.strip()

    if line == "// BEGIN_INCLUDE":
        reading = True
        continue
    elif line == "// END_INCLUDE":
        break
    elif not reading:
        continue

    lines.append(line)

offset = total - len(lines)
print(f"{offset} lines were ignored in output")
fail_no_include = False

for code_file in glob.glob("code/**/*.dm", recursive=True):
    dm_path = code_file.replace('/', '\\')

    included = f"#include \"{dm_path}\"" in lines
    forbid_include = False

    ignored = False
    for ignore in IGNORE_INCLUDE:
        if not fnmatch.fnmatch(code_file, ignore):
            continue

        ignored = True
        break

    if ignored:
        continue

    for forbid in FORBID_INCLUDE:
        if not fnmatch.fnmatch(code_file, forbid):
            continue

        forbid_include = True

        if included:
            print(f"{dm_path} should not be included")
            print(f"::error file={code_file},line=1,title=DME Validator::File should not be included")
            fail_no_include = True

    if forbid_include:
        continue

    if not included:
        print(f"{dm_path} is not included")
        print(f"::error file={code_file},line=1,title=DME Validator::File is not included")
        fail_no_include = True

if fail_no_include:
    sys.exit(1)

def compare_lines(a, b):
    # Remove initial include as well as the final quotation mark
    a = a[len("#include \""):-1].lower()
    b = b[len("#include \""):-1].lower()

    a_segments = a.split('\\')
    b_segments = b.split('\\')

    for (a_segment, b_segment) in zip(a_segments, b_segments):
        a_is_file = a_segment.endswith(".dm")
        b_is_file = b_segment.endswith(".dm")

        # code\something.dm will ALWAYS come before code\directory\something.dm
        if a_is_file and not b_is_file:
            return -1

        if b_is_file and not a_is_file:
            return 1

        # interface\something.dm will ALWAYS come after code\something.dm
        if a_segment != b_segment:
            return (a_segment > b_segment) - (a_segment < b_segment)

    raise f"Two lines were exactly the same ({a} vs. {b})"

failed = False
sorted_lines = sorted(lines, key = functools.cmp_to_key(compare_lines))
for (index, line) in enumerate(lines):
    if sorted_lines[index] != line:
        print(f"The include at line {index + offset} is out of order ({line}, expected {sorted_lines[index]})")
        print(f"::error file=nebula.dme,line={index+offset},title=DME Validator::The include at line {index + offset} is out of order ({line}, expected {sorted_lines[index]})")
        failed = True
if failed:
    sys.exit(1)
