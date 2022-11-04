[StateDef 200];弱パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
SprPriority = 2

[State 200]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 200

[State 200]
Type = Turn
Trigger1 = P2Dist X < 0 && AnimElem = 1

[State 200]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 200]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 98 - (Var(10)=1)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -78
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
VelSet = 0
SprPriority = 2

[State 201]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 201

[State 201]
Type = Turn
Trigger1 = P2Dist X < 0 && AnimElem = 1

[State 201]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 201]
Type = HitDef
Trigger1 = (Var(10)!=1&&AnimElem=2) || (Var(10)=1&&Time=1)
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 98 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -83
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
VelSet = 0
SprPriority = 2

[State 210]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 210

[State 210]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 210]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 140 - (Var(10)=1)*42
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -80
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

[State 210]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 220];強パンチ
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
SprPriority = 2

[State 220]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 220

[State 220]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 220]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 161 - (Var(10)=1)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -38+Floor(P2Dist X)/2, -80
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

[State 220]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 230];弱キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
SprPriority = 2

[State 230]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 230

[State 230]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 230]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 105 - (Var(10)=1)*35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -34
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
VelSet = 0
SprPriority = 2

[State 231]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 231

[State 231]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 231]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 98 - (Var(10)=1)*21
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -64
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
VelSet = 0
SprPriority = 2

[State 240]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 240

[State 240]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 240]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 133 - (Var(10)=1)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -70
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
VelSet = 0
SprPriority = 2

[State 241]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 241

[State 241]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 241]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 126 - (Var(10)=1)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -62
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
VelSet = 0
SprPriority = 2

[State 250]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 250

[State 250]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 250]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 154 - (Var(10)=1)*28
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -86
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

[State 250]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 251];近距離強キック
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
SprPriority = 2

[State 251]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 251

[State 251]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 251]
Type = HitDef
Trigger1 = AnimElem = 5
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 154 - (Var(10)=1)*28
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -64
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
Type = HitDef
Trigger1 = AnimElem = 6
Attr = S, NA
HitFlag = MA
GuardFlag = M
Damage = 35
Getpower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -14+Floor(P2Dist X)/2, -96
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
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 300];しゃがみ弱パンチ
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
SprPriority = 2

[State 300]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 300

[State 300]
Type = Turn
Trigger1 = P2Dist X < 0 && Time = 0

[State 300]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 300]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 28 + (Var(10)=1)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -54
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
VelSet = 0
SprPriority = 2

[State 310]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 310

[State 310]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 310]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 133 - (Var(10)=1)*35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -68
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
VelSet = 0
SprPriority = 2

[State 320]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 320

[State 320]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 320]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = C, NA
HitFlag = MA
GuardFlag = M
Damage = 154 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -30+Floor(P2Dist X)/2, -68
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
VelSet = 0
SprPriority = 2

[State 330]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 330

[State 330]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 330]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 98 - (Var(10)=1)*35
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
VelSet = 0
SprPriority = 2

[State 340]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 340

[State 340]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 340]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 126 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -35+Floor(P2Dist X)/2, -12
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
VelSet = 0
SprPriority = 2

[State 350]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 350

[State 350]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 350]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = C, NA
HitFlag = MA
GuardFlag = L
Damage = 154 - (Var(10)=1)*28
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

[State 400]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 400

[State 400]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 400]
Type = HitDef
Trigger1 = (AnimElemNo(0) = [2,3]) && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 105 - (AnimElemNo(0)=3)*7 - (Var(10)=1)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -68
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

[State 410]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 410

[State 410]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 410]
Type = HitDef
Trigger1 = (AnimElemNo(0) = [2,3]) && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 126 - (AnimElemNo(0)=3)*7 - (Var(10)=1)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -68
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

[State 420]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 420

[State 420]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 420]
Type = HitDef
Trigger1 = (AnimElemNo(0) = [2,3]) && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 - (Var(10)=1)*14
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

[State 421]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 421

[State 421]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 421]
Type = HitDef
Trigger1 = AnimElem = 4
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -54
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

[StateDef 430];垂直空中弱キック
Type = A
MoveType = A
Physics = A
Ctrl = 0

[State 430]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 430 +(Var(10)=1)*10

[State 430]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 430]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 105 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -56
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

[State 431]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 431

[State 431]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 7

[State 431]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 91 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S50+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -40
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

[State 440]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 440

[State 440]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 8

[State 440]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 126 - (Var(10)=1)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -56
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

[State 450]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 450

[State 450]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 0, 9

[State 450]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 - (Var(10)=1)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -56
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

[Statedef 460];ヘッドバット
Type = A
MoveType = A
Physics = A
Ctrl = 0

[State 460]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 460

[State 460]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 133 - (Var(10)=1)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S52+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -78
HitSound = S0, 2
GuardSound = S0, 0
Animtype = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[StateDef 461];ヘッドバット 強
Type = A
MoveType = A
Physics = A
Ctrl = 0

[State 461]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 461

[State 461]
Type = HitDef
Trigger1 = AnimElem = 2
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 - (Var(10)=1)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -78
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -1.5*Const(Size.XScale), -5
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[StateDef 470];フライングボディープレス
Type = A
MoveType = A
Physics = A
Ctrl = 0

[State 470]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 470

[State 470]
Type = HitDef
Trigger1 = AnimElemNo(0) = 2 && !MoveContact && PrevStateNo != 4100
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 133 - (Var(10)=1)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -52
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