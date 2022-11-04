;-------------------------------------------------------------------------
; Light Shocking Dragon Punch (Denjin-Shoryureppa)
; Part 1
[Statedef 1500]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 1500, vel]
type = velset
trigger1 = animelem = 2
x = 4

[State 1500, vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1500, vel]
type = velset
trigger1 = animelem = 6
x = 8

[State 1500, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -1000

[State 1500, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1500, grint]
type = PlaySnd
trigger1 = animelem = 3
value = S10, 0

[State 1500, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1500, hits]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 7, Miss
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
air.animtype = Heavy
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0
guard.dist = 0

[State 1501, 7]
type = ChangeState
trigger1 = Animelem = 8
value = 1510

;---------------------------------------------
; Second part - the shocker hit
[Statedef 1510]
type = A
movetype = A

[State 1510, lesucks]
type = PlaySnd
trigger1 = animelem = 8
value = S10, 3

[State 1510, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1510, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1510, lasthit]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -4,-3.5
air.velocity = -4,-3
p2stateno = 1550
guard.dist = 0

[State 1510, vel]
type = velset
trigger1 = time = 0
x = 5
y = -6

[State 1510, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 1510, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 1510, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 1510, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 1510, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 


;-------------------------------------------------------------------------
; Medium Shocking Dragon Punch
; Part 1
[Statedef 1501]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1502
ctrl = 0
sprpriority = 2

[State 1501, vel]
type = velset
trigger1 = animelem = 2
x = 4

[State 1501, vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1501, vel]
type = velset
trigger1 = animelem = 6
x = 5

[State 1501, vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 1501, vel]
type = velset
trigger1 = animelem = 11
x = 5

[State 1501, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -2000

[State 1501, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1501, grint]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
value = S10, 0

[State 1501, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1501, hits]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 7, Miss
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0
guard.dist = 0

[State 1501, 7]
type = ChangeState
trigger1 = Animelem = 13
value = 1511

;---------------------------------------------
; Second part - the shocker hit
[Statedef 1511]
type = A
movetype = A

[State 1511, lesucks]
type = PlaySnd
trigger1 = animelem = 13
value = S10, 3

[State 1511, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1511, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1511, lasthit]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 7, Miss
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -4,-3.5
air.velocity = -4,-3
guard.dist = 0
p2stateno = 1550

[State 1511, vel]
type = velset
trigger1 = time = 0
x = 5
y = -6

[State 1511, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 1511, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 1511, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 1511, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 1511, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 


;-------------------------------------------------------------------------
; Fierce Shocking Dragon Punch
; Part 1
[Statedef 1502]
type    = S
movetype= A
physics = N
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1502
ctrl = 0
sprpriority = 2

[State 1502, vel]
type = velset
trigger1 = animelem = 2
x = 7

[State 1502, vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1502, vel]
type = velset
trigger1 = animelem = 6
x = 8

[State 1502, vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 1502, vel]
type = velset
trigger1 = animelem = 11
x = 12

[State 1502, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -3000

[State 1502, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1502, grint]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
value = S10, 0

[State 1502, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1502, hits]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 7, Miss
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0
guard.dist = 0

[State 1502, 7]
type = ChangeState
trigger1 = Animelem = 13
value = 1512

;---------------------------------------------
; Second part - the shocker hit
[Statedef 1512]
type = A
movetype = A

[State 1512, lesucks]
type = PlaySnd
trigger1 = animelem = 13
value = S10, 3

[State 1512, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1512, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1512, lasthit]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 7, Miss
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -4,-3.5
air.velocity = -4,-3
guard.dist = 0
p2stateno = 1550

[State 1512, vel]
type = velset
trigger1 = time = 0
x = 8
y = -9

[State 1512, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 1512, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 1512, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 1512, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 1512, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 

;----------------------------------------------------------------------
; P2 DSR state (universal)
[Statedef 1550]
type    = S
movetype= H
velset = -5, 0
physics = N
anim = 5002

[State 1550, flash]
type = PalFX
trigger1 = timemod = 4, 3
add = 0,0,255
mul = 0,0,255
time = 2

[State 1550, diz]
type = ChangeState
trigger1 = time = 30
value = 1551

;-----------------------------
; p2 state 2
[Statedef 1551]
type    = S
movetype= H
physics = S
velset = -6, 0
physics = N
anim = 5300

[State 1551, flash]
type = PalFX
trigger1 = timemod = 4, 3
add = 0,0,235
mul = 0,0,125
time = 2

[State 1551, diz]
type = selfstate
trigger1 = time = 180
trigger1 = alive = 1
value = 0
ctrl = 1

[State 1551, diz]
type = selfstate
trigger1 = time = 180
trigger1 = alive = 0
value = 5050

;========================================================================
;-----------------------------------------------------------------------
; Light Red Nightmare
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1600, superp]
type = SuperPause
trigger1 = AnimElem = 2, 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -1000

[State 1600, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1600, Super D]
type = NotHitBy
trigger1 = time > 0
value = SCA
time = 1

[State 1600, grunt]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
value = S10, 0

[State 1600, shot]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 15
value = S1000, 0

[State 1600, lowshots]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 15
projanim = 1020
projhitanim = 1021
offset = 30, -65
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall.recover = 0

[State 1600, highshots]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1

[State 1600, finalhighshot]
type = Projectile
trigger1 = AnimElem = 18
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
projhits = 2
pausetime = 7,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -12,-2
air.animtype = Back
air.velocity = -8.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1
fall = 1

[State 1600, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------------------------------------------------
; Medium Red Nightmare
[Statedef 1601]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1601
ctrl = 0
sprpriority = 2

[State 1601, superp]
type = SuperPause
trigger1 = AnimElem = 2, 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -2000

[State 1601, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3


[State 1601, Super D]
type = NotHitBy
trigger1 = time > 0
value = SCA
time = 1

[State 1601, grunt]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 32
trigger8 = AnimElem = 35
value = S10, 0

[State 1601, shot]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 24
trigger6 = AnimElem = 27
trigger7 = AnimElem = 33
trigger8 = AnimElem = 36
value = S1000, 0

[State 1601, lowshots]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 15
trigger3 = AnimElem = 24
projanim = 1020
projhitanim = 1021
offset = 30, -65
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall.recover = 0

[State 1601, highshots]
type = Projectile
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1

[State 1601, finalhighshot]
type = Projectile
trigger1 = AnimElem = 27
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
projhits = 2
pausetime = 7,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -12,-2
air.animtype = Back
air.velocity = -8.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1
fall = 1


[State 1601, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;-----------------------------------------------------------------------
; Fierce Red Nightmare
[Statedef 1602]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1602
ctrl = 0
sprpriority = 2

[State 1602, superp]
type = SuperPause
trigger1 = AnimElem = 2, 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -3000

[State 1602, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1602, Super D]
type = NotHitBy
trigger1 = time > 0
value = SCA
time = 1

[State 1602, grunt]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 32
trigger8 = AnimElem = 35
trigger9 = AnimElem = 41
trigger10 = AnimElem = 44
value = S10, 0

[State 1602, shot]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 24
trigger6 = AnimElem = 27
trigger7 = AnimElem = 33
trigger8 = AnimElem = 36
trigger9 = AnimElem = 42
trigger10 = AnimElem = 45
value = S1000, 0

[State 1602, lowshots]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 15
trigger3 = AnimElem = 24
trigger4 = AnimElem = 33
trigger5 = AnimElem = 42
projanim = 1020
projhitanim = 1021
offset = 30, -65
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall.recover = 0

[State 1602, highshots]
type = Projectile
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
trigger3 = AnimElem = 27
trigger4 = AnimElem = 36
;trigger5 = AnimElem = 45
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1

[State 1602, finalhighshot]
type = Projectile
trigger1 = AnimElem = 45
projanim = 1020
projhitanim = 1021
offset = 30, -80
velocity = 8
attr = S, SP
damage    = 40, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
projhits = 3
pausetime = 7,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -12,-2
air.animtype = Back
air.velocity = -8.5,-5
air.juggle = 3
fall.recover = 0
air.fall = 1
fall = 1


[State 1602, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================
;-------------------------------------------------------------
; Light Kick Barrage
; Attempt
[Statedef 1800]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1799
ctrl = 0
sprpriority = 2

[State 1800, vel]
type = velset
trigger1 = time > 0
x = 3

[State 1800, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -1000

[State 1800, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1800, grint]
type = PlaySnd
trigger1 = animelem = 2
value = S10, 0

[State 1800, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1800, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0

[State 1800, hit2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = Heavy
damage    = 35, 15
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
p1stateno = 1810
ground.velocity = 0, 0
air.velocity = 0

[State 1800, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Second part - the kicks of death
[Statedef 1810]
type = A
movetype = A
velset = 0,0
anim = 1800

[State 1810, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1810, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1810, lasthit]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
attr = S, SA
animtype  = Heavy
damage    = 15
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = 0
air.velocity = -4,-3

[State 1810, lasthit]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = Heavy
damage    = 45, 4
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -8, -4
air.velocity = -4,-3
fall = 1
air.fall = 1

[State 1810, land]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1 


;-------------------------------------------------------------
; Medium Kick Barrage
; Attempt
[Statedef 1801]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1799
ctrl = 0
sprpriority = 2

[State 1801, vel]
type = velset
trigger1 = time > 0
x = 3

[State 1801, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -2000

[State 1801, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1801, grint]
type = PlaySnd
trigger1 = animelem = 2
value = S10, 0

[State 1801, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1801, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0

[State 1801, hit2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = Heavy
damage    = 35, 15
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
p1stateno = 1811
ground.velocity = 0, 0
air.velocity = 0

[State 1801, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Second part - the kicks of death
[Statedef 1811]
type = A
movetype = A
velset = 0,0
anim = 1801

[State 1811, 2]
type = afterimage
trigger1 = time = 0
time = 60
length = 8
framegap = 3

[State 1811, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1811, lasthit]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
trigger4 = AnimElem = 22
trigger5 = AnimElem = 24
trigger6 = AnimElem = 33
attr = S, SA
animtype  = Heavy
damage    = 15
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = 0
air.velocity = -4,-3

[State 1811, lasthit]
type = HitDef
trigger1 = AnimElem = 34
attr = S, SA
animtype  = Heavy
damage    = 45, 4
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -1
air.velocity = -4,-3

[State 1811, land]
type = changestate
trigger1 = animtime = 0
value = 2001 

;-------------------------------------------------------------
; Fierce Kick Barrage
; Attempt
[Statedef 1802]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1799
ctrl = 0
sprpriority = 2

[State 1802, vel]
type = velset
trigger1 = time > 0
x = 3

[State 1802, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -3000

[State 1802, 2]
type = afterimage
trigger1 = time = 0
time = 120

[State 1802, grint]
type = PlaySnd
trigger1 = animelem = 2
value = S10, 0

[State 1802, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1802, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 40, 20
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
ground.velocity = 0, 0
air.velocity = 0

[State 1802, hit2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = Heavy
damage    = 35, 15
priority  = 6
guardflag = MA
pausetime = 5,12
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 35
air.hittime = 35
p1stateno = 1812
ground.velocity = 0, 0
air.velocity = 0

[State 1802, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Second part - the kicks of death
[Statedef 1812]
type = A
movetype = A
velset = 0,0
anim = 1802

[State 1812, 2]
type = afterimage
trigger1 = time = 0
time = 120

[State 1812, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 1812, lasthit]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
trigger4 = AnimElem = 25
trigger5 = AnimElem = 32
trigger6 = AnimElem = 34
trigger7 = AnimElem = 38
trigger8 = AnimElem = 43
attr = S, SA
animtype  = Heavy
damage    = 25
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = 0
air.velocity = -4,-3

[State 1812, lasthit]
type = HitDef
trigger1 = AnimElem = 44
attr = S, SA
animtype  = Heavy
damage    = 75, 4
priority  = 6
guardflag = MA
pausetime = 2,5
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 35
ground.velocity = -1
air.velocity = -4,-3

[State 1812, land]
type = changestate
trigger1 = animtime = 0
value = 2002 

;===================================================================
; RAGING DEMON
[Statedef 1700]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1700
sprpriority = 2

[State 1700, superp]
type = SuperPause
trigger1 = AnimElem = 1
pos = 25, -57
anim = 102
sound = S1500, 0
poweradd = -3000

[State 1700, vel]
type = velset
trigger1 = time > 5
x = 4

[State 1700, 2]
type = afterimage
trigger1 = time = 0
time = 120

[State 1700, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
;hitflag = M-          ;Affect only ground people who are not being hit
priority = 7, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 3       ;Draw in front of p2
;p1facing = ifelse (command = "holdfwd", -1, 1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1710       ;On success, KFM changes to state 810
p2stateno = 1720       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 1700, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; grab and turn rabid-dog mean
[Statedef 1710]
type    = S
movetype= A
physics = N
anim = 1701
poweradd = 60
velset = 0,0
sprpriority = 2

[State 1710, hit Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
value = S1, 5

; Whitescreen
[State 1710, white]
type = explod
trigger1 = animelem = 2
anim = 1703
id = 1703
pos = 0,0
postype = p1
facing = 1
sprpriority = 3
removetime = -1
ownpal = 1

[State 1710, hits]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
anim = F3
name = "sparks"
pos = 0, -70 
postype = p2
bindtime = -1 
vel = 0, -4 
random = 40, 100 
removetime = -2
sprpriority = 5
shadow = -1, -1, -1 

[State 1710, add]
type = hitadd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
value = 1

[State 1710, pause]
type = pause
trigger1 = animelem = 1
time = 30

[State 1710, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300, 0

[State 1710, Bind 1]
type = TargetBind
trigger1 = time >= 0
pos = 28, 0

[State 1710, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 14
value = -800

[State 1710, Throw 11]
type = TargetState
trigger1 = AnimElem = 15
value = 1721

[State 1710, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1750

;---------------------------------------------------------------------------
;Thrown
[Statedef 1720]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 1720, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1702

;---------------------------------------------------------------------------
; Thrown into the air
[Statedef 1721]
type    = S
movetype= H
physics = S
velset = 0,0
poweradd = 40

[State 1721, 4] ;Hit ground
type = SelfState
trigger1 = time = 2
value = 5110 ;dead ?

;--------------------------------------------------------
[Statedef 1750]
type    = S
movetype= A
physics = N
anim = 180
velset = 0,0
sprpriority = 3

[State 1750, rem]
type = removeexplod
trigger1 = time = 0
id = 1703

[State 1750, asser]
type = assertspecial
trigger1 = time > 0
trigger1 = p2life <= 1
flag = nomusic
flag1 = nokosound

[State 1750, snd]
type = playsnd
trigger1 = time = 0
trigger1 = p2life <= 1
value = S1500,1

[State 1750, kan]
type = Explod
trigger1 = time = 0
trigger1 = p2life <= 1
anim = 1705
name = "ten"
pos = 0, 0
postype = left
removetime = 90
sprpriority = -1

[State 1750, State End]
type = ChangeState
trigger1 = Time = 90
value = 0
ctrl = 1