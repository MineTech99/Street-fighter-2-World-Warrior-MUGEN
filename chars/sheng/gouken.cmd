;---[AI]-----------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "throw"
command = z+y

[Command]
name = "knee"
command = c+b

; Light double hadoken
[Command]
name = "QCF_x"
command = ~D, DF, F, x

; Medium double hadoken
[Command]
name = "QCF_y"
command = ~D, DF, F, y

; Fierce double hadoken
[Command]
name = "QCF_z"
command = ~D, DF, F, z

;----------------------
; Light shoryuken
[Command]
name = "FDF_x"
command = ~F, D, DF, x
;time = 60

; Med shoryuken
[Command]
name = "FDF_y"
command = ~F, D, DF, y
;time = 60

; Fierce shoryuken
[Command]
name = "FDF_z"
command = ~F, D, DF, z
;time = 60

;------------------------
; Light whirlwind
[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 25

; Med whirlwind
[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 25

; F whirlwind
[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 25

;-------------------------------------
; Quarter back punch
[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 25

; Med Quarter back punch
[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 25

; F qcb
[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 25

;-------------------
; Fake hadoken
[Command]
name = "fakeout"
command = B, B, z
time = 25

; Ax kick (hard only)
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 25

;--[ Supers ]---------------------------------------------------------------
; Light Shoryu
[Command]
name = "Elec_x"
command = ~D, DF, F, D, DF, F, x
time = 25

; Med Shoryu
[Command]
name = "Elec_y"
command = ~D, DF, F, D, DF, F, y
time = 25

; F Shoryu
[Command]
name = "Elec_z"
command = ~D, DF, F, D, DF, F, z
time = 25

;----------------------------------------
; Light Red Nightmare
[Command]
name = "RN_x"
command = ~D, DB, B, D, DB, B, x
time = 25

; Med Red Nightmare
[Command]
name = "RN_y"
command = ~D, DB, B, D, DB, B, y
time = 25

; F Red Nightmare
[Command]
name = "RN_z"
command = ~D, DB, B, D, DB, B, z
time = 25

;----------------------------------------
; Light Kick
[Command]
name = "KB_a"
command = ~D, DB, B, D, DB, B, a
time = 25

; Med Kick
[Command]
name = "KB_b"
command = ~D, DB, B, D, DB, B, b
time = 25

; F Kick
[Command]
name = "KB_c"
command = ~D, DB, B, D, DB, B, c
time = 25

; Raging Demon
[Command]
name = "Demon"
command = x, x, F, a, c
time = 35


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

e the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;--[Supers]-----------------------------------------------------------------
; RAGING DEMON
[State -1, demon]
type = ChangeState
value = 1700
triggerall = command = "Demon"
triggerall = power >= 3000
triggerall = statetype = S
triggerall = palno = 7 || palno = 8 || palno = 9
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 212


;--------------------------------------------
; Light Kicking Fun
[State -1, Fierce kicks]
type = ChangeState
value = 1800
triggerall = command = "KB_a"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl = 1

; Medium Kicking Fun
[State -1, Fierce kicks]
type = ChangeState
value = 1801
triggerall = command = "KB_b"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl = 1

; Fierce Kicking Fun
[State -1, Fierce kicks]
type = ChangeState
value = 1802
triggerall = command = "KB_c"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------
; Light Denjin-Shoryureppa
[State -1, Light shocker]
type = ChangeState
value = 1500
trigger1 = command = "Elec_x"
trigger1 = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
trigger2 = command = "Elec_y"
trigger2 = power >= 1000
trigger2 = power < 2000
trigger3 = command = "Elec_z"
trigger3 = power >= 1000
trigger3 = power < 2000


; Medium Denjin-Shoryureppa
[State -1, Med shocker]
type = ChangeState
value = 1501
trigger1 = command = "Elec_y"
trigger1 = power >= 2000
triggerall = statetype = S
triggerall= ctrl = 1
trigger2 = command = "Elec_x"
trigger2 = power >= 2000
trigger2 = power < 3000
trigger3 = command = "Elec_z"
trigger3 = power >= 2000
trigger3 = power < 3000


; Fierce Denjin-Shoryureppa
[State -1, Fierce shocker]
type = ChangeState
value = 1502
trigger1 = command = "Elec_z"
trigger1 = power >= 3000
triggerall = statetype = S
triggerall = ctrl = 1
trigger2 = command = "Elec_x"
trigger2 = power >= 1000
trigger2 = power < 2000
trigger3 = command = "Elec_y"
trigger3 = power >= 2000
trigger3 = power < 3000


;---------------------------------------------------------------------------
; Ground Light Red Nightmare
[State -1, Fierce hadoken barrage]
type = ChangeState
value = 1600
triggerall = command = "RN_x"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1

; Ground Medium Red Nightmare
[State -1, Fierce hadoken barrage]
type = ChangeState
value = 1601
triggerall = command = "RN_y"
triggerall = power >= 2000
triggerall = statetype = S
trigger1 = ctrl = 1

; Ground Fierce Red Nightmare
[State -1, Fierce hadoken barrage]
type = ChangeState
value = 1602
triggerall = command = "RN_z"
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = ctrl = 1

;--[Special Moves]-----------------------------------------------------------
[State -1, Light Shoryu]
type = ChangeState
value = 2000
triggerall = command = "FDF_x"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1, Medium Shoryu]
type = ChangeState
value = 2001
triggerall = command = "FDF_y"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1, Fierce Shoryu]
type = ChangeState
value = 2002
triggerall = command = "FDF_z"
triggerall = statetype != A
trigger1 = ctrl = 1

;----------------------------
[State -1, Jab Dhado]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = numproj < 2
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, Medium Dhado]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
triggerall = numproj < 2
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, Fierce Dhado]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
triggerall = numproj < 2
triggerall = statetype = S
trigger1 = ctrl = 1

;----------------------------
[State -1, Jab Redhado]
type = ChangeState
value = 1100
triggerall = command = "QCB_x"
triggerall = numproj = 0
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, Medium Redhado]
type = ChangeState
value = 1101
triggerall = command = "QCB_y"
triggerall = numproj = 0
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, Fierce Redhado]
type = ChangeState
value = 1102
triggerall = command = "QCB_z"
triggerall = numproj = 0
triggerall = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------
[State -1, Light air Dhado]
type = ChangeState
value = 1110
triggerall = command = "QCF_x"
triggerall = numproj < 2
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Med air Dhado]
type = ChangeState
value = 1111
triggerall = command = "QCF_y"
triggerall = numproj < 2
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Fierce air Dhado]
type = ChangeState
value = 1112
triggerall = command = "QCF_z"
triggerall = numproj < 2
triggerall = statetype = A
trigger1 = ctrl = 1

