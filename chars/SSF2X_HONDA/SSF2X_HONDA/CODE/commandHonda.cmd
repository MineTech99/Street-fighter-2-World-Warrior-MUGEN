[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

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
command = F,B,F,B
time = 25

[Command]
Name = "HeadbuttL"
Command = ~60$B, $F, x
[Command]
Name = "HeadbuttL"
Command = ~60$B, $F, ~x

[Command]
Name = "HeadbuttM"
Command = ~60$B, $F, y
[Command]
Name = "HeadbuttM"
Command = ~60$B, $F, ~y

[Command]
Name = "HeadbuttS"
Command = ~60$B, $F, z
[Command]
Name = "HeadbuttS"
Command = ~60$B, $F, ~z


[Command]
Name = "100HandsL"
Command = x,x,x,x
Time = 50
[Command]
Name = "100HandsM"
Command = y,y,y,y
Time = 50
[Command]
Name = "100HandsS"
Command = z,z,z,z
Time = 50

[Command]
Name = "100HandsL2"
Command = x,x,x
Time = 60
[Command]
Name = "100HandsM2"
Command = y,y
Time = 50
[Command]
Name = "100HandsS2"
Command = z,z
Time = 50

[Command]
Name = "ButtDropL"
Command = ~60$D, $U, a
[Command]
Name = "ButtDropL"
Command = ~60$D, $U, ~a

[Command]
Name = "ButtDropM"
Command = ~60$D, $U, b
[Command]
Name = "ButtDropM"
Command = ~60$D, $U, ~b

[Command]
Name = "ButtDropS"
Command = ~60$D, $U, c
[Command]
Name = "ButtDropS"
Command = ~60$D, $U, ~c

[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, x
[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, ~x
[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, y
[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, ~y
[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, z
[Command]
Name = "SuperHeadbutt"
Command = ~60$B, F, B, F, ~z


[Command]
name = "OoichouNageL"
command = ~F, D, B, U, x
time = 50

[Command]
name = "OoichouNageL"
command = ~F, D, B, U, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~D, B, U, F, x
time = 50

[Command]
name = "OoichouNageL"
command = ~D, B, U, F, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, U, F, D, x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, U, F, D, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~U, F, D, B, x
time = 50

[Command]
name = "OoichouNageL"
command = ~U, F, D, B, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~F, U, B, D, x
time = 50

[Command]
name = "OoichouNageL"
command = ~F, U, B, D, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~D, F, U, B, x
time = 50

[Command]
name = "OoichouNageL"
command = ~D, F, U, B, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, D, F, U, x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, D, F, U, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~U, B, D, F, x
time = 50

[Command]
name = "OoichouNageL"
command = ~U, B, D, F, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, D, F, B, x
time = 50

[Command]
name = "OoichouNageL"
command = ~B, D, F, B, ~x
time = 50

[Command]
name = "OoichouNageL"
command = ~F, D, B, F, x
time = 50

[Command]
name = "OoichouNageL"
command = ~F, D, B, F, ~x
time = 50

[Command]
name = "OoichouNageM"
command = ~F, D, B, U, F, y
time = 50

[Command]
name = "OoichouNageM"
command = ~F, D, B, U, F, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~D, B, U, F, y
time = 50

[Command]
name = "OoichouNageM"
command = ~D, B, U, F, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, U, F, D, y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, U, F, D, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~U, F, D, B, y
time = 50

[Command]
name = "OoichouNageM"
command = ~U, F, D, B, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~F, U, B, D, y
time = 50

[Command]
name = "OoichouNageM"
command = ~F, U, B, D, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~D, F, U, B, y
time = 50

[Command]
name = "OoichouNageM"
command = ~D, F, U, B, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, D, F, U, y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, D, F, U, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~U, B, D, F, y
time = 50

[Command]
name = "OoichouNageM"
command = ~U, B, D, F,  ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, D, F, B, y
time = 50

[Command]
name = "OoichouNageM"
command = ~B, D, F, B, ~y
time = 50

[Command]
name = "OoichouNageM"
command = ~F, D, B, F, y
time = 50

[Command]
name = "OoichouNageM"
command = ~F, D, B, F, ~y
time = 50

[Command]
name = "OoichouNageS"
command = ~F, D, B, U, z
time = 50

[Command]
name = "OoichouNageS"
command = ~F, D, B, U, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~D, B, U, F, z
time = 50

[Command]
name = "OoichouNageS"
command = ~D, B, U, F, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, U, F, D, z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, U, F, D, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~U, F, D, B, z
time = 50

[Command]
name = "OoichouNageS"
command = ~U, F, D, B, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~F, U, B, D, z
time = 50

[Command]
name = "OoichouNageS"
command = ~F, U, B, D, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~D, F, U, B, z
time = 50

[Command]
name = "OoichouNageS"
command = ~D, F, U, B, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, D, F, U, z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, D, F, U, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~U, B, D, F, z
time = 50

[Command]
name = "OoichouNageS"
command = ~U, B, D, F, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, D, F, B, z
time = 50

[Command]
name = "OoichouNageS"
command = ~B, D, F, B, ~z
time = 50

[Command]
name = "OoichouNageS"
command = ~F, D, B, F, z
time = 50

[Command]
name = "OoichouNageS"
command = ~F, D, B, F, ~z
time = 50

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
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "x"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X>=30
trigger1 = stateno = 200
trigger1 = animelemtime(3) >=4
trigger2 = ctrl
ignorehitpause = 1
value = 200

;Stand Light Punch FWD-BACK
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = StateType != A
triggerall = Command = "x" 
triggerall = Command != "holddown"
triggerall = P2Bodydist X<30
trigger1 = stateno = 201
trigger1 = animelemtime(5) >=1
trigger2 = ctrl
ignorehitpause = 1
value = 201

;Stand Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "y"
triggerall = StateType != A
triggerall = P2Bodydist X>=30
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1300,210)

;Stand Medium Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "y"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<30
trigger1 = stateno = 300
trigger1 = animelemtime(3) >=4
trigger2 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1300,211)

;Stand Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "z"
triggerall = StateType != A
triggerall = P2Bodydist X>=30
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,220)

;Stand Strong Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "z"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<30
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,221)

;Stand Light Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "a"
triggerall = StateType != A
triggerall = P2Bodydist X>=25
triggerall = Command != "holddown"
trigger1 = stateno = 230
trigger1 = animelemtime(5) >=3
trigger2 = ctrl
ignorehitpause = 1
value = 230

;Stand Light Kick Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "a"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<25
trigger1 = stateno = 231
trigger1 = animelemtime(5) >=2
trigger2 = ctrl
ignorehitpause = 1
value = 231

;Stand Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "b"
triggerall = StateType != A
triggerall = P2Bodydist X>=30
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 240

;Stand Medium Kick Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "b"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
triggerall = P2Bodydist X<30
trigger1 = ctrl
ignorehitpause = 1
value = 241

;Stand Medium Kick FB
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "b" && (Command = "holdfwd" || Command = "holdback")
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = P2Bodydist X<30
trigger1 = ctrl
ignorehitpause = 1
value = 242

;Stand Strong Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "c"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,250)

;Stand Strong Kick Near
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "c" && (Command = "holdfwd" || Command = "holdback")
triggerall = StateType != A
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1600,251)

