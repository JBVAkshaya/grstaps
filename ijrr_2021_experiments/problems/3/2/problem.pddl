(define (problem ijrr_2)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street2 street5 street15 street16 street18 street37 street56 - street
		building7 building8 building12 building13 building23 building26 building29 building31 building32 building35 building36 - building
	)
	(:init
		(atLocation survivor1 street2)
		(atLocation survivor2 street5)
		(atLocation survivor3 street15)
		(atLocation survivor0 street16)
		(atLocation survivor4 street37)
		(atLocation survivor5 building7)
		(atLocation survivor7 building26)
		(atLocation survivor9 building29)
		(atLocation survivor6 building32)
		(onFire building8)
		(onFire building12)
		(onFire building13)
		(onFire building23)
		(onFire building36)
		(underRubble street18)
		(underRubble street56)
		(underRubble building8)
		(underRubble building31)
		(underRubble building35)
		(needsRepair building8)
		(needsRepair building12)
		(needsRepair building13)
		(needsRepair building23)
		(needsRepair building31)
		(needsRepair building35)
		(needsRepair building36)
	)
	(:goal (and
		(atLocation survivor0 HOSPITAL)
		(atLocation survivor1 HOSPITAL)
		(atLocation survivor2 HOSPITAL)
		(atLocation survivor3 HOSPITAL)
		(atLocation survivor4 HOSPITAL)
		(atLocation survivor5 HOSPITAL)
		(atLocation survivor6 HOSPITAL)
		(atLocation survivor7 HOSPITAL)
		(atLocation survivor8 HOSPITAL)
		(atLocation survivor9 HOSPITAL)
		(not (underRubble street18))
		(not (underRubble street56))
		(not (needsRepair building8))
		(not (needsRepair building12))
		(not (needsRepair building13))
		(not (needsRepair building23))
		(not (needsRepair building31))
		(not (needsRepair building35))
		(not (needsRepair building36))
	))
	(:metric minimize total-time)
)
