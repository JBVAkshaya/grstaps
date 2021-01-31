(define (problem ijrr_19)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street0 street12 street14 street19 street26 street42 street57 - street
		building3 building4 building9 building19 building20 building23 building28 building29 building33 building35 building36 - building
	)
	(:init
		(atLocation survivor1 street12)
		(atLocation survivor2 street14)
		(atLocation survivor0 street19)
		(atLocation survivor4 street42)
		(atLocation survivor3 street57)
		(atLocation survivor5 building3)
		(atLocation survivor7 building19)
		(atLocation survivor9 building28)
		(atLocation survivor6 building29)
		(atLocation survivor8 building35)
		(onFire building9)
		(onFire building20)
		(onFire building23)
		(onFire building29)
		(onFire building33)
		(underRubble street0)
		(underRubble street26)
		(underRubble building3)
		(underRubble building4)
		(underRubble building36)
		(needsRepair building3)
		(needsRepair building4)
		(needsRepair building9)
		(needsRepair building20)
		(needsRepair building23)
		(needsRepair building29)
		(needsRepair building33)
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
		(not (underRubble street0))
		(not (underRubble street26))
		(not (needsRepair building3))
		(not (needsRepair building4))
		(not (needsRepair building9))
		(not (needsRepair building20))
		(not (needsRepair building23))
		(not (needsRepair building29))
		(not (needsRepair building33))
		(not (needsRepair building36))
	))
	(:metric minimize total-time)
)