;Crouch Light Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
triggerall = Command = "x"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = stateno = 300
trigger1 = animelemtime(3) >=4
trigger2 = ctrl
ignorehitpause = 1
value = 300

;Crouch Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
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
triggerall = Command != "HeadbuttL"
triggerall = Command != "HeadbuttM"
triggerall = Command != "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
triggerall = Command != "100HandsL"
triggerall = Command != "100HandsM"
triggerall = Command != "100HandsS"
triggerall = Command != "OoichouNageL"
triggerall = Command != "OoichouNageM"
triggerall = Command != "OoichouNageS"
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
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "a"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = stateno = 330
trigger1 = animelemtime(4) >=3
trigger2 = ctrl
ignorehitpause = 1
value = 330

;Crouch Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
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
triggerall = Command != "ButtDropL"
triggerall = Command != "ButtDropM"
triggerall = Command != "ButtDropS"
triggerall = Command = "c"
triggerall = StateType != A
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 350

;Jump Light Punch Neutral
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "x"
triggerall = Vel X = 0
trigger1 = ctrl
ignorehitpause = 1
value = 400

;Jump Light Punch Vel X
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "x"
triggerall = Vel X != 0
trigger1 = ctrl
ignorehitpause = 1
value = 401

;Jump Medium Punch Neutral
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "y"
triggerall = Vel X = 0
trigger1 = ctrl
ignorehitpause = 1
value = 410

;Jump Medium Punch Vel X
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "y"
triggerall = Vel X != 0
trigger1 = ctrl
ignorehitpause = 1
value = 411

;Jump Strong Punch Neutral
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "z"
triggerall = Vel X = 0
trigger1 = ctrl
ignorehitpause = 1
value = 420