;-------------------------------------------------
[State -1, Light air Red hado]
type = ChangeState
value = 1150
triggerall = command = "QCB_x"
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Med air Red hado]
type = ChangeState
value = 1151
triggerall = command = "QCB_y"
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Fierce air Red hado]
type = ChangeState
value = 1152
triggerall = command = "QCB_z"
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl = 1

;-------------------------------------------------
; Light Hurricane Ground
[State -1, Fierce Tatsu]
type = ChangeState
value = 3010
triggerall = command = "QCB_a"
triggerall = statetype = S
trigger1 = ctrl = 1

; Medium Hurricane Ground
[State -1, Fierce Tatsu]
type = ChangeState
value = 3011
triggerall = command = "QCB_b"
triggerall = statetype = S
trigger1 = ctrl = 1

; Fierce Hurricane Ground
[State -1, Fierce Tatsu]
type = ChangeState
value = 3012
triggerall = command = "QCB_c"
triggerall = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------
; Light Hurricane Air
[State -1, Fierce Tatsu]
type = ChangeState
value = 3210
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl = 1

; Medium Hurricane Air
[State -1, Fierce Tatsu]
type = ChangeState
value = 3211
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl = 1

; Fierce Hurricane Air
[State -1, Fierce Tatsu]
type = ChangeState
value = 3212
triggerall = command = "QCB_c"
triggerall = statetype = A
trigger1 = ctrl = 1

;------------------------------------
; Ax Kick
[State -1, Axman]
type = ChangeState
value = 4000
triggerall = command = "QCF_c"
triggerall = statetype = S
trigger1 = ctrl = 1

;--[Throws and grabs]-------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "throw"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;----[Close ups]----------------------
; Standing Elbow
[State -1, jab]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact

; medium Shoulder
[State -1, med punch]
type = ChangeState
value = 221
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl

; FP upper
[State -1, fierce]
type = ChangeState
value = 222
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl

; Med knee
[State -1, lkick]
type = ChangeState
value = 223
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl

; F rhouse
[State -1, Fkick]
type = ChangeState
value = 224
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X < 10
trigger1 = statetype = S
trigger1 = ctrl

; F Forward High Hook
[State -1, Fkick]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


;--[Regular moves]----------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype = S
trigger1 = ctrl = 1

; Standing Jab
[State -1, jab]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact

; medium
[State -1, med punch]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; FP 
[State -1, fierce]
type = ChangeState
value = 202
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Light kick
[State -1, lkick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Med kick
[State -1, lkick]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; F kick
[State -1, Fkick]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


; CROUCH
;-----------------------------------
; jab
[State -1, LP]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Mpunch
[State -1, MP]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Fpunch
[State -1, C FP]
type = ChangeState
value = 402
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Lkick
[State -1, LK]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Mkick
[State -1, MK]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Fkick
[State -1, FK]
type = ChangeState
value = 412
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---[Air Moves]------------------------------------
; Air lpunch (Un)
[State -1,  Air lpunch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

; Air mpunch (straight)
[State -1, Air mpunch]
type = ChangeState
value = 601
triggerall = command = "y"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

; Air Mpunch (velocity)
[State -1, Air fpunch]
type = ChangeState
value = 602
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

; Air fpunch (Un)
[State -1, Air fpunch]
type = ChangeState
value = 603
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


; Straight-up LK
[State -1, Vert Lkick]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

; Jump Lkick
[State -1, Jump lkick]
type = ChangeState
value = 611
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; Jump Med kick (Universal)
[State -1,  Jump mkick]
type = ChangeState
value = 612
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

; Fkick (straight)
[State -1, jmp Fkick]
type = ChangeState
value = 613
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

; Jump Fkick
[State -1, jmp Fkick]
type = ChangeState
value = 614
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

