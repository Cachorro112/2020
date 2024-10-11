/decl/language/kalyecis
	name = "Kalyecis"
	desc = "The common tongue of most Western Fareys, created on the old Kalyec Empire, by the (Obviously) Kalyec Fareys. ressamble the Old English from Medieval England."
	speech_verb = "barks"
	ask_verb = "arks" //thats stupid XD
	exclaim_verb = "yaps"
	whisper_verb = "barks softly"
	key = "2"
	flags = LANG_FLAG_WHITELISTED
	shorthand = "Kal"
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")

/decl/language/kalyecis/get_random_name(var/gender, name_count=2, syllable_count=4, syllable_divisor=2)
	var/new_name = ..(gender,1)
	if(prob(70))
		new_name += " [pick(list("Walce","Kirev","Kob","Maky","Willow","Varm","Dayese", "Marko","Adulf","Kazhan","Vled","Adair","Æbbe","Ainslie"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

//#803b56 is color

/decl/language/kalyecis/format_message(message, verb)
	return "[verb], <span class='message'><span style='color: #803b56'>\"[capitalize(message)]\"</span></span>"

/decl/language/kalyecis/format_message_radio(message, verb)
	return "[verb], <span style='color: #803b56'>\"[capitalize(message)]\"</span>"

/decl/language/abidys
	name = "Abidys"
	desc = "An ancient language spoken by the Abidye people, their langauge is hard to those westernes learn due to big differences between their languages. by the invasion of North-Central Continent, Abidys force their new conquered people to learn the language, starting an assimilation process on there. ressamble the Arabic and Persian language."
	speech_verb = "barks"
	ask_verb = "arks"
	exclaim_verb = "yaps"
	whisper_verb = "barks softly"
	key = "3"
	flags = LANG_FLAG_WHITELISTED
	shorthand = "Abi"
	syllables = list("ar","sar","vyr","all","allah","ves","het","mal","ey","oy","asa","aha","asha","vei","vey",
	"ol","se","vec","mare","ost","eas","gazr","adbu","muha","voh","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra") //more later

/decl/language/abidys/get_random_name(var/gender, name_count=2, syllable_count=4, syllable_divisor=2)
	var/new_name = ..(gender,1)
	if(prob(70))
		new_name += " [pick(list("Muhammad","Khalid","Calid","Mamel"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

//#803b56 is color  <- Going to change soon.

/decl/language/abidys/format_message(message, verb)
	return "[verb], <span class='message'><span style='color: #803b56'>\"[capitalize(message)]\"</span></span>"

/decl/language/abidys/format_message_radio(message, verb)
	return "[verb], <span style='color: #803b56'>\"[capitalize(message)]\"</span>"