;Jump Strong Punch Vel X
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "z"
triggerall = Vel X != 0
trigger1 = ctrl
ignorehitpause = 1
value = 421

;Jump Light Kick Neutral
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "a"
triggerall = Vel X = 0
trigger1 = ctrl
ignorehitpause = 1
value = 430

;Jump Light Kick Neutral Vel X
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "a"
triggerall = Vel X != 0
trigger1 = ctrl
ignorehitpause = 1
value = 431

;Jump Medium Kick
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 440


;Jump Medium Kick Down
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(Vel X != 0,441,440)


;Jump Strong Kick Neutral
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "c"
triggerall = Vel X = 0
trigger1 = ctrl
ignorehitpause = 1
value = 450


;Jump Strong Kick Vel X
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType = A
triggerall = Command = "c"
triggerall = Vel X != 0
trigger1 = ctrl
ignorehitpause = 1
value = 451










;--------------Special---------------------------

;Headbutt Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "HeadbuttL"
triggerall = Command != "SuperHeadbutt"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1000

;Headbutt Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "HeadbuttM"
triggerall = Command != "SuperHeadbutt"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1010

;Headbutt Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "HeadbuttS"
triggerall = Command != "SuperHeadbutt"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1020


;Hundred Hands Slap Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "100HandsL"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
;**
trigger12 = stateno = 200
trigger12 = animelemtime(3) >=4
trigger13 = stateno = 201
trigger13 = animelemtime(2) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(3) >=4
trigger15 = ctrl
;**
ignorehitpause = 1
value = 1100

;Hundred Hands Slap Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "100HandsM"
;**
trigger1 = stateno = 210
trigger1 = animelemtime(3) >=2
trigger2 = stateno = 211
trigger2 = animelemtime(5) >=1
trigger3 = stateno = 310
trigger3 = animelemtime(3) >=2
;**
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(3) >=4
trigger13 = stateno = 201
trigger13 = animelemtime(2) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(3) >=4
trigger15 = ctrl
ignorehitpause = 1
value = 1110

;Hundred Hands Slap Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "100HandsS"
trigger1 = stateno = 210
trigger1 = animelemtime(3) >=2
trigger2 = stateno = 211
trigger2 = animelemtime(5) >=1
trigger3 = stateno = 310
trigger3 = animelemtime(3) >=2
;**
trigger4 = stateno = 220
trigger4 = animelemtime(4) >=1
trigger5 = stateno = 221
trigger5 = animelemtime(5) >=1
trigger6 = stateno = 320
trigger6 = animelemtime(3) <=1
;**
trigger7 = stateno = 230
trigger7 = animelemtime(2) <=3
trigger8 = stateno = 231
trigger8 = animelemtime(4) <=3
trigger9 = stateno = 330
trigger9 = animelemtime(1) >=1
trigger10 = stateno = 240
trigger10 = animelemtime(3) <=2
trigger11 = stateno = 241
trigger11 = animelemtime(2) <=2
trigger12 = stateno = 340
trigger12 = animelemtime(3) <=2
trigger13 = stateno = 200
trigger13 = animelemtime(3) >=4
trigger14 = stateno = 201
trigger14 = animelemtime(2) >=1
trigger15 = stateno = 300
trigger15 = animelemtime(3) >=4
trigger16 = ctrl
ignorehitpause = 1
value = 1120

;Butt Drop Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "ButtDropL"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 40
trigger6 = stateno = 320
trigger6 = animelemtime(3) <=1
trigger7 = stateno = 230
trigger7 = animelemtime(2) <=3
;**
trigger8 = stateno = 231
trigger8 = animelemtime(3) >=1
trigger9 = stateno = 330
trigger9 = animelemtime(3) >=1
;**
trigger10 = stateno = 240
trigger10 = animelemtime(3) <=2
trigger11 = stateno = 241
trigger11 = animelemtime(2) <=2
trigger12 = stateno = 340
trigger12 = animelemtime(3) <=2
trigger13 = stateno = 200
trigger13 = animelemtime(3) >=4
trigger14 = stateno = 201
trigger14 = animelemtime(2) >=1
trigger15 = stateno = 300
trigger15 = animelemtime(3) >=4
trigger16 = ctrl
ignorehitpause = 1
value = 1150

;Butt Drop Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "ButtDropM"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 40
trigger16 = ctrl
ignorehitpause = 1
value = 1160

;Butt Drop Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = Command = "ButtDropS"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 40
trigger16 = ctrl
ignorehitpause = 1
value = 1170

