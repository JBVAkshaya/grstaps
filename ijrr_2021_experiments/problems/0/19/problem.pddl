(define (problem ijrr_19)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street2 street25 street26 street29 street41 street48 street49 - street
		building7 building8 building10 building11 building13 building14 building19 building22 building26 building28 building29 building33 - building
	)
	(:init
		(atLocation survivor4 street2)
		(atLocation survivor1 street25)
		(atLocation survivor3 street26)
		(atLocation survivor0 street29)
		(atLocation survivor2 street48)
		(atLocation survivor5 building7)
		(atLocation survivor9 building8)
		(atLocation survivor7 building13)
		(atLocation survivor6 building26)
		(atLocation survivor8 building28)
		(onFire building10)
		(onFire building11)
		(onFire building19)
		(onFire building22)
		(underRubble street41)
		(underRubble street49)
		(underRubble building14)
		(underRubble building29)
		(underRubble building33)
		(needsRepair building10)
		(needsRepair building11)
		(needsRepair building14)
		(needsRepair building19)
		(needsRepair building22)
		(needsRepair building29)
		(needsRepair building33)
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
		(not (underRubble street41))
		(not (underRubble street49))
		(not (needsRepair building10))
		(not (needsRepair building11))
		(not (needsRepair building14))
		(not (needsRepair building19))
		(not (needsRepair building22))
		(not (needsRepair building29))
		(not (needsRepair building33))
	))
	(:metric minimize total-time)
)
