; The CMD file.
;Por Lord-S

;-| Super Motions |--------------------------------------------------------

[Command]
name = "tripleflip"
command = ~D,DF,F,D,DF,F,a
time = 30
[Command]
name = "tripleflip"
command = ~D,DF,F,D,DF,F,b
time = 30
[Command]
name = "tripleflip"
command = ~D,DF,F,D,DF,F,c
time = 30
 [Command]
name = "hiper2"
command = ~D,DF,F,D,DF,F,x
time = 30
[Command]
name = "hiper2"
command = ~D,DF,F,D,DF,F,y
time = 30
[Command]
name = "hiper2"
command = ~D,DF,F,D,DF,F,z
time = 30
[Command]
name = "hiper3"
command = ~D,DB,B,D,DB,B,a
time = 40
[Command]
name = "hiper3"
command = ~D,DB,B,D,DB,B,b
time = 40
[Command]
name = "hiper3"
command = ~D,DB,B,D,DB,B,c
time = 40

;-| Special Motions |------------------------------------------------------

[Command]
name = "especial"
command = B,~D,B,x
time = 20
[Command]
name = "especial2"
command = B,~D,B,y
time = 20
[Command]
name = "especial3"
command = B,~D,B,z
time = 20
[Command]
name = "tumble"
command = ~D,F,x
time = 10
[Command]
name = "tumble2"
command = ~D,F,y
time = 10
[Command]
name = "tumble3"
command = ~D,F,z
time = 10
[Command]
name = "slash"
command = B,~D,B,a
time = 20
[Command]
name = "slash"
command = B,~D,B,b
time = 20
[Command]
name = "slash"
command = B,~D,B,c
time = 20
[Command]
name = "fwdflip"
command = F,~D,F,a
time = 20
[Command]
name = "fwdflip2"
command = F,~D,F,b
time = 20
[Command]
name = "fwdflip3"
command = F,~D,F,c
time = 20
[Command]
name = "slam"
command = F
[Command]
name = "slam"
command = DF
[Command]
name = "slam"
command = D

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 9

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = a+b
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
command = x
time = 1

[Command]
name = "b"
command = y
time = 1

[Command]
name = "c"
command = z
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = c
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

;---------------------------------------------------------------------------
; 2. State entry
[Statedef -1]
;===========================================================================
;"tripleflip" (level 1)

 [State -1, tripleflip] 
 type = ChangeState
 value = 3000
 triggerall = command = "tripleflip"
 triggerall = power >= 1000
 triggerall = statetype != A
 trigger1 = ctrl

;---------------------------------------------------------------------------
;hiper level 2

 [State -1, Hiper 2] 
 type = ChangeState
 value = 3100
 triggerall = command = "hiper2"
 triggerall = power >= 2000
 triggerall = statetype != A
 trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;hiper level 3

 [State -1, Hiper 3] 
 type = ChangeState
 value = 3200
 triggerall = command = "hiper3"
 triggerall = power >= 3000
 trigger1 = pos Y >= -20 
 trigger1 = stateno <= 50 

;===========================================================================
; Roll
[State -1]
type = ChangeState
value = 1000
triggerall = command = "tumble"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =220||stateno=270||stateno=420||stateno=470
trigger2 = movehit

;------------------------------------
; Roll med
[State -1]
type = ChangeState
value = 1010
triggerall = command = "tumble2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =220||stateno=270||stateno=420||stateno=470
trigger2 = movehit

;-----------------------------------
; Roll strong
[State -1]
type = ChangeState
value = 1020
triggerall = command = "tumble3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =220||stateno=270||stateno=420||stateno=470
trigger2 = movehit

;------------------------------------
;especial novo f
[State -1]
type = ChangeState
value = 1100
triggerall = command = "especial"
trigger1 = pos Y >= -20 ;statetype = S
trigger1 = stateno <= 50 ;ctrl = 1

;------------------------------------
;especial novo m
[State -1]
type = ChangeState
value = 1110
triggerall = command = "especial2"
trigger1 = pos Y >= -20 ;statetype = S
trigger1 = stateno <= 50 ;ctrl = 1

;-----------------------------------
;especial novo s
[State -1]
type = ChangeState
value = 1120
triggerall = command = "especial3"
trigger1 = pos Y >= -20 ;statetype = S
trigger1 = stateno <= 50 ;ctrl = 1

;------------------------------------
; "slash" genérico
[State -1]
type = ChangeState
value = 1200
triggerall = command = "slash" && power <= 2999
trigger1 = pos Y >= -20 
trigger1 = stateno <= 50

