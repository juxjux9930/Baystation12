
var/global/list/pronoun_datums = list()

/hook/startup/proc/populate_pronoun_datum_list()
	for(var/type in subtypesof(/datum/pronouns))
		var/datum/pronouns/P = new type
		pronoun_datums[P.key] = P
	return 1

/datum/pronouns
	var/key
	var/formal_term
	var/list/types = null //what pronouns this includes, used only for multiple pronouns

	var/He   = "They"
	var/he   = "they"
	var/His  = "Their"
	var/his  = "their"
	var/him  = "them"
	var/has  = "have"
	var/is   = "are"
	var/does = "do"
	var/self = "themselves"

/datum/pronouns/they_them
	key  = PRONOUNS_THEY_THEM
	formal_term = "They/Them"

/datum/pronouns/he_him
	key  = PRONOUNS_HE_HIM
	formal_term = "He/Him"

	He   = "He"
	he   = "he"
	His  = "His"
	his  = "his"
	him  = "him"
	has  = "has"
	is   = "is"
	does = "does"
	self = "himself"

/datum/pronouns/he_they
	key  = PRONOUNS_HE_THEY
	formal_term = "He/They"
	types = list(PRONOUNS_HE_HIM, PRONOUNS_THEY_THEM)

/datum/pronouns/she_her
	key  = PRONOUNS_SHE_HER
	formal_term = "She/Her"

	He   = "She"
	he   = "she"
	His  = "Her"
	his  = "her"
	him  = "her"
	has  = "has"
	is   = "is"
	does = "does"
	self = "herself"

/datum/pronouns/she_they
	key  = PRONOUNS_SHE_THEY
	formal_term = "She/They"
	types = list(PRONOUNS_SHE_HER, PRONOUNS_THEY_THEM)

/datum/pronouns/it_its
	key = PRONOUNS_IT_ITS
	formal_term = "It/Its"

	He   = "It"
	he   = "it"
	His  = "Its"
	his  = "its"
	him  = "it"
	has  = "has"
	is   = "is"
	does = "does"
	self = "itself"
