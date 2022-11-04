;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------


;-| Special Motions |------------------------------------------------------
; Tiger Shot High
[Command]
name = "tigershot_x"
command = ~D, DF, F, x
[Command]
name = "tigershot_x"
command = ~D, DF, F, ~x
[Command]
name = "tigershot_y"
command = ~D, DF, F, y
[Command]
name = "tigershot_y"
command = ~D, DF, F, ~y
[Command]
name = "tigershot_z"
command = ~D, DF, F, z
[Command]
name = "tigershot_z"
command = ~D, DF, F, ~z

; Tiger Shot Low
[Command]
name = "tigershot_a"
command = ~D, DB, B, a
[Command]
name = "tigershot_a"
command = ~D, DB, B, ~a
[Command]
name = "tigershot_b"
command = ~D, DB, B, b
[Command]
name = "tigershot_b"
command = ~D, DB, B, ~b
[Command]
name = "tigershot_c"
command = ~D, DB, B, c
[Command]
name = "tigershot_c"
command = ~D, DB, B, ~c

; Tiger Uppercut
[Command]
name = "uppercut_x"
command = ~F, D, DF, x
[Command]
name = "uppercut_x"
command = ~F, D, DF, ~x
[Command]
name = "uppercut_y"
command = ~F, D, DF, y
[Command]
name = "uppercut_y"
command = ~F, D, DF, ~y
[Command]
name = "uppercut_z"
command = ~F, D, DF, z
[Command]
name = "uppercut_z"
command = ~F, D, DF, ~z

; Tiger Kicks
[Command]
name = "tigers_x"
command = x, x, x, x
time = 30
[Command]
name = "tigers_y"
command = y, y, y, y
time = 30
[Command]
name = "tigers_z"
command = z, z, z, z
time = 30

; Tiger Head Crusher
[Command]
name = "tigercrush_x"
command = ~50$B, F, x
[Command]
name = "tigercrush_x"
command = ~50$B, F, ~x
[Command]
name = "tigercrush_y"
command = ~50$B, F, y
[Command]
name = "tigercrush_y"
command = ~50$B, F, ~y
[Command]
name = "tigercrush_z"
command = ~50$B, F, z
[Command]
name = "tigercrush_z"
command = ~50$B, F, ~z


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

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Hold Button |--------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
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
[Statedef -1]

;--------------------
[State -1, VarAdd]
type = VarAdd
trigger1 = Var(35) <= 0
trigger1 = Command = "start"
;trigger1 = Var(50) <= 0
ignorehitpause = 1
v = 51
value = 1

[State -1, VarSet]
type = VarSet
trigger1 = Var(51) > 1
trigger2 = Var(35) > 0
;trigger3 = Var(50) > 0
ignorehitpause = 1
v = 51
value = 0
;--------------------

;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Tiger Uppercut
[State -1, State]
type = ChangeState
value = 1100
triggerall = Var(51) <= 0
triggerall = Var(35) <= 0
triggerall = command = "uppercut_x" || command = "uppercut_y" || command = "uppercut_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Tiger Shot High
[State -1, State]
type = ChangeState
value = 1000
triggerall = Var(51) <= 0
triggerall = Var(35) <= 0
triggerall = NumHelper(1050) <= 0
triggerall = command = "tigershot_x" || command = "tigershot_y" || command = "tigershot_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Tiger Shot Low
[State -1, State]
type = ChangeState
value = 1010
triggerall = Var(51) <= 0
triggerall = Var(35) <= 0
triggerall = NumHelper(1050) <= 0
triggerall = command = "tigershot_a" || command = "tigershot_b" || command = "tigershot_c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Tiger Kicks
[State -1, State]
type = ChangeState
value = 2000
triggerall = Var(51) > 0
triggerall = Var(35) <= 0
triggerall = command = "tigers_x" || command = "tigers_y" || command = "tigers_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo >= 200
trigger2 = StateNo < 500
trigger2 = StateTime > 0

;---------------------------------------------------------------------------
; Tiger Head Crusher
[State -1, State]
type = ChangeState
value = 2100
triggerall = Var(51) > 0
triggerall = Var(35) <= 0
triggerall = command = "tigercrush_x" || command = "tigercrush_y" || command = "tigercrush_z"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Basic Moves
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, State]
type = ChangeState
value = 200
triggerall = Var(35) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Medium Punch
[State -1, State]
type = ChangeState
value = 210
triggerall = Var(35) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Strong Punch
[State -1, State]
type = ChangeState
value = 220
triggerall = Var(35) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, State]
type = ChangeState
value = 230
triggerall = Var(35) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Medium Kick
[State -1, State]
type = ChangeState
value = 240
triggerall = Var(35) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Strong Kick
[State -1, State]
type = ChangeState
value = 250
triggerall = Var(35) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch Punch
[State -1, State]
type = ChangeState
value = 400
triggerall = Var(35) <= 0
triggerall = command = "x" || command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Crouch Medium Punch
[State -1, State]
type = ChangeState
value = 410
triggerall = Var(35) <= 0
triggerall = command = "y" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Crouch Strong Punch
[State -1, State]
type = ChangeState
value = 420
triggerall = Var(35) <= 0
triggerall = command = "z" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, State]
type = ChangeState
value = 630
triggerall = Var(35) <= 0
triggerall = command = "x" || command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; Jump Medium Kick
[State -1, State]
type = ChangeState
value = 640
triggerall = Var(35) <= 0
triggerall = command = "y" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl

