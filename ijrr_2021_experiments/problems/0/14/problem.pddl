(define (problem ijrr_14)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street7 street11 street21 street25 street31 street34 street49 - street
		building1 building3 building4 building9 building10 building13 building16 building25 building26 building28 building31 building33 - building
	)
	(:init
		(atLocation survivor2 street7)
		(atLocation survivor4 street21)
		(atLocation survivor1 street25)
		(atLocation survivor0 street31)
		(atLocation survivor3 street49)
		(atLocation survivor6 building1)
		(atLocation survivor9 building16)
		(atLocation survivor5 building28)
		(atLocation survivor8 building31)
		(atLocation survivor7 building33)
		(onFire building9)
		(onFire building10)
		(onFire building13)
		(onFire building25)
		(onFire building26)
		(underRubble street11)
		(underRubble street34)
		(underRubble building3)
		(underRubble building4)
		(underRubble building16)
		(needsRepair building3)
		(needsRepair building4)
		(needsRepair building9)
		(needsRepair building10)
		(needsRepair building13)
		(needsRepair building16)
		(needsRepair building25)
		(needsRepair building26)
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
		(not (underRubble street11))
		(not (underRubble street34))
		(not (needsRepair building3))
		(not (needsRepair building4))
		(not (needsRepair building9))
		(not (needsRepair building10))
		(not (needsRepair building13))
		(not (needsRepair building16))
		(not (needsRepair building25))
		(not (needsRepair building26))
	))
	(:metric minimize total-time)
)