;Ooichou Nage Light
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command = "OoichouNageL"
triggerall = StateType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1200
;Ooichou Nage Medium
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command = "OoichouNageM"
triggerall = StateType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1201
;Ooichou Nage Strong
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Command = "OoichouNageS"
triggerall = StateType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1202

;Super Headbutt
[State -1]
type = ChangeState
triggerall = var(50) = 0
triggerall = Roundstate = 2
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = Command = "SuperHeadbutt"
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 2000





































































;****************************************************************************
;****************************************************************************
;************   AI  ***********************************************************
;****************************************************************************
;****************************************************************************

[State -1, GUARD]
type = changestate
triggerall = var(50) = 1
triggerall = StateNo != [120,155]
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
trigger2 = animelemtime(3) >=4
ignorehitpause = 1
value = 200

;Stand Light Punch FWD-BACK
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,30]
triggerall = P2BodyDist Y = [-60,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = Command != "holddown"
triggerall = (Command = "holdfwd" || Command = "holdback")
trigger1 = ctrl || stateno = 21
trigger2 = stateno = 201
trigger2 = animelemtime(5) >=1
ignorehitpause = 0
value = 201

;Stand Medium Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 8
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [30,55]
triggerall = P2BodyDist Y = [-100,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype = S
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1300,210)

;Stand Medium Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,30]
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
value = Ifelse(stateno=20,1300,211)

;Stand Strong Punch
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 10
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [30,70]
triggerall = P2BodyDist Y = [-90,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,220)

;Stand Strong Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,30]
triggerall = P2BodyDist Y = [-90,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = Ifelse(stateno=20,1500,221)

;Stand Strong Punch Near
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Roundstate = 2
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [-150,-80]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype = A
triggerall = Command != "holddown"
trigger1 = ctrl
ignorehitpause = 1
value = 221

;Stand Light Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = Random = [300,550]
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [25,70]
triggerall = P2BodyDist Y = [-50,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
trigger1 = ctrl || stateno = 20
trigger2 = stateno = 230
trigger2 = animelemtime(5) >=3
ignorehitpause = 1
value = 230

;Stand Light Kick Near
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,25]
triggerall = P2BodyDist Y = [-50,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = Command != "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
trigger1 = ctrl || stateno = 20
trigger2 = stateno = 231
trigger2 = animelemtime(5) >=2
ignorehitpause = 1
value = 231

;Stand Medium Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1300,1700]
triggerall = Random = [400,630]
triggerall = P2BodyDist X = [30,70]
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
triggerall = StateNo != [1300,1700]
triggerall = Random < AILevel * 11
triggerall = P2BodyDist X = [0,30]
triggerall = P2BodyDist Y = [-50,0]
triggerall = statetype = S
triggerall = MoveType != H
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = Command != "holddown"
trigger1 = ctrl || stateno = 20
ignorehitpause = 0
value =ifelse(random<=500, 241,242)

;Stand Strong Kick
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1300,1700]
triggerall = P2bodydist X = [41,90]
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
value = Ifelse(stateno=20,1600,250)

;Stand Strong Kick Near
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = StateNo != [1300,1700]
triggerall = P2bodydist X = [0,41]
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
value = Ifelse(stateno=20,1600,251)

;Crouch Light Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [-30,0]
triggerall = statetype != A
triggerall = MoveType != H
triggerall = p2statetype != L
triggerall = p2statetype != C
trigger1 = ctrl || stateno = 11
trigger2 = stateno = 300
trigger2 = animelemtime(3) >=4
ignorehitpause = 1
value = 300

;Crouch Medium Punch
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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
triggerall = StateNo != [1300,1700]
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

;Jump Medium Punch Down
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1300,1700]
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
value = Ifelse(Vel X != 0,441,440)

