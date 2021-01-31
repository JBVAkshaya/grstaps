(define (problem ijrr_15)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street8 street22 street37 street43 street47 street51 street53 - street
		building1 building2 building9 building10 building14 building25 building29 building30 building32 building33 - building
	)
	(:init
		(atLocation survivor4 street8)
		(atLocation survivor0 street22)
		(atLocation survivor1 street37)
		(atLocation survivor2 street51)
		(atLocation survivor3 street53)
		(atLocation survivor5 building2)
		(atLocation survivor8 building9)
		(atLocation survivor7 building10)
		(atLocation survivor9 building14)
		(atLocation survivor6 building32)
		(onFire building1)
		(onFire building2)
		(onFire building25)
		(onFire building29)
		(underRubble street43)
		(underRubble street47)
		(underRubble building25)
		(underRubble building30)
		(underRubble building33)
		(needsRepair building1)
		(needsRepair building2)
		(needsRepair building25)
		(needsRepair building29)
		(needsRepair building30)
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
		(not (underRubble street43))
		(not (underRubble street47))
		(not (needsRepair building1))
		(not (needsRepair building2))
		(not (needsRepair building25))
		(not (needsRepair building29))
		(not (needsRepair building30))
		(not (needsRepair building33))
	))
	(:metric minimize total-time)
)