; Jump Strong Kick
[State -1, State]
type = ChangeState
value = 650
triggerall = Var(35) <= 0
triggerall = command = "z" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; AI System
;---------------------------------------------------------------------------
; Random AI
[State -1, Random]
type = VarRandom
trigger1 = Ctrl
trigger1 = Var(35) > 0
trigger1 = RoundState = 2
ignorehitpause = 1
v = 30
range = 0,100

[State -1, VarSet]
type = VarSet
trigger1 = Var(35) <= 0
trigger2 = RoundState != 2
ignorehitpause = 1
v = 30
value = 0

;--------------------
; Stand Punch
[State -1, State]
type = ChangeState
value = 210
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = EnemyNear, StateType != L
trigger1 = P2BodyDist X <= 60
trigger1 = Var(30) > 0
trigger1 = Var(30) < 25

; Stand Punch
[State -1, State]
type = ChangeState
value = 220
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = EnemyNear, StateType != L
trigger1 = P2BodyDist X <= 60
trigger1 = Var(30) >= 25
trigger1 = Var(30) < 50

;--------------------
; Stand Kick
[State -1, State]
type = ChangeState
value = 230
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = EnemyNear, StateType != L
trigger1 = P2BodyDist X <= 60
trigger1 = Var(30) >= 50
trigger1 = Var(30) < 100

;--------------------
; Crouch Light Punch
[State -1, State]
type = ChangeState
value = 400
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = EnemyNear, StateType != L
trigger1 = Var(30) = 30
trigger2 = P2BodyDist X <= 60
trigger2 = P2StateNo >= 200
trigger2 = P2StateNo < 400
trigger2 = Var(30) > 0
trigger2 = Var(30) < 50

;--------------------
; Jump Light Kick
[State -1, State]
type = ChangeState
value = 630
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType = A
triggerall = EnemyNear, StateType != L
trigger1 = StateNo < 120
trigger1 = Var(30) > 20
trigger1 = Var(30) < 30
trigger2 = EnemyNear, MoveType = A
trigger2 = Var(30) > 25
trigger2 = Var(30) < 30

; Jump Medium Kick
[State -1, State]
type = ChangeState
value = 640
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType = A
triggerall = EnemyNear, StateType != L
trigger1 = StateNo < 120
trigger1 = Var(30) > 30
trigger1 = Var(30) < 40
trigger2 = EnemyNear, MoveType = A
trigger2 = Var(30) > 35
trigger2 = Var(30) < 40

; Jump Strong Kick
[State -1, State]
type = ChangeState
value = 650
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType = A
triggerall = EnemyNear, StateType != L
trigger1 = StateNo < 120  || StateNo = 995
trigger1 = Var(30) > 40
trigger1 = Var(30) < 50
trigger2 = EnemyNear, MoveType = A
trigger2 = Var(30) > 45
trigger2 = Var(30) < 50
;--------------------

;--------------------
; Tiger Shot High
[State -1, State]
type = ChangeState
value = 1000
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = P2BodyDist X >= 100
triggerall = EnemyNear, StateType != L
triggerall = NumHelper(1050) <= 0
trigger1 = Var(30) >= 10
trigger1 = Var(30) < 20

;--------------------
; Tiger Shot Low
[State -1, State]
type = ChangeState
value = 1010
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = P2BodyDist X >= 100
triggerall = EnemyNear, StateType != L
triggerall = NumHelper(1050) <= 0
trigger1 = Var(30) >= 20
trigger1 = Var(30) < 30

;--------------------
; Tiger Uppercut
[State -1, State]
type = ChangeState
value = 1100
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = MoveType = I
triggerall = StateType != A
triggerall = StateNo < 120
triggerall = P2BodyDist X <= 100
triggerall = EnemyNear, StateType != L
trigger1 = EnemyNear, StateType = A
trigger1 = Var(30) >= 50
trigger1 = Var(30) < 100
trigger2 = Var(30) = 40

;--------------------
; Stand Guard
[State -1, Guard]
type = ChangeState
value = 130
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = StateNo < 160
triggerall = StateType != A
trigger1 = EnemyNear, StateType = A
trigger1 = EnemyNear, MoveType = A
trigger1 = P2Dist X <= 100

; Crouch Guard
[State -1, Guard]
type = ChangeState
value = 131
triggerall = Ctrl
triggerall = Var(35) > 0
triggerall = StateNo < 160
triggerall = StateType != A
trigger1 = EnemyNear, StateType = C
trigger1 = EnemyNear, MoveType = A
trigger1 = P2Dist X <= 100
;--------------------

;---------------------------------------------------------------------------