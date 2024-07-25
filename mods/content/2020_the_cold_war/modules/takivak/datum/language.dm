/decl/language/takivak_english
	name = LANGUAGE_TAKIVAK
	desc = "The common tongue of Cassini IV (Akovei), ressamble the Old English from Medieval England."
	speech_verb = "woofs"
	ask_verb = "woofs"
	exclaim_verb = "barks"
	whisper_verb = "woofs softly"
	key = "2"
	flags = LANG_FLAG_WHITELISTED
	shorthand = "Tak"
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")

/decl/language/takivak/get_random_name(var/gender, name_count=2, syllable_count=4, syllable_divisor=2)
	var/new_name = ..(gender,1)
	if(prob(70))
		new_name += " [pick(list("Walce","Kirev","Kob","Maky","Willow","Varm","Dayese", "Marko","Adulf","Kazhan","Vled","Adair","Æbbe","Ainslie"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

//#803b56 is color

/decl/language/takivak/format_message(message, verb)
	return "[verb], <span class='message'><span style='color: #803b56'>\"[capitalize(message)]\"</span></span>"

/decl/language/takivak/format_message_radio(message, verb)
	return "[verb], <span style='color: #803b56'>\"[capitalize(message)]\"</span>"
