(define (problem ijrr_0)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street4 street21 street46 street48 street49 street56 - street
		building9 building12 building13 building16 building18 building20 building22 building25 building28 building32 building33 building36 - building
	)
	(:init
		(atLocation survivor4 street4)
		(atLocation survivor2 street46)
		(atLocation survivor1 street48)
		(atLocation survivor0 street49)
		(atLocation survivor3 street56)
		(atLocation survivor9 building18)
		(atLocation survivor7 building22)
		(atLocation survivor8 building28)
		(atLocation survivor5 building33)
		(atLocation survivor6 building36)
		(onFire building9)
		(onFire building20)
		(onFire building25)
		(onFire building32)
		(onFire building36)
		(underRubble street21)
		(underRubble street49)
		(underRubble building12)
		(underRubble building13)
		(underRubble building16)
		(needsRepair building9)
		(needsRepair building12)
		(needsRepair building13)
		(needsRepair building16)
		(needsRepair building20)
		(needsRepair building25)
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
		(not (underRubble street21))
		(not (underRubble street49))
		(not (needsRepair building9))
		(not (needsRepair building12))
		(not (needsRepair building13))
		(not (needsRepair building16))
		(not (needsRepair building20))
		(not (needsRepair building25))
		(not (needsRepair building32))
		(not (needsRepair building36))
	))
	(:metric minimize total-time)
)
