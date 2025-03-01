/datum/map
	var/default_currency = /decl/currency/credits

/decl/starting_cash_choice
	decl_flags = DECL_FLAG_MANDATORY_UID
	uid = "starting_cash_account"
	var/name = "all in bank account"
	var/transfer_mult = 1

/decl/starting_cash_choice/proc/get_cash_objects(var/mob/living/human/owner, var/datum/money_account/owner_account)
	return

/decl/starting_cash_choice/credstick
	name = "all on charge stick"
	uid = "starting_cash_stick"

/decl/starting_cash_choice/credstick/get_cash_objects(var/mob/living/human/owner, var/datum/money_account/owner_account)
	var/obj/item/charge_stick/credstick = new
	credstick.creator = owner.real_name
	credstick.currency = owner_account.currency
	credstick.loaded_worth = min(credstick.max_worth, floor(owner_account.money * transfer_mult))
	owner_account.money -= credstick.loaded_worth
	return list(credstick)

/decl/starting_cash_choice/credstick/half
	name = "split between bank account and charge stick"
	transfer_mult = 0.5
	uid = "starting_cash_account_stick_split"

/decl/starting_cash_choice/cash
	name = "all in cash"
	uid = "starting_cash_cash"

/decl/starting_cash_choice/cash/get_cash_objects(var/mob/living/human/owner, var/datum/money_account/owner_account)
	var/obj/item/cash/cash = new
	cash.set_currency(owner_account.currency)
	cash.adjust_worth(floor(owner_account.money * transfer_mult))
	owner_account.money -= cash.absolute_worth
	return list(cash)

/decl/starting_cash_choice/cash/half
	name = "split between bank account and cash"
	transfer_mult = 0.5
	uid = "starting_cash_cash_account_split"

/decl/starting_cash_choice/split
	name = "split between cash and charge stick"
	transfer_mult = 0.5
	uid = "starting_cash_cash_stick_split"

/decl/starting_cash_choice/split/get_cash_objects(var/mob/living/human/owner, var/datum/money_account/owner_account)
	. = list()
	var/obj/item/cash/cash = new
	cash.set_currency(owner_account.currency)
	cash.adjust_worth(floor(owner_account.money * transfer_mult))
	. += cash
	var/obj/item/charge_stick/credstick = new
	credstick.creator = owner.real_name
	credstick.currency = owner_account.currency
	credstick.loaded_worth = min(credstick.max_worth, floor(owner_account.money * transfer_mult))
	. += credstick
	owner_account.money -= cash.absolute_worth
	owner_account.money -= credstick.loaded_worth

/decl/starting_cash_choice/split/even
	name = "split between bank account, cash and charge stick"
	transfer_mult = 0.33
	uid = "starting_cash_cash_account_stick_split"
