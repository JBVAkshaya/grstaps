(define (problem ijrr_17)
	(:domain ijrr)
	(:objects
		survivor0 survivor1 survivor2 survivor3 survivor4 survivor5 survivor6 survivor7 survivor8 survivor9 - survivor
		street3 street6 street30 street32 street37 street40 street52 - street
		building8 building10 building13 building14 building20 building22 building25 building26 building27 building28 building30 building35 - building
	)
	(:init
		(atLocation survivor3 street3)
		(atLocation survivor1 street6)
		(atLocation survivor2 street30)
		(atLocation survivor0 street40)
		(atLocation survivor4 street52)
		(atLocation survivor9 building10)
		(atLocation survivor5 building20)
		(atLocation survivor6 building27)
		(atLocation survivor7 building28)
		(atLocation survivor8 building30)
		(onFire building13)
		(onFire building14)
		(onFire building22)
		(onFire building28)
		(onFire building35)
		(underRubble street32)
		(underRubble street37)
		(underRubble building8)
		(underRubble building25)
		(underRubble building26)
		(needsRepair building8)
		(needsRepair building13)
		(needsRepair building14)
		(needsRepair building22)
		(needsRepair building25)
		(needsRepair building26)
		(needsRepair building28)
		(needsRepair building35)
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
		(not (underRubble street32))
		(not (underRubble street37))
		(not (needsRepair building8))
		(not (needsRepair building13))
		(not (needsRepair building14))
		(not (needsRepair building22))
		(not (needsRepair building25))
		(not (needsRepair building26))
		(not (needsRepair building28))
		(not (needsRepair building35))
	))
	(:metric minimize total-time)
)
