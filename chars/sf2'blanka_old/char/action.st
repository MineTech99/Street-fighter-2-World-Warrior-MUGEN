[StateDef 200];弱パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 200
VelSet = 0
SprPriority = 2

[State 200]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 200]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 112 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -40+Floor(P2Dist X)/2, -60
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
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 201]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 126 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -40+Floor(P2Dist X)/2, -68
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
Damage = 140 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -82
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
HitFlag = MA
GuardFlag = M
Damage = 126 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
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
Damage = 161 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -58
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
Trigger1 = Time = 28
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
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 230]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 112 -Var(10)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -34+Floor(P2Dist X)/2, -58
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
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 231]
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 126 -Var(10)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -22+Floor(P2Dist X)/2, -70
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
Trigger1 = AnimElem = 4
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 147 -Var(10)*42
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -34+Floor(P2Dist X)/2, -74
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
Trigger1 = AnimElem = 5
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 154 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 16
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -22+Floor(P2Dist X)/2, -58
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
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 154 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -22+Floor(P2Dist X)/2, -70
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
Damage = 175 -Var(10)*49
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -34+Floor(P2Dist X)/2, -82
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

[StateDef 260];ヘッドクラッシュ
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 260
VelSet = 0
SprPriority = 2

[State 260]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 8

[State 260]
Type = HitDef
Trigger1 = AnimElem = 3,1
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 147 -Var(10)*42
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -72
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
[State 260]
Type = HitDef
Trigger1 = AnimElem = 5
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 133 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -14
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

[State 260]
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
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 300]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 112 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -34
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
Trigger1 = Time = 11
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
Damage = 140 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -48
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
Trigger1 = Time = 14
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
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 161 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -64
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
Trigger1 = Time = 34
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
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 7

[State 330]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 112 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -42+Floor(P2Dist X)/2, -24
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
Damage = 140 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -42+Floor(P2Dist X)/2, -24
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
Trigger1 = AnimElem = 4
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 161 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -42+Floor(P2Dist X)/2, -12
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
Value = 0
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
Damage = 126 -Var(10)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -54
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
Trigger1 = AnimElemNo(0) = 2 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -54
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

[StateDef 420];垂直空中強パンチ
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 420

[State 420]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 420]
Type = HitDef
Trigger1 = Time = 1
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 168 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -68
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

[StateDef 421];空中強パンチ
Type = A
MoveType = A
Physics = A
Ctrl = 0
Anim = 421

[State 421]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 421]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -44
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

[StateDef 430];空中弱キック
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
Damage = 126 -Var(10)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -44
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

[StateDef 440];空中中キック
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
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -44
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

[StateDef 450];空中強キック
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
Trigger1 = AnimElem = 3
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 168 -Var(10)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -52
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