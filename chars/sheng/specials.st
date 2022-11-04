; Taunt
[Statedef 195]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 195
ctrl = 0
sprpriority = 2

[State 195, itsucks!]
type = PlaySnd
trigger1 = Time = 0
value = S10, 3

[State 195, shaker]
type = envshake
trigger1 = animelem = 2
time = 30

[State 195, boom]
type = playsnd
trigger1 = animelem = 2
value = S190, 0

[State 195, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 195, hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Back
damage    = 70, 10
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8.9, -2
air.velocity = -8,-3
air.fall = 1
fall = 1
palfx.time = 70
palfx.add = 0,0,40
palfx.mul = 0,0,200

[State 195, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;--------------------------------------------------------
; Ax Kick
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 2

[State 4000, posadd]
type = posadd
trigger1 = animelem = 1
x = 4

[State 4000, posadd]
type = posadd
trigger1 = animelem = 2
x = 6

[State 4000, posadd]
type = posadd
trigger1 = animelem = 3
x = 8

[State 4000, itsucks!]
type = PlaySnd
trigger1 = Time = 0
value = S10, 3

[State 4000, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 4000, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 78, 9
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.9
air.velocity = -2,-3
air.fall = 1

[State 4000, hit1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 55, 9
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,3
air.velocity = -4,3
fall = 1
air.fall = 1

[State 4000, 7]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;--------------------------------------------------------------
; Light Red Hadoken
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 97
velset = 0,0
anim = 1100
ctrl = 0

; sound
[State 1100, grunt]
type = Playsnd
trigger1 = animelem = 2
value = S10,0

; sound
[State 1100, shot]
type = Playsnd
trigger1 = animelem = 3
value = S1000,0

[State 1100, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1020
projhitanim = 1021
offset = 30, -60
velocity = 3.05
attr = S, SP
damage    = 85, 20
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 2,0
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -6,-1
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall = 1
fall.recover = 0

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Medium Red Hadoken
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1100
ctrl = 0

; sound
[State 1101, grunt]
type = Playsnd
trigger1 = animelem = 2
value = S10,0

; sound
[State 1101, shot]
type = Playsnd
trigger1 = animelem = 3
value = S1000,0

[State 1101, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1020
projhitanim = 1021
offset = 30, -60
velocity = 4.05
attr = S, SP
damage    = 45, 20
animtype = Heavy
projhits = 2
guardflag = MA
hitflag = MAF
pausetime = 2,0
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3, -1.6
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall.recover = 0
fall = 1

[State 1101, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Fierce Red Hadoken
[Statedef 1102]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 180
velset = 0,0
anim = 1100
ctrl = 0

; sound
[State 1102, grunt]
type = Playsnd
trigger1 = animelem = 2
value = S10,0

; sound
[State 1102, shot]
type = Playsnd
trigger1 = animelem = 3
value = S1000,0

[State 1102, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1020
projhitanim = 1021
offset = 30, -60
velocity = 7.05
attr = S, SP
damage    = 45, 20
animtype = Heavy
projhits = 3
guardflag = MA
hitflag = MAF
pausetime = 2,0
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3, -1
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
fall.recover = 0
fall = 1

[State 1102, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;=======================================================================
;--------------------------------------------------------------
; Light Double Hadoken
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 97
velset = 0,0
anim = 1000
ctrl = 0

; sound
[State 1000, grunt]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value = S10,1

; sound
[State 1000, shot]
type = Playsnd
trigger1 = animelem = 4
trigger2 = animelem = 9
value = S1000,0

[State 1000, 4]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1010
projhitanim = 1011
offset = 30, -65
velocity = 3
attr = S, SP
damage    = 90, 6
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

[State 1000, 4]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1010
projhitanim = 1011
offset = 30, -80
velocity = 3
attr = S, SP
damage    = 90, 6
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

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Medium Double Hadoken
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1001
ctrl = 0

; sound
[State 1001, grunt]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value = S10,1

; sound
[State 1001, shot]
type = Playsnd
trigger1 = animelem = 4
trigger2 = animelem = 9
value = S1000,0

[State 1001, 4]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1010
projhitanim = 1011
offset = 30, -65
velocity = 5
attr = S, SP
damage    = 90, 6
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

[State 1001, 4]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1010
projhitanim = 1011
offset = 30, -80
velocity = 5
attr = S, SP
damage    = 90, 6
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

[State 1001, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Fierce Double Hadoken
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1002
ctrl = 0

; sound
[State 1002, grunt]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value = S10,1

; sound
[State 1002, shot]
type = Playsnd
trigger1 = animelem = 4
trigger2 = animelem = 9
value = S1000,0

[State 1002, 4]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1010
projhitanim = 1011
offset = 30, -65
velocity = 7.05
attr = S, SP
damage    = 90, 6
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

[State 1002, 4]
type = Projectile
trigger1 = AnimElem = 9
projanim = 1010
projhitanim = 1011
offset = 30, -80
velocity = 7.05
attr = S, SP
damage    = 90, 6
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

[State 1002, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================================
;--------------------------------------------------------------
; Light Double Air Blue Hadoken
[Statedef 1110]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
anim = 1111
ctrl = 0

; sound
[State 1110, grunt]
type = Playsnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = S10,1

; sound
[State 1110, shot]
type = Playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = S1000,0

[State 1110, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1030
projhitanim = 1011
offset = 10, -65
velocity = 3.70,2.6
attr = A, SP
damage    = 90, 6
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

[State 1111, shot2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1030
projhitanim = 1011
offset = 13, -80
velocity = 2.50, 2.1
attr = A, SP
damage    = 60, 6
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


;--------------------------------------------------------------
; Medium Double Air Blue Hadoken
[Statedef 1111]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 160
anim = 1111
ctrl = 0

; sound
[State 1111, grunt]
type = Playsnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = S10,1

; sound
[State 1111, shot]
type = Playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = S1000,0

[State 1111, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1030
projhitanim = 1011
offset = 10, -65
velocity = 5.70,4
attr = A, SP
damage    = 90, 6
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

[State 1111, shot2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1030
projhitanim = 1011
offset = 13, -80
velocity = 6.50, 3.6
attr = A, SP
damage    = 60, 6
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

;--------------------------------------------------------------
; Fierce Double Air Blue Hadoken
[Statedef 1112]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 180
anim = 1111
ctrl = 0

; sound
[State 1112, grunt]
type = Playsnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = S10,1

; sound
[State 1112, shot]
type = Playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = S1000,0

[State 1112, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1030
projhitanim = 1011
offset = 10, -65
velocity = 6.05,7
attr = A, SP
damage    = 90, 6
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

[State 1112, shot2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1030
projhitanim = 1011
offset = 13, -80
velocity = 7.02, 5
attr = A, SP
damage    = 60, 6
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

;===================================================================================
;--------------------------------------------------------------
; Light Air Red Hadoken
[Statedef 1150]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
anim = 1110
ctrl = 0

; sound
[State 1150, grunt]
type = Playsnd
trigger1 = animelem = 1
value = S10,1

; sound
[State 1150, shot]
type = Playsnd
trigger1 = animelem = 2
value = S1000,0

[State 1150, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1040
projhitanim = 1021
offset = 27, -65
velocity = 2.05,2
attr = A, SP
damage    = 70, 6
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 0,9
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -4, 7
air.animtype = Back
air.velocity = -2.5,7
air.juggle = 3
fall = 1
air.fall = 1
fall.recover = 0


;--------------------------------------------------------------
; Medium Air Red Hadoken
[Statedef 1151]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
anim = 1110
ctrl = 0

; sound
[State 1151, grunt]
type = Playsnd
trigger1 = animelem = 1
value = S10,1

; sound
[State 1151, shot]
type = Playsnd
trigger1 = animelem = 2
value = S1000,0

[State 1151, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1040
projhitanim = 1021
offset = 27, -65
velocity = 4.05,4
attr = A, SP
projhits = 2
damage    = 60, 6
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 2,12
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -4, 7
air.animtype = Back
air.velocity = -2.5,7
air.juggle = 3
fall = 1
air.fall = 1
fall.recover = 0


;--------------------------------------------------------------
; Fierce Air Red Hadoken
[Statedef 1152]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
anim = 1110
ctrl = 0

; sound
[State 1152, grunt]
type = Playsnd
trigger1 = animelem = 1
value = S10,1

; sound
[State 1152, shot]
type = Playsnd
trigger1 = animelem = 2
value = S1000,0

[State 1152, shot1]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1040
projhitanim = 1021
offset = 27, -65
velocity = 6.05,4.5
attr = A, SP
projhits = 3
damage    = 50, 6
animtype = Heavy
guardflag = MA
hitflag = MAF
pausetime = 2,12
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -4, 7
air.animtype = Back
air.velocity = -2.5,7
air.juggle = 3
fall = 1
air.fall = 1
fall.recover = 0



;===================================================================================
;--------------------------------------------------------------------------------
; Light Dragon Punch (start)
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 2002
ctrl = 0
sprpriority = 2

[State 2000, grint]
type = PlaySnd
trigger1 = Time = 1
value = S10, 0

[State 2000, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2000, hit1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Heavy
damage    = 85, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-4

[State 2000, hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-4

[State 2000, 7]
type = ChangeState
trigger1 = Animelem = 3
value = 2100

;---------------------------------------------
; Second part
[Statedef 2100]
type = A
movetype = A

[State 2100, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2100, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
air.fall = 1
fall = 1

[State 2100, vel]
type = velset
trigger1 = time = 0
x = 5
y = -4

[State 2100, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 2100, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 2100, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 2100, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 2100, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 


;--------------------------------------------------------------------------------
; Medium Dragon Punch (start)
[Statedef 2001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 90
velset = 0,0
anim = 2002
ctrl = 0
sprpriority = 2

[State 2001, grint]
type = PlaySnd
trigger1 = Time = 1
value = S10, 0

[State 2001, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2001, hit1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Heavy
damage    = 85, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-4

[State 2001, hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -2,-4

[State 2001, 7]
type = ChangeState
trigger1 = Animelem = 3
value = 2101

;---------------------------------------------
; Second part
[Statedef 2101]
type = A
movetype = A

[State 2101, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2101, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
air.fall = 1
fall = 1

[State 2101, vel]
type = velset
trigger1 = time = 0
x = 7
y = -7

[State 2101, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 2102, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 2102, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 2102, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 2102, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 



;--------------------------------------------------------------------------------
; Fierce Dragon Punch (start)
[Statedef 2002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 2002
ctrl = 0
sprpriority = 2

[State 2002, grint]
type = PlaySnd
trigger1 = Time = 1
value = S10, 0

[State 2002, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2002, hit1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Heavy
damage    = 85, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-4

[State 2002, hit1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-4

[State 2002, 7]
type = ChangeState
trigger1 = Animelem = 3
value = 2102

;---------------------------------------------
; Second part
[Statedef 2102]
type = A
movetype = A

[State 2102, invul]
type = NotHitBy
trigger1 = time > 0
value = SCA

[State 2102, hit1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
damage    = 55, 4
priority  = 6
guardflag = MA
pausetime = 15,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
air.animtype = Heavy
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
air.fall = 1
fall = 1

[State 2102, vel]
type = velset
trigger1 = time = 0
x = 8
y = -9

[State 2102, mul]
type = velmul
trigger1 = time > 0
x = .80

[State 2102, grav]
type = veladd
trigger1 = time > 0
y = .40

[State 2102, dropanim]
type = changeanim
trigger1 = vel y > -1
value = 2010
persistent = 0

[State 2102, 8]
type = velset
trigger1 = anim = 2010
x = 0
persistent = 0

[State 2102, land]
type = changestate
trigger1 = vel y > 0
trigger1 = Pos y >= 0
value = 2010 

;-----------------------------------------
; Universal DP landing state
[Statedef 2010]
type = S
movetype = I
physics = S
anim = 2020
velset = 0,0

[State 2010, pos]
type = posset
trigger1 = time = 0
y = 0

[State 2010, 9]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;========================================================================
;----------------------------------------------------------------------
; Light Tatsu takeoff
[Statedef 3010]
type    = A
movetype= A
physics = N
juggle  = 15
poweradd= 120
velset = 0,0
anim = 3010
ctrl = 0
sprpriority = 2

[State 3010, vel]
type = velset
trigger1 = time > 0
x = 3
y = -4

[State 3010, ch]
type = changestate
trigger1 = animtime = 0
value = 3000

;-------------------------------------------------------
; Light Tastumaki-senpukyaku (spinning)
[Statedef 3000]
type    = A
movetype= A
physics = N
juggle  = 0
velset = .2,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 3000, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3000, whoop]
type = PlaySnd
trigger1 = animelem = 3
value = S0, 2

[State 3000, vel]
type = velset
trigger1 = animelem = 2
x = 4
y = 0

; This hit puts opponent into position for the rest of the kicks
[State 3000, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

; Nasty juggling - That Gouken ... he a bad mans! 
[State 3000, afterhits]
type = HitDef
trigger1 = animelem = 5
attr = S, SA
animtype  = Hard
damage    = 40, 15
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 14,16
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -3.4,-7
fall = 1
air.fall = 1

[State 3000, 7]
type = ChangeState
trigger1 = Time = 8
value = 3020



;----------------------------------------------------------------------
; Medium Tatsu takeoff
[Statedef 3011]
type    = A
movetype= A
physics = N
juggle  = 15
poweradd= 120
velset = 0,0
anim = 3010
ctrl = 0
sprpriority = 2

[State 3011, vel]
type = velset
trigger1 = time > 0
x = 3
y = -4

[State 3011, ch]
type = changestate
trigger1 = animtime = 0
value = 3001

;-------------------------------------------------------
; Medium Tastumaki-senpukyaku (spinning)
[Statedef 3001]
type    = A
movetype= A
physics = N
juggle  = 0
velset = .2,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 3001, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3001, whoop]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
value = S0, 2

[State 3001, vel]
type = velset
trigger1 = animelem = 2
x = 4
y = 0

; This hit puts opponent into position for the rest of the kicks
[State 3001, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

; Nasty juggling - That Gouken ... he a bad mans! 
[State 3001, afterhits]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 9
attr = S, SA
animtype  = Hard
damage    = 40, 15
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 14,16
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -3.4,-7
fall = 1
air.fall = 1

[State 3001, 7]
type = ChangeState
trigger1 = Time = 24
value = 3020


;----------------------------------------------------------------------
; Fierce Tatsu takeoff
[Statedef 3012]
type    = A
movetype= A
physics = N
juggle  = 15
poweradd= 120
velset = 0,0
anim = 3010
ctrl = 0
sprpriority = 2

[State 3012, vel]
type = velset
trigger1 = time > 0
x = 3
y = -4

[State 3012, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

[State 3012, ch]
type = changestate
trigger1 = animtime = 0
value = 3002

;-------------------------------------------------------
; Fierce Tastumaki-senpukyaku (spinning)
[Statedef 3002]
type    = A
movetype= A
physics = N
juggle  = 0
velset = .2,0
anim = 3002
ctrl = 0
sprpriority = 2

[State 3002, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3002, whoop]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = S0, 2

[State 3002, vel]
type = velset
trigger1 = animelem = 2
x = 4
y = 0

; This hit puts opponent into position for the rest of the kicks
[State 3002, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

; Nasty juggling - That Gouken ... he a bad mans! 
[State 3002, afterhits]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 13
trigger4 = animelem = 17
attr = S, SA
animtype  = Hard
damage    = 40, 15
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 14,16
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -3.4,-7
fall = 1
air.fall = 1

[State 3002, 7]
type = ChangeState
trigger1 = Time = 40
value = 3020

;=======================================================================
;----------------------------------------------------------------------
; Light Tatsu (in air version)
[Statedef 3210]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 120
anim = 3050
ctrl = 0
sprpriority = 2

[State 3210, mul]
type = velmul
trigger1 = time = 0
trigger1 = vel x > 0
x = 1.5

;[State 3210, vel]
;type = veladd
;trigger1 = time >= 0
;y = -.5

[State 3210, vel]
type = veladd
trigger1 = vel x = 0
x = 2.5

[State 3210, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3210, whoop]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = S0, 2

; This hit puts opponent into position for the rest of the kicks
[State 3210, first hit]
type = HitDef
trigger1 = animelem = 1
trigger2 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1


;----------------------------------------------------------------------
; Medium Tatsu takeoff (in air version)
[Statedef 3211]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 120
anim = 3050
ctrl = 0
sprpriority = 2

[State 3211, mul]
type = velmul
trigger1 = time = 0
trigger1 = vel x > 0
x = 1.5

;[State 3211, vel]
;type = veladd
;trigger1 = time >= 0
;y = -.5

[State 3211, vel]
type = veladd
trigger1 = vel x = 0
x = 2.6

[State 3211, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3211, whoop]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = S0, 2

; This hit puts opponent into position for the rest of the kicks
[State 3211, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

; Nasty juggling - That Gouken ... he a bad mans! 
[State 3211, afterhits]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 9
attr = S, SA
animtype  = Hard
damage    = 40, 15
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 14,16
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -3.4,-7
fall = 1
air.fall = 1



;----------------------------------------------------------------------
; Fierce Tatsu takeoff (in air version)
[Statedef 3212]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 120
anim = 3050
ctrl = 0
sprpriority = 2

[State 3212, mul]
type = velmul
trigger1 = time = 0
trigger1 = vel x > 0
x = 1.5

;[State 3212, vel]
;type = veladd
;trigger1 = time >= 0
;y = -.5

[State 3212, vel]
type = veladd
trigger1 = vel x = 0
x = 2.5

[State 3212, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = S10, 1

[State 3212, whoop]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = S0, 2

; This hit puts opponent into position for the rest of the kicks
[State 3212, first hit]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 45, 15
priority  = 6
guardflag = MA
pausetime = 12,15
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.2,-4.5
air.type = Low
air.velocity = -3.4,-6
fall = 1
air.fall = 1

; Nasty juggling - That Gouken ... he a bad mans! 
[State 3212, afterhits]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 13
trigger4 = animelem = 17
attr = S, SA
animtype  = Hard
damage    = 40, 15
priority  = 5
hitflag = MAF
guardflag = MA
pausetime = 14,16
sparkno = 3
sparkxy = -10,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -3.4,-7
fall = 1
air.fall = 1

;-----------------------------------------------------------------
; Drop from H Kick (universal to both land and air varieties)
[Statedef 3020]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3020, vel]
type = velset
trigger1 = time > 0
x = 2

[State 3020, chanim]
type = changeanim
trigger1 = time = 0
value = 3020

