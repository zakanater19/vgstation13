/obj/effect/decal/warning_stripes
	icon = 'icons/effects/floor_decals.dmi'

/obj/effect/decal/warning_stripes/New()
	. = ..()
	var/turf/T=get_turf(src)
	var/image/I=image(icon, icon_state = icon_state, dir = dir)
	I.pixel_x = pixel_x
	I.pixel_y = pixel_y
	I.color=color
	T.AddDecal(I)
	qdel(src)

/obj/effect/decal/warning_stripes/oldstyle
	icon = 'icons/effects/warning_stripes_old.dmi'

/obj/effect/decal/warning_stripes/pathmarkers
	name = "Path marker"
	desc = "Marks an important path."

	icon_state="pathmarker"

/obj/effect/decal/warning_stripes/pathmarkers/yellow
	color = "#ffff00"

// Pastels
/obj/effect/decal/warning_stripes/pathmarkers/red
	color = "#af6365"

/obj/effect/decal/warning_stripes/pathmarkers/blue
	color = "#719eb6"


//Deff only
//For people who lose themselves on defficiency
//Making it a decal makes it fuse with the plating and disappear under the pipes, I need a better solution but this will do for now
/obj/effect/nmpi
	name = "NMPI"
	desc = "White holographic lines hovering above the ground. If your sense of direction is under average, just follow the Nanotrasen-approved Maintenance Path Indicator to never get lost again. Nanotrasen declines all responsibility if you decide to stray off the path indicated by the Nanotrasen-approved Maintenance Path Indicator."

	icon = 'icons/effects/floor_decals.dmi'
	icon_state = "maintguide"
	anchored = 1  //Otherwise people move them using crates

//Old parts of the station are not shielded against radiations, but don't blink because they lack power. Those big ass warnings should be enough to inform people.
/obj/effect/decal/warning_stripes/unshielded_area
	icon_state = "radiation_huge"
	name = "Unshielded Area"
	desc = "Designates an area that is NOT shielded against radiation storms. Enter at your own risk."

//Siding
/obj/effect/decal/warning_stripes/siding
	name = "Siding"
	icon_state = "siding"

/obj/effect/decal/warning_stripes/siding/full
	icon_state = "siding_full"

/obj/effect/decal/warning_stripes/siding/gold
	name = "Wood Siding"
	icon_state = "wood_siding"

/obj/effect/decal/warning_stripes/siding/gold/full
	icon_state = "wood_siding_full"
