/datum/controller/subsystem/ticker
	if(pregame_timeleft == 60 SECONDS)
		var/list/hints = list(
			"1. 2020 start as a personnal change of a brazilian codebase.",
			"2. Space Station 13 is a good game",
			"3. Fragging is fun sometimes, just don't make it repetitive or very harmful.",
			"4. Follow the rules!",
			"5. Also try Goon Station!",
			"6. Also try UristMcStation!",
			"7. Also try Minecraft!",
			"8. 2020 has passed by 3 rebases.",
			"9. Cachorro11 use 2020 to test his knowladge about DM, so, bugs is very commons.",
			"10. Also DON'T try Splurt!",
			"11. Also try Lifeweb!",
			"12. Also try Artemis!",
			"13. Don't eat nether meat, is harmful!",
			"14. Don't eat ian, please.",
			"15. green captain is more cool.",
			"16. Central Command sometimes is assholers.",
			"17. Caution with the burning chamber, or you will melt the station!.",
			"18. Phoron is very dangerous, it may harm your liver, lungs and eyes.and is very painful.",
			"19. Vents and Scrubbers is not very efficient, try use canisters and portables to re-pressurize rooms. or boost the atmos system.",
			"20. Engineering can some times try new things to generate energy.",
			"21. Miners may find Anomalies while mining; don't touch and call a scientist!",
			"22. Scientist may do various things like; Experiment with Phoron and Chemistry, burn some monkeys and explode shit.",
			"23. Also try Space Station 3D!",
			"24. Also try Unity Station!",
			"25. Lummox is doing Webview 2 to byond, soon linux users will be able to play space station 13!",
			"26. Also try Solar Apocalypse on Byond!",
			"27. Also try BurgerStation!",
			"28. Also try Adrorium!",
			"29. Also try Dwarf Fortress!",
			"30. Also try Space Engineers!",
			"31. Also try Cataclysm: Dark Days Ahead!",
			"32. Space Statio 13 Start as a Atmospheric game.",
			"33. Exadv1 also work on Goon Station dev team! he remake the atmos system, making it better.",
			"34. ZAS may be unforgiving (Or slow).",
			"35. Did you know about Farweb?",
			"36. Space Station 14 is not very good :( ",
			"37. Also try Stalker!",
			"38. Don't stay so much time on Computer, find a job, walk on the streets and have a healthly life.",
			"39. Caveirinha is Starving in Norderste.",
			"40. Wow, 40 Hints (or some sort of)!")
			world << "[pick(hints)]"