[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

[Command]
name = "DIZZY_RECOVERY"
command = F,B
time = 20

[Command]
name = "Throw_Prolonge"
command = F,B,F,B,F,B
time = 25

[Command]
Name = "StraightRushL"
Command = ~70$B, F, x
[Command]
Name = "StraightRushL"
Command = ~70$B, F, ~x

[Command]
Name = "StraightRushM"
Command = ~70$B, F, y
[Command]
Name = "StraightRushM"
Command = ~70$B, F, ~y

[Command]
Name = "StraightRushS"
Command = ~70$B, F, z
[Command]
Name = "StraightRushS"
Command = ~70$B, F, ~z


[Command]
Name = "GStraightRushL"
Command = ~70$B, DF, x
[Command]
Name = "GStraightRushL"
Command = ~70$B, DF, ~x

[Command]
Name = "GStraightRushM"
Command = ~70$B, DF, y
[Command]
Name = "GStraightRushM"
Command = ~70$B, DF, ~y

[Command]
Name = "GStraightRushS"
Command = ~70$B, DF, z
[Command]
Name = "GStraightRushS"
Command = ~70$B, DF, ~z


[Command]
Name = "UpperRushL"
Command = ~70$B, F, a
[Command]
Name = "UpperRushL"
Command = ~70$B, F, ~a

[Command]
Name = "UpperRushM"
Command = ~70$B, F, b
[Command]
Name = "UpperRushM"
Command = ~70$B, F, ~b

[Command]
Name = "UpperRushS"
Command = ~70$B, F, c
[Command]
Name = "UpperRushS"
Command = ~70$B, F, ~c

[Command]
Name = "GUpperRushL"
Command = ~62$B, DF, a
[Command]
Name = "GUpperRushL"
Command = ~62$B, DF, ~a

[Command]
Name = "GUpperRushM"
Command = ~62$B, DF, b
[Command]
Name = "GUpperRushM"
Command = ~62$B, DF, ~b

[Command]
Name = "GUpperRushS"
Command = ~62$B, DF, c
[Command]
Name = "GUpperRushS"
Command = ~62$B, DF, ~c

[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, x
[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, ~x
[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, y
[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, ~y
[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, z
[Command]
Name = "CB-P"
Command = ~70$B, F, B, F, ~z

[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, a
[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, ~a
[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, b
[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, ~b
[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, c
[Command]
Name = "CB-K"
Command = ~70$B, F, B, F, ~c


[Command]
Name = "BuffaloHeadbuttL"
Command = ~66$D, $U, x
[Command]
Name = "BuffaloHeadbuttL"
Command = ~66$D, $U, ~x

[Command]
Name = "BuffaloHeadbuttM"
Command = ~66$D, $U, y
[Command]
Name = "BuffaloHeadbuttM"
Command = ~66$D, $U, ~y

[Command]
Name = "BuffaloHeadbuttS"
Command = ~66$D, $U, z
[Command]
Name = "BuffaloHeadbuttS"
Command = ~66$D, $U, ~z


[Command]
Name = "Release_x"
Command = ~2x
[Command]
Name = "Release_y"
Command = ~2y
[Command]
Name = "Release_z"
Command = ~2z
[Command]
Name = "Release_a"
Command = ~2a
[Command]
Name = "Release_b"
Command = ~2b
[Command]
Name = "Release_c"
Command = ~2c

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
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
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |---------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd" 
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.

[Command]
name = "AI_1"
command = D, D, D, D, D, D, D, D, D, D, D, D, D, D, D
time = 1

[Command]
name = "AI_2"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, F
time = 1

[Command]
name = "AI_3"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI_4"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, B
time = 1
 
[Command]
name = "AI_5"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a
time = 1

[Command]
name = "AI_6"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, b
time = 1

[Command]
name = "AI_7"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, c
time = 1

[Command]
name = "AI_8"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, x
time = 1

[Command]
name = "AI_9"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, y
time = 1

[Command]
name = "AI_10"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, z
time = 1


[Command]
name = "AI_11"
command = s, s, s, s, s, s, s, s, s, s, s, s, s, s, s
time = 1

[Command]
name = "AI_12"
command = D, D, D, D, D, D, D, D, D, D, D, D, D, D, a
time = 1

[Command]
name = "AI_13"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, a
time = 1

[Command]
name = "AI_14"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, a
time = 1

[Command]
name = "AI_15"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, a
time = 1
 
[Command]
name = "AI_16"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_17"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, a
time = 1

[Command]
name = "AI_18"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, a
time = 1

[Command]
name = "AI_19"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, a
time = 1

[Command]
name = "AI_20"
command = y, y, y, y, y, y, y, y, y, y, y, y, y, y, a
time = 1

[Command]
name = "AI_21"
command = z, z, z, z, z, z, z, z, z, z, z, z, z, z, a
time = 1

[Command]
name = "AI_22"
command = s, s, s, s, s, s, s, s, s, s, s, s, s, s, a
time = 1

[Command]
name = "AI_23"
command = D, D, D, D, D, D, D, D, D, D, D, D, D, D, b
time = 1

[Command]
name = "AI_24"
command = F, F, F, F, F, F, F, F, F, F, F, F, F, F, b
time = 1

[Command]
name = "AI_25"
command = U, U, U, U, U, U, U, U, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI_26"
command = B, B, B, B, B, B, B, B, B, B, B, B, B, B, b
time = 1
 
[Command]
name = "AI_27"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, c
time = 1

[Command]
name = "AI_28"
command = b, b, b, b, b, b, b, b, b, b, b, b, b, b, c
time = 1

[Command]
name = "AI_29"
command = c, c, c, c, c, c, c, c, c, c, c, c, c, c, b
time = 1

[Command]
name = "AI_30"
command = x, x, x, x, x, x, x, x, x, x, x, x, x, x, b
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------
[State -1, AI]
type = Varset
triggerall = var(50) = 0
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
trigger20 = command = "AI_20"
trigger21 = command = "AI_21"
trigger22 = command = "AI_22"
trigger23 = command = "AI_23"
trigger24 = command = "AI_24"
trigger25 = command = "AI_25"
trigger26 = command = "AI_26"
trigger27 = command = "AI_27"
trigger28 = command = "AI_28"
trigger29 = command = "AI_29"
trigger30 = command = "AI_30"
var(50) = 1




;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "x"
triggerall = StateType != A
triggerall = Command != "holddown"
trigger1 = stateno = 200
trigger1 = animelemtime(2) >=2
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = ctrl
ignorehitpause = 1
value = 200

;Stand Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "y"
triggerall = StateType != A
triggerall = P2Bodydist X>=35
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,210)

;Stand Medium Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "y"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<35
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,211)

;Stand Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "z"
triggerall = StateType != A
triggerall = P2Bodydist X>=35
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,220)

;Stand Strong Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "z"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<35
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,221)

;Stand Light Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "a"
triggerall = StateType != A
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 230

;Stand Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "b"
triggerall = StateType != A
triggerall = P2Bodydist X>=35
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 240

;Stand Medium Kick Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "b"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<35
trigger1 = ctrl
ignorehitpause = 1
value = 241

;Stand Strong Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "c"
triggerall = StateType != A
triggerall = P2Bodydist X>=35
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value =250

;Stand Strong Kick Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "c"
triggerall = StateType != A
triggerall = P2Bodydist X<35
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 251

;Crouch Light Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "x"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = stateno = 300
trigger1 = animelemtime(2) >=2
trigger2 = stateno = 300
trigger2 = movecontact = 1
trigger3 = ctrl
ignorehitpause = 1
value = 300

;Crouch Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "y"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 310

;Crouch Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "StraightRushL"
triggerall = Command != "StraightRushM"
triggerall = Command != "StraightRushS"
triggerall = Command != "GStraightRushL"
triggerall = Command != "GStraightRushM"
triggerall = Command != "GStraightRushS"
triggerall = Command != "BuffaloHeadbuttL"
triggerall = Command != "BuffaloHeadbuttM"
triggerall = Command != "BuffaloHeadbuttS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "z"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 320

;Crouch Light Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "a"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 330

;Crouch Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "b"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 340

;Crouch Strong Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "UpperRushL"
triggerall = Command != "UpperRushM"
triggerall = Command != "UpperRushS"
triggerall = Command != "GUpperRushL"
triggerall = Command != "GUpperRushM"
triggerall = Command != "GUpperRushS"
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = Command = "c"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 350

;Jump Light Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "x"
trigger1 = ctrl
ignorehitpause = 1
value = 400

;Jump Medium Punch 
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "y"
trigger1 = ctrl
ignorehitpause = 1
value = 410

;Jump Strong Punch 
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "z"
trigger1 = ctrl
ignorehitpause = 1
value = 420

;Jump Light Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "a"
trigger1 = ctrl
ignorehitpause = 1
value = 430

;Jump Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "b"
trigger1 = ctrl
ignorehitpause = 1
value = 440

;Jump Strong Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "c"
trigger1 = ctrl
ignorehitpause = 1
value = 450
































;--------------Special---------------------------

;Straight Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "GStraightRushL"
triggerall = Command = "StraightRushL"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1000

;Straight Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "GStraightRushM"
triggerall = Command = "StraightRushM"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1002

;Straight Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "GStraightRushS"
triggerall = Command = "StraightRushS"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1004




;Ground Straight Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "GStraightRushL"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1006

;Ground Straight Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "GStraightRushM"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1008

;Ground Straight Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "GStraightRushS"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1010





;Upper Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "UpperRushL"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1012

;Upper Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "UpperRushM"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1014

;Upper Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "UpperRushS"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1016


;Ground Upper Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "UpperRushL"
triggerall = Command = "GUpperRushL"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1018

;Ground Upper Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "UpperRushM"
triggerall = Command = "GUpperRushM"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1022

;Ground Upper Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command != "UpperRushS"
triggerall = Command = "GUpperRushS"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1026




;Buffalo Headbutt Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "BuffaloHeadbuttL"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1100

;Buffalo Headbutt Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "BuffaloHeadbuttM"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1102

;Buffalo Headbutt Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "CB-P"
triggerall = Command != "CB-K"
triggerall = StateType != A
triggerall = Command = "BuffaloHeadbuttS"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1104






















;Turn Around Punch CHARGE TIME
[State -1]
Type = VarSet
Triggerall = Time
trigger1 = Command != "hold_x"
trigger2 = Command != "hold_y"
trigger3 = Command != "hold_z"
V = 25
Value = 0
[State -1]
Type = Varadd
Triggerall = Time
trigger1 = Command = "hold_x"
trigger1 = Command = "hold_y"
trigger1 = Command = "hold_z"
V = 25
Value = 1
[State -1]
Type = Varset
trigger1 = 1
trigger1 = var(25)>=1
V = 26
Value = Ifelse(Var(25)<=0,1,var(25))

[State -1]
Type = VarSet
Triggerall = time
trigger1 = Command != "hold_a"
trigger2 = Command != "hold_b"
trigger3 = Command != "hold_c"
V = 27
Value = 0
[State -1]
Type = Varadd
Triggerall = time
trigger1 = Command = "hold_a"
trigger1 = Command = "hold_b"
trigger1 = Command = "hold_c"
V = 27
Value = 1
[State -1]
Type = Varset
trigger1 = 1
trigger1 = var(27)>=1
V = 28
Value = Ifelse(Var(27)<=0,1,var(27))

;Turn Around Punch #1
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=30
triggerall = Var(26)<120
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
IgnoreHitPause = 1
value = 1201

;Turn Around Kick #1
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=30
triggerall = Var(28)<120
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
IgnoreHitPause = 1
value = 1201


;Turn Around Punch #2
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=120
triggerall = Var(26)<240
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1202

;Turn Around Kick #2
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=120
triggerall = Var(28)<240
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1202



;Turn Around Punch #3
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=240
triggerall = Var(26)<480
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1203

;Turn Around Kick #3
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=240
triggerall = Var(28)<480
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1203


;Turn Around Punch #4
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=480
triggerall = Var(26)<960
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1204

;Turn Around Kick #4
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=480
triggerall = Var(28)<960
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1204


;Turn Around Punch #5
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=960
triggerall = Var(26)<1440
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1205

;Turn Around Kick #5
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=960
triggerall = Var(28)<1440
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1205

;Turn Around Punch #6
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=1440
triggerall = Var(26)<1920
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1206

;Turn Around kick #6
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=1440
triggerall = Var(28)<1920
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1206

;Turn Around Punch #7
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=1920
triggerall = Var(26)<2400
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1207

;Turn Around Kick #7
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=1920
triggerall = Var(28)<2400
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1207

;Turn Around Punch #FINAL
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(26)>=2400
triggerall = Command = "Release_x"||Command = "Release_y"||Command = "Release_z"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1208

;Turn Around Kick #FINAL
[State -1]
type = ChangeState
;triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Var(28)>=2400
triggerall = Command = "Release_a"||Command = "Release_b"||Command = "Release_c"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1208










;Crazy Buffalo W/Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = Command = "CB-P"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 2000

;Crazy Buffalo W/Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = Command = "CB-K"
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 2010




















































;***************************************************************************
;****************************************************************************
;************   AI  ***********************************************************
;****************************************************************************
;****************************************************************************

[State -1, GUARD]
type = changestate
triggerall = var(50) = 1
triggerall = StateNo != [120,155]
triggerall = StateNo != [1500,1505]
triggerall = ctrl || (stateno = [14,15]) || stateno = 20
triggerall = statetype != A
triggerall = inguarddist
trigger1 = Random <= 150
trigger2 = enemy,numproj > 0
trigger2 = Random <= 200
trigger3 = P2BodyDist X > 90
trigger3 = Random <= 200
trigger4 = EnemyNear,Time > 50
trigger4 = Random <= 300
value = 120

[State -3, VELX-0]
Type = velset
trigger1 = var(50) = 1
Trigger1 = stateno = [120,131]
Trigger1 = statetype != A
x = 0

[State -1, STOP]
type = ChangeState
trigger1 = roundstate = 2
trigger1 = var(50) = 1
triggerall = StateNo != [1500,1505]
trigger1 = p2bodydist x > 20
trigger1 = ctrl
trigger1 = random < 300
trigger1 = !InGuardDist
trigger1 = statetype = S
trigger1 = stateno != [120,155]
trigger1 = stateno != [20,21]
trigger1 = stateno != [10,15]
value = 20

[State -1, JUMP]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = statetype = S
triggerall = StateNo != [1500,1505]
trigger1 = ctrl || stateno = 20 || (stateno = [120,131])
trigger1 = P2BodyDist X >= 50
trigger1 = Random < 10+(P2BodyDist X=[90,140])*10
trigger2 = ctrl || stateno = 20 || (stateno = [120,131])
trigger2 = P2BodyDist X >= 130
trigger2 = Random < 300
trigger2 = enemy, numproj >= 1
trigger3 = ctrl || stateno = 20
trigger3 = P2bodydist X <= 60
trigger3 = BackEdgeBodyDist <= 10
trigger3 = Random < 500
trigger3 = p2statetype = L
trigger4 = ctrl || stateno = 20 || (stateno = [120,131])
trigger4 = P2BodyDist X <= 85
trigger4 = Random < 50+(enemynear,hitdefattr=SCA,HT)*250
trigger4 = enemynear,hitdefattr = SCA,NT,ST,HT
value = 40

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [30,50]
triggerall = P2BodyDist Y = [-60,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
trigger1 = ctrl || stateno = 20
trigger2 = stateno = 200
trigger2 = animelemtime(2) >=2
trigger3 = stateno = 200
trigger3 = movecontact = 1
ignorehitpause = 1
value = 200


;Stand Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 8
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [35,55]
triggerall = P2BodyDist Y = [-100,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype = S
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,210)

;Stand Medium Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 11
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,34]
triggerall = P2BodyDist Y = [-100,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = Command != "holddown"
trigger1 = stateno = 300
trigger1 = animelemtime(3) >=4
trigger2 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,211)

;Stand Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [35,70]
triggerall = P2BodyDist Y = [-90,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,220)

;Stand Strong Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 11
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,35]
triggerall = P2BodyDist Y = [-90,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,221)


;Stand Light Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = Random = [300,550]
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,70]
triggerall = P2BodyDist Y = [-50,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
trigger1 = ctrl || stateno = 20
ignorehitpause = 1
value = 230


;Stand Medium Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = Random = [400,630]
triggerall = P2BodyDist X = [35,70]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = Command != "holddown"
trigger1 = ctrl || stateno = 20
ignorehitpause = 0
value = 240

;Stand Medium Kick Near
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = Random < AILevel * 11
triggerall = P2BodyDist X = [0,34]
triggerall = P2BodyDist Y = [-50,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = Command != "holddown"
trigger1 = ctrl || stateno = 20
ignorehitpause = 0
value =241

;Stand Strong Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1500,1505]
triggerall = P2bodydist X = [35,90]
triggerall = P2BodyDist Y = [-80,0]
triggerall = var(50) = 1
triggerall = Random = [0,500-(stateno=11)*30]
triggerall = Command != "holddown"
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
trigger1 = ctrl || Stateno= 11 || stateno = 20
ignorehitpause = 1
value = 250

;Stand Strong Kick Near
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1500,1505]
triggerall = P2bodydist X = [0,35]
triggerall = P2BodyDist Y = [-60,0]
triggerall = var(50) = 1
triggerall = Random = [50,700-(stateno=11)*30]
triggerall = Command != "holddown"
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
trigger1 = ctrl || Stateno= 11 || stateno = 20
ignorehitpause = 1
value = 251

;Crouch Light Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [-30,0]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
trigger1 = ctrl || stateno = 11
trigger2 = stateno = 300
trigger2 = animelemtime(2) >=2
trigger3 = stateno = 300
trigger3 = movecontact = 1
ignorehitpause = 1
value = 300

;Crouch Medium Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [30,55]
triggerall = P2BodyDist Y = [-30,0]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = Random = [430,770+(enemy,stateno=[150,153])*40]
triggerall = p2statetype != L
triggerall = p2statetype != A
trigger1 = ctrl || Stateno = 11 || stateno = 20
ignorehitpause = 1
value = 310

;Crouch Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = roundstate = 2
triggerall = StateNo != [1500,1505]
triggerall = P2bodydist X = [0,30+(stateno=20)*15]
triggerall = P2BodyDist Y = [-60,0]
triggerall = Random < AILevel * 11
triggerall = statetype != A
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype = S
trigger1 = ctrl || Stateno = 11 || stateno = 20
ignorehitpause = 1
value = 320

;Crouch Light Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [-30,0]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
trigger1 = ctrl || stateno = 20
trigger2 = stateno = 300
trigger2 = animelemtime(3) >=2
ignorehitpause = 1
value = 330

;Crouch Medium Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1500,1505]
triggerall = var(50) = 1
triggerall = P2BodyDist X = [0,50]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = Random = [850,950-(stateno=11)*40]
triggerall = p2statetype = S
triggerall = p2statetype != L
trigger1 = ctrl || Stateno = 11 || stateno = 20
ignorehitpause = 1
value = 340

;Crouch Strong Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1500,1505]
triggerall = var(50) = 1
triggerall = P2BodyDist X = [0,70]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = Random = [0,380]
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = ctrl || Stateno = 11 || stateno = 20
ignorehitpause = 0
value = 350

;Jump Light Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [0,80+(vel X>0)*15]
triggerall = P2BodyDist Y = [-60,60]
triggerall = statetype = A
triggerall = MoveType != H
triggerall = pos Y <= -30
triggerall = vel Y <0 
triggerall = p2statetype != L
trigger1 = Random = [50,800-(P2statetype=A)*50]
trigger1 = ctrl || stateno = [120,132]
ignorehitpause = 1
value = 400

;Jump Medium Punch 
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [-40,45+(vel X>0)*15]
triggerall = P2BodyDist Y = [-60,60]
triggerall = statetype = A
triggerall = MoveType != H
triggerall = P2statetype = A
triggerall = pos Y <= -30 
triggerall = vel Y >0 
triggerall = p2statetype != L
triggerall = Random < AILevel * 11
trigger1 = ctrl || stateno = [120,132]
ignorehitpause = 1
value = Ifelse(Vel X != 0,410,440)

;Jump Strong Attack
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1500,1505]
triggerall = P2BodyDist X = [-50,90+(vel X>0)*15]
triggerall = P2BodyDist Y = [-60,60]
triggerall = statetype = A
triggerall = MoveType != H
triggerall = P2statetype != A
triggerall = pos Y <= -30
triggerall = vel Y >0
triggerall = p2statetype != L
triggerall = Random < AILevel * 11
trigger1 = ctrl || stateno = [120,132]
ignorehitpause = 1
value = Ifelse(random<=500,420,450)

;---- AI POWERS ----------------
;---- AI POWERS ----------------
;---- AI POWERS ----------------
;---- AI POWERS ----------------

;Straight Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1000

;Straight Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,200+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1002

;Straight Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [200,300+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1004



;Ground Straight Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1006

;Ground Straight Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,200+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1008

;Ground Straight Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [200,300+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1010





;Upper Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1012

;Upper Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,200+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1014

;Upper Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [200,300+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1016


;Ground Upper Rush Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1018

;Ground Upper Rush Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,200+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1022

;Ground Upper Rush Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType = S
triggerall = MoveType != H
triggerall = P2BodyDist X = [200,300+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-100,-50]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 1026


;Buffalo Headbutt Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = P2BodyDist X = [0,40+(enemy,vel X>=1.5)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1100

;Buffalo Headbutt Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = P2BodyDist X = [30,50+(enemy,vel X>=1.4)*10]
triggerall = P2BodyDist Y = [-100,0]
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1102

;Buffalo Headbutt Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = P2BodyDist X = [40,60+(enemy,vel X>=1)*10]
triggerall = P2BodyDist Y = [-120,0]
triggerall = StateNo != [1500,1505]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = stateno = 40
trigger12 = ctrl
ignorehitpause = 1
value = 1104

;Crazy Buffalo W/Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 12
triggerall = StateNo != [1500,1505]
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,300+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 2000

;Crazy Buffalo W/Kick
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 12
triggerall = StateNo != [1500,1505]
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,300+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != H
trigger1 = stateno = 200
trigger1 = animelemtime(1) >=1
trigger2 = stateno = 300
trigger2 = animelemtime(1) >=1
trigger3 = stateno = 211
trigger3 = animelemtime(2) >=1
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = animelemtime(3) <=4
trigger5 = stateno = 320
trigger5 = animelemtime(2) >2
trigger5 = animelemtime(3) <=1
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = animelemtime(1) >=1
trigger7 = stateno = 330
trigger7 = animelemtime(1) >=1
trigger8 = stateno = 240
trigger8 = animelemtime(2) >=1
trigger8 = movecontact = 1
trigger9 = stateno = 241
trigger9 = animelemtime(2) <=4
trigger10 = stateno = 340
trigger10 = animelemtime(3) >=1
trigger10 = movecontact = 1
trigger11 = ctrl
ignorehitpause = 1
value = 2010

