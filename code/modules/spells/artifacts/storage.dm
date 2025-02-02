/obj/structure/closet/wizard
	name = "artifact closet"
	desc = "a special lead lined closet used to hold artifacts of immense power."
	closet_appearance = /singleton/closet_appearance/alien

/obj/structure/closet/wizard/New()
	..()
	var/obj/structure/bigDelivery/package/package = new (get_turf(src), src, "parcel")
	package.examtext = "Imported straight from the Wizard Acadamy. Do not lose the contents or suffer a demerit."

/obj/structure/closet/wizard/armor
	name = "Mastercrafted Armor Set"
	desc = "An artefact suit of armor that allows you to cast spells while providing more protection against attacks and the void of space."

/obj/structure/closet/wizard/armor/New()
	..()
	new /obj/item/clothing/shoes/sandal(src) //In case they've lost them.
	new /obj/item/clothing/gloves/wizard(src)//To complete the outfit
	new /obj/item/clothing/suit/space/void/wizard(src)
	new /obj/item/clothing/head/helmet/space/void/wizard(src)

/obj/structure/closet/wizard/scrying
	name = "Scrying Orb"
	desc = "An incandescent orb of crackling energy, using it will allow you to ghost while alive, allowing you to reconnoiter with ease. In addition, buying it will permanently grant you x-ray vision."

/obj/structure/closet/wizard/scrying/New()
	..()
	new /obj/item/scrying(src)
	new /obj/item/contract/wizard/xray(src)

/obj/structure/closet/wizard/souls
	name = "Soul Shard Belt"
	desc = "Soul Stone Shards are ancient tools capable of capturing and harnessing the spirits of the dead and dying. The spell Artificer allows you to create arcane machines for the captured souls to pilot. This also includes the spell Artificer, used to create the shells used in construct creation."

/obj/structure/closet/wizard/souls/New()
	..()
	new /obj/item/contract/boon/wizard/artificer(src)
	new /obj/item/storage/belt/soulstone/full(src)
