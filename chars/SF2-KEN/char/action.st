[StateDef 200];弱パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 200
VelSet = 0
SprPriority = 2

[State 200]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 200]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 200]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -65
HitSound = S0, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 200]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 201];近距離弱パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 201
VelSet = 0
SprPriority = 2

[State 201]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 201]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 201]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 35 +(Random<250)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -80
HitSound = S0, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 201]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 210];中パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 210
VelSet = 0
SprPriority = 2

[State 210]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 210]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 140 -Var(10)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -77
HitSound = S0, 2
GuardSound = S0, 0
AnimType = Middle
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 210]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 211];近距離中パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 211
VelSet = 0
SprPriority = 2

[State 211]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 211]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = S, NA
Hitflag = MA
GuardFlag = M
Damage = 154 +(Random<250&&!Var(10))*7 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 2
GuardSound = S0, 0
Animtype = Middle
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 211]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 220];強パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 220
VelSet = 0
SprPriority = 2

[State 220]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 220]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 189 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -77
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 220]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 221];近距離強パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 221
VelSet = 0
SprPriority = 2

[State 221]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 221]
Type = HitDef
Trigger1 = (AnimElem = 2 || (!HitCount && !MoveGuarded && AnimElem = 3))
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 196 +(Random<250)*7 -Var(10)*42
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, IFelse(AnimElem=2,0, -70, -90)
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 221]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 230];弱キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 230
VelSet = 0
SprPriority = 2

[State 230]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 230]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 230]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 84 -Var(10)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -72
HitSound = S0, 4
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 230]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 231];近距離弱キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 231
VelSet = 0
SprPriority = 2

[State 231]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 231]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 231]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = L
Damage = 98 +(Random<250&&!Var(10))*7 -Var(10)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -18
HitSound = S0, 4
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 231]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 240];中キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 240
VelSet = 0
SprPriority = 2

[State 240]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 240]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 140 -Var(10)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -72
HitSound = S0, 5
GuardSound = S0, 0
AnimType = Middle
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 240]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 241];近距離中キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 241
VelSet = 0
SprPriority = 2

[State 241]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 241]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 154 +(Random<250&&!Var(10))*7 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -34+Floor(P2Dist X)/2, -64
HitSound = S0, 5
GuardSound = S0, 0
AnimType = Middle
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 241]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 250];強キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 250
VelSet = 0
SprPriority = 2

[State 250]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 250]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 189 -Var(10)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -86
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 250]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 251];ねりちゃぎ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 251
VelSet = 0
SprPriority = 2

[State 251]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 251]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 203 +(Random<250)*14 -Var(10)*42
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -94
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1
[State 251]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 28 +(Random<250)*14
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -58
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 251]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 300];しゃがみ弱パンチ
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 300
VelSet = 0
SprPriority = 2

[State 300]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 300]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 300]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 35 +(Random<250)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -46
HitSound = S0, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 300]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 310];しゃがみ中パンチ
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 310
VelSet = 0
SprPriority = 2

[State 310]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 310]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 140 +(Random<250&&!Var(10))*14 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -46
HitSound = S0, 2
GuardSound = S0, 0
AnimType = Middle
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 310]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 320];しゃがみ強パンチ
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 320
VelSet = 0
SprPriority = 2

[State 320]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 320]
Type = HitDef
Trigger1 = (AnimElem = 2 || (!HitCount && !MoveGuarded && AnimElem= 3))
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = IFelse(AnimElem=2,0, 189 +(Random<250&&!Var(10))*21 -Var(10)*35, 142 +(Random<250)*7 -Var(10)*35)
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = IFelse(AnimElem=2,0, -20, -11)+Floor(P2Dist X)/2, IFelse(AnimElem=2,0, -66, -106)
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 320]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 330];しゃがみ弱キック
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 330
VelSet = 0
SprPriority = 2

[State 330]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 330]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 330]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 35 +(Random<250&&Var(10))*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -35+Floor(P2Dist X)/2, -12
HitSound = S0, 4
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 330]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 340];しゃがみ中キック
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 340
VelSet = 0
SprPriority = 2

[State 340]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 340]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 140 +(Random<250&&!Var(10))*7 -Var(10)*35 +(Random<250&&Var(10))*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -38+Floor(P2Dist X)/2, -12
HitSound = S0, 5
GuardSound = S0, 0
AnimType = Middle
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 17
Ground.HitTime = 16
Guard.HitTime = 24
Air.HitTime = 99
Ground.Velocity = -7*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -14*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 340]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 350];しゃがみ強キック
Type = C
MoveType = A
Physics = N
Ctrl = 0
Anim = 350
VelSet = 0
SprPriority = 2

[State 350]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 350]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 189 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -35+Floor(P2Dist X)/2, -12
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Ground.Type = Trip
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Ground.Velocity = -2*Const(Size.XScale), -6
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = 0
YAccel = .25
P2Facing = 1

[State 350]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 11
Ctrl = 1

[StateDef 400];空中弱パンチ
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 400

[State 400]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 400]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = IFelse(Vel X=0, 91 -Var(10)*21 +(Random<250&&Var(10))*28, 105 +(Random<250&&!Var(10))*21 -Var(10)*49 +(Random<250&&Var(10))*7)
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -49
HitSound = S0, 1
GuardSound = S0, 0
Animtype = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[Statedef 410];空中中パンチ
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 410

[State 410]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 410]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = IFelse(!Var(10), 154, IFelse(Vel X=0, 119 +(Random<250)*28, 105 +(Random<250)*14))
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -49
HitSound = S0, 2
GuardSound = S0, 0
Animtype = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
YAccel = .25
P2Facing = 1

[StateDef 420];空中強パンチ
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 420 +(Name="SF2'ケン"&&Var(10))

[State 420]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 420]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = IFelse(Vel X=0, 196 +(Random<250&&!Var(10))*14 -Var(10)*35, 189 +(Random<250&&!Var(10))*28 -Var(10)*35)
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -49
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 430];空中垂直弱キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 430

[State 430]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 430]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 105 +(Random<250)*14 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -12+Floor(P2Dist X)/2, -64
HitSound = S0, 4
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 431];空中弱キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 431

[State 431]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 431]
Type = HitDef
Trigger1 = AnimElemNo(0) = 3 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 84 +(Random<250&&!Var(10))*14 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -18+Floor(P2Dist X)/2, -27
HitSound = S0, 4
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 440];空中垂直中キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 440

[State 440]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 440]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -12+Floor(P2Dist X)/2, -64
HitSound = S0, 5
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 441];空中中キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 441

[State 441]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 441]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 140 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -46
HitSound = S0, 5
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 450];空中垂直強キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 450

[State 450]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 450]
Type = HitDef
Trigger1 = AnimElem = 2 || (!MoveContact&&AnimElem=3)
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 168 +(AnimElem=2&&Random<250&&!Var(10))*28 +(AnimElem=3&&!Var(10))*28 +(AnimElem=3&&Random<250&&!Var(10))*35 -(Random>249&&Var(10))*7 +(AnimElem=3&&Random<250&&Var(10))*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -40
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[StateDef 451];空中強キック
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 451 + Var(10)

[State 451]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 451]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 189 +(Random<250&&!Var(10))*14 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -50
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1