;Jump Strong Attack
[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(50) = 1
triggerall = StateNo != [1300,1700]
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
value = Ifelse(random<=500,421,451)

;---- AI POWERS ----------------
;---- AI POWERS ----------------
;---- AI POWERS ----------------
;---- AI POWERS ----------------

;Headbutt Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 6
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1000

;Headbutt Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 8
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,200+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1010

;Headbutt Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [200,300+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 1020


;Hundred Hands Slap Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 5
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(3) >=4
trigger13 = stateno = 201
trigger13 = animelemtime(2) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(3) >=4
trigger15 = ctrl
;**
ignorehitpause = 1
value = 1100

;Hundred Hands Slap Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 7
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,150+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
;**
trigger1 = stateno = 210
trigger1 = animelemtime(3) >=2
trigger2 = stateno = 211
trigger2 = animelemtime(5) >=1
trigger3 = stateno = 310
trigger3 = animelemtime(3) >=2
;**
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(3) >=4
trigger13 = stateno = 201
trigger13 = animelemtime(2) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(3) >=4
trigger15 = ctrl
ignorehitpause = 1
value = 1110

;Hundred Hands Slap Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 11
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [150,200+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 210
trigger1 = animelemtime(3) >=2
trigger2 = stateno = 211
trigger2 = animelemtime(5) >=1
trigger3 = stateno = 310
trigger3 = animelemtime(3) >=2
;**
trigger4 = stateno = 220
trigger4 = animelemtime(4) >=1
trigger5 = stateno = 221
trigger5 = animelemtime(5) >=1
trigger6 = stateno = 320
trigger6 = animelemtime(3) <=1
;**
trigger7 = stateno = 230
trigger7 = animelemtime(2) <=3
trigger8 = stateno = 231
trigger8 = animelemtime(4) <=3
trigger9 = stateno = 330
trigger9 = animelemtime(1) >=1
trigger10 = stateno = 240
trigger10 = animelemtime(3) <=2
trigger11 = stateno = 241
trigger11 = animelemtime(2) <=2
trigger12 = stateno = 340
trigger12 = animelemtime(3) <=2
trigger13 = stateno = 200
trigger13 = animelemtime(3) >=4
trigger14 = stateno = 201
trigger14 = animelemtime(2) >=1
trigger15 = stateno = 300
trigger15 = animelemtime(3) >=4
trigger16 = ctrl
ignorehitpause = 1
value = 1120

;Butt Drop Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 6
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,100+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 40
trigger6 = stateno = 320
trigger6 = animelemtime(3) <=1
trigger7 = stateno = 230
trigger7 = animelemtime(2) <=3
;**
trigger8 = stateno = 231
trigger8 = animelemtime(3) >=1
trigger9 = stateno = 330
trigger9 = animelemtime(3) >=1
;**
trigger10 = stateno = 240
trigger10 = animelemtime(3) <=2
trigger11 = stateno = 241
trigger11 = animelemtime(2) <=2
trigger12 = stateno = 340
trigger12 = animelemtime(3) <=2
trigger13 = stateno = 200
trigger13 = animelemtime(3) >=4
trigger14 = stateno = 201
trigger14 = animelemtime(2) >=1
trigger15 = stateno = 300
trigger15 = animelemtime(3) >=4
trigger16 = ctrl
ignorehitpause = 1
value = 1150

;Butt Drop Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 8
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [100,150+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 40
trigger16 = ctrl
ignorehitpause = 1
value = 1160

;Butt Drop Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 10
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [150,220+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType != A
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 40
trigger16 = ctrl
ignorehitpause = 1
value = 1170

;Ooichou Nage Light
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 4
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = P2BodyDist X = [0,50+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1200
;Ooichou Nage Medium
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 6
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = P2BodyDist X = [0,50+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1201
;Ooichou Nage Strong
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 9
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = P2BodyDist X = [0,50+(enemy,vel X>=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = stateno = 52
trigger16 = stateno = 40
trigger17 = ctrl
ignorehitpause = 1
value = 1202

;Super Headbutt
[State -1]
type = ChangeState
triggerall = var(50) = 1
triggerall = Random < AILevel * 12
triggerall = StateNo != [1300,1700]
triggerall = Roundstate = 2
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,300+(enemy,vel X<=0)*10]
triggerall = P2BodyDist Y = [-50,0]
triggerall = p2MoveType = I
trigger1 = stateno = 210
trigger1 = animelemtime(2) <=1
trigger2 = stateno = 211
trigger2 = animelemtime(2) <=1
trigger3 = stateno = 310
trigger3 = animelemtime(2) <=1
trigger4 = stateno = 220
trigger4 = animelemtime(3) <=2
trigger5 = stateno = 320
trigger5 = animelemtime(3) <=1
trigger6 = stateno = 230
trigger6 = animelemtime(2) <=3
trigger7 = stateno = 231
trigger7 = animelemtime(4) <=3
trigger8 = stateno = 330
trigger8 = animelemtime(1) >=1
trigger9 = stateno = 240
trigger9 = animelemtime(3) <=2
trigger10 = stateno = 241
trigger10 = animelemtime(2) <=2
trigger11 = stateno = 340
trigger11 = animelemtime(3) <=2
trigger12 = stateno = 200
trigger12 = animelemtime(1) >=1
trigger13 = stateno = 201
trigger13 = animelemtime(1) >=1
trigger14 = stateno = 300
trigger14 = animelemtime(4) >=1
trigger15 = ctrl
ignorehitpause = 1
value = 2000