;------------------------------------
;"Foward Flip"
[State -1]
type = ChangeState
value = 1300
triggerall = command = "fwdflip"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =200||stateno=250||stateno=400||stateno=450
trigger2 = movehit

;------------------------------------
;"Foward Flip medio"
[State -1]
type = ChangeState
value = 1310
triggerall = command = "fwdflip2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =200||stateno=250||stateno=400||stateno=450
trigger2 = movehit

;------------------------------------
;"Foward Flip strong"
[State -1]
type = ChangeState
value = 1320
triggerall = command = "fwdflip3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =200||stateno=250||stateno=400||stateno=450
trigger2 = movehit

;------------------------------------
;provoca
[State -1, Taunt]
type = ChangeState
value = 860
triggerall=command="start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 850]
type = ChangeState
value = 850
triggerall = command = "slash" && power = 3000
trigger1 = pos Y >= -20 
trigger1 = stateno <= 50

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 810
triggerall = command = "b" || command = "c"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = p2movetype != H
trigger2 = ctrl = 1
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, AirThrow]
type = ChangeState
value = 815
triggerall = command = "b" || command = "c"
triggerall = statetype = A && p2bodydist Y <= 20 
trigger1 = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = p2movetype != H
trigger2 = ctrl = 1
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = p2movetype != H

;===========================================================================
;-GOLPES--------------------------------------------------------------------
;Stand light Punch
[State -1, Stand LPunch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand medium Punch
[State -1, Stand MPunch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist X >= 41
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit

;Stand medium Punch alternative
[State -1, Stand MPA]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [250,255]
trigger2 = movehit

;Stand Strong Punch
[State -1, Stand SPunch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = p2bodydist X >= 41
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 265 && movehit

;Stand Strong Punch alternative
[State -1, Stand SPA]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = p2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------
;stand low kick
[State -1, slk]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X >= 31

;stand low kick alt
[State -1, slka]
type = ChangeState
value = 255
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X <= 30

;Stand med kick
[State -1, Stand mkick]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X >= 31

;Stand med kick alt
[State -1, smka]
type = ChangeState
value = 265
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X <= 30
trigger2 = stateno = 200 && movehit

;Stand Strong kick
[State -1, Stand skick]
type = ChangeState
value = 270
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X >= 31

;Stand Strong kick
[State -1, Skickalt]
type = ChangeState
value = 280
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X <= 30
trigger2 = stateno = 215 && movehit

;---------------------------------------------------------------------------
;Crouching Light Punch

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching m punch

[State -1, Crouching m Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching s punch

[State -1, Crouching s Punch]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movehit

;---------------------------------------------------------------------------
;Crouching Light k

[State -1, Crouching Lightk]
type = ChangeState
value = 450
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching m k

[State -1, Crouching mk]
type = ChangeState
value = 460
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching s k

[State -1, Crouching sk]
type = ChangeState
value = 470
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 450 && movehit

;---------------------------------------------------------------------------
;Jump Light Punch

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump m Punch

[State -1, Jump m Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump s p

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump s p vertical

[State -1, JSPV]
type = ChangeState
value = 625
triggerall = command = "c"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump kick

[State -1, Jump lk]
type = ChangeState
value = 650
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = vel X != 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump kick

[State -1, Jump lk]
type = ChangeState
value = 655
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = vel X = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump kick

[State -1, Jump mk]
type = ChangeState
value = 660
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel X != 0

;---------------------------------------------------------------------------
;Jump kick med alt.

[State -1, Jump amk]
type = ChangeState
value = 665
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel X = 0

;---------------------------------------------------------------------------
;Jump kick

[State -1, Jump sk]
type = ChangeState
value = 670
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel X != 0

;---------------------------------------------------------------------------
;Jump kick

[State -1, Jump sk]
type = ChangeState
value = 675
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel X = 0

;---------------------------------------------------------------------------
;triangle jump

[State -1, Run Back]
type = ChangeState
value = 49
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 1
trigger1 = vel X <= 1
trigger1 = pos Y <= -40 && stateno = 50

;--------------------------------------------------------------------------
; Balrog Street Fighter 2 by Lord Sinistro - Don't modify it.
; CyberBit Mugen Page - http://www.cyberbit.hpg.com.br
; Este char penterce a cyberbit mugen, ou seja, hospedar, apagar o
; read-me, alterar e pra resumir, zoar com o char é coisa de lame fdp.
; Respeite o trabalho de um charmaker, ao zuar vc está acabando com
; os chars, q são trabalhos gratuitos e não comerciais. Já to cansado de ver
; meus chars zuados por aí, um dia paro de lançar chars, pois parar de faze-los
; não vou.
;---------------------------------------------------------------------------
