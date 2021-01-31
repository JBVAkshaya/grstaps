(define (problem ijrr_3)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street11 street22 street24 street26 street33 street37 street57 - street
		building2 building4 building5 building8 building9 building12 building17 building23 building28 building29 building32 building36 - building
	)
	(:init
		(atLocation survivor2 street11)
		(atLocation survivor1 street22)
		(atLocation survivor4 street24)
		(atLocation survivor3 street26)
		(atLocation survivor0 street57)
		(atLocation survivor7 building4)
		(atLocation survivor8 building9)
		(atLocation survivor5 building12)
		(atLocation survivor9 building23)
		(atLocation survivor6 building28)
		(onFire building2)
		(onFire building9)
		(onFire building17)
		(onFire building32)
		(onFire building36)
		(underRubble street33)
		(underRubble street37)
		(underRubble building5)
		(underRubble building8)
		(underRubble building29)
		(needsRepair building2)
		(needsRepair building5)
		(needsRepair building8)
		(needsRepair building9)
		(needsRepair building17)
		(needsRepair building29)
		(needsRepair building32)
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
		(not (underRubble street33))
		(not (underRubble street37))
		(not (needsRepair building2))
		(not (needsRepair building5))
		(not (needsRepair building8))
		(not (needsRepair building9))
		(not (needsRepair building17))
		(not (needsRepair building29))
		(not (needsRepair building32))
		(not (needsRepair building36))
	))
	(:metric minimize total-time)
)
