[StateDef 1000];”g“®Œ ã
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1000
SorPriority = 2

[State 1000]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1000]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0
Channel = 1

[State 1000]
Type = Helper
Trigger1 = AnimElem = 4, 2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1008

[State 1000]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020,5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (3+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 119, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1
[State 1000]
Type = Projectile
Trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020,5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (3+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 119, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1

[State 1000]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1001];”g“®Œ ’†
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1000
SorPriority = 2

[State 1001]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1001]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0
Channel = 1

[State 1001]
Type = Helper
Trigger1 = AnimElem = 4, 2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1008

[State 1001]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020,5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (4+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 126, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1
[State 1001]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020,5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (4+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 126, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1

[State 1001]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1002];”g“®Œ ‹­
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1000
SorPriority = 2

[State 1002]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1002]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0
Channel = 1

[State 1002]
Type = Helper
Trigger1 = AnimElem = 4,2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1008

[State 1002]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020, 5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (5+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 133, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1
[State 1002]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020, 5099]
ProjAnim = 1001
ProjHitAnim = 1002
ProjID = 1
OffSet = 0, 0
Velocity = (5+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 133, 28
GetPower = 0
GivePower = 0
PauseTime = 0, 15
SparkNo = -1
Guard.SparkNo = -1
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
YAccel = .25
Fall.YVelocity = -4
P2Facing = 1
ForceStand = 1

[State 1002]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1008];”ò‚Ñ“¹‹ï CPU‚É–hŒä‚³‚¹ˆÕ‚­‚·‚éƒwƒ‹ƒp[
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 99

[State 1008]
Type = VelSet
trigger1 = Time = 0
X=(IFelse(Parent,StateNo=1000,3,IFelse(Parent,StateNo=1001,4,5))+IFelse(Parent,Var(11)>=0,Parent,Var(11)*2,Parent,Var(11)/2))*Const(Size.XScale)

[State 1008]
Type = DestroySelf
Trigger1 = FrontEdgeDist < -50 || Parent,ProjContact0 = 1, 1 || Parent,ProjCancelTime(0) = 1

[StateDef 1100];¸—´Œ ã
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1100]
Type = NotHitBy
Trigger1 = AnimElem = 4,<=0
Value = SCA

[State 1100]
Type = ChangeAnim
Trigger1 = AnimElem = 3,14
Value = 1100
Elem = 4

[State 1100]
Type = VelSet
Trigger1 = AnimElem = 3,<3
Y = 0
[State 1100]
Type = VelSet
Trigger1 = Vel X < 0
X = 0

[State 1100]
Type = VelSet
Trigger1 = AnimElem = 3,2
X = (4+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -4-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1100]
Type = StateTypeSet
Trigger1 = AnimElem = 3,2
Value = A
[State 1100]
Type = VelAdd
Trigger1 = AnimElem = 3,>4 && Vel X > 0
X = -.5*Const(Size.XScale)
[State 1100]
Type = VelAdd
Trigger1 = AnimElem = 3,>4
Y = .3

[State 1100]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 1
Channel = 1

[State 1100]
Type = HitDef
Trigger1 = AnimElem = 2,2 || AnimElem = 3
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - (AnimElem=3)*84, 63 - (AnimElem=3)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = -20+Floor(P2Dist X)/2, -49 - (AnimElem=3)*25
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1100]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1101];¸—´Œ ’†
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1101]
Type = NotHitBy
Trigger1 = AnimElem = 4,<=0
Value = SCA

[State 1101]
Type = ChangeAnim
Trigger1 = AnimElem = 3,22
Value = 1100
Elem = 4

[State 1101]
Type = VelSet
Trigger1 = AnimElem = 3,<3
Y = 0
[State 1101]
Type = VelSet
Trigger1 = Vel X < 0
X = 0

[State 1101]
Type = VelSet
Trigger1 = AnimElem = 3,2
X = (8+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -6-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1101]
Type = StateTypeSet
Trigger1 = AnimElem = 3,2
Value = A
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 3,>3 && Vel X > 0
X = -.5*Const(Size.XScale)
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 3,>4
Y = .3

[State 1101]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 1
Channel = 1

[State 1101]
Type = HitDef
Trigger1 = AnimElem = 2,2 || AnimElem = 3
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 259 - (AnimElem=3)*119, 63 - (AnimElem=3)*28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = -20+Floor(P2Dist X)/2, -55 - (AnimElem=3)*25
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1101]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1102];¸—´Œ ‹­
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1102]
Type = ChangeAnim
Trigger1 = AnimElem = 3, 26
Value = 1100
Elem = 4

[State 1102]
Type = NotHitBy
Trigger1 = AnimElem = 4,<=0
Value = SCA

[State 1102]
Type = VelSet
Trigger1 = AnimElem = 3,<3
Y = 0
[State 1102]
Type = VelSet
Trigger1 = Vel X < 0
X = 0

[State 1102]
Type = VelSet
Trigger1 = AnimElem = 3,2
X = (11+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -8-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1102]
Type = StateTypeSet
Trigger1 = AnimElem = 3,2
Value = A
[State 1102]
Type = VelAdd
Trigger1 = AnimElem = 3,>2 && Vel X > 0
X = -.5*Const(Size.XScale)
[State 1102]
Type = VelAdd
Trigger1 = AnimElem = 3,>4
Y = .3

[State 1102]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 1
Channel = 1

[State 1102]
Type = HitDef
Trigger1 = AnimElem = 2,2
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 259, 70
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = -20+Floor(P2Dist X)/2, -55
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air,AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
[State 1102]
Type = HitDef
Trigger1 = AnimElem = 3
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 140, 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = -20+Floor(P2Dist X)/2, -80
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1102]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1103];¸—´Œ ’…’n
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0, 0

[State 1103]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 1100 - (PrevStateNo>1199)*1053
Elem = 6 - (PrevStateNo>1199)*5

[State 1103]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 1103]
Type = ChangeState
Trigger1 = (Anim=1100&&AnimTime=0) || (Anim=47&&Time=6)
Value = 0
Ctrl = 1

[StateDef 1200];—³Šªù•—‹r ã
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 1200
SorPriority = 2

[State 1200]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 2
Channel = 1
[State 1200]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1200]
Type = ChangeAnim
Trigger1 = (Anim=1200&&AnimTime=0) || Time = 31
Value = IFelse(Time=31, 1202, 1201)

[State 1200]
Type = VelAdd
Trigger1 = Anim != 1201
Y = .34

[State 1200]
Type = VelSet
Trigger1 = Time = 0
X = (2.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -4-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1200]
Type = VelSet
Trigger1 = Anim = 1201
Y = 0

[State 1200]
Type = HitDef
Trigger1 = Anim = 1201 && ((AnimElem=1&&Time<14)||AnimElem=3||AnimElem=5)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1200]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1201];—³Šªù•—‹r ’†
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 1200
SorPriority = 2

[State 1201]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 2
Channel = 1
[State 1201]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1201]
Type = ChangeAnim
Trigger1 = (Anim=1200&&AnimTime=0) || Time = 38
Value = IFelse(Time=38, 1202, 1201)

[State 1201]
Type = VelAdd
Trigger1 = Anim != 1021
Y = .34

[State 1201]
Type = VelSet
Trigger1 = Time = 0
X = (3+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -4-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1201]
Type = VelSet
Trigger1 = Anim = 1201
Y = 0

[State 1201]
Type = HitDef
Trigger1 = Anim = 1201 && ((AnimElem=1&&Time<14)||AnimElem=3||AnimElem=5)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1201]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1202];—³Šªù•—‹r ‹­
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 1200
SorPriority = 2

[State 1202]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 2
Channel = 1
[State 1202]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1202]
Type = ChangeAnim
Trigger1 = (Anim=1200&&AnimTime=0) || Time = 45
Value = IFelse(Time=45, 1202, 1201)

[State 1202]
Type = VelAdd
Trigger1 = Anim != 1021
Y = .34

[State 1202]
Type = VelSet
Trigger1 = Time = 0
X = (3.75+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -4-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1202]
Type = VelSet
Trigger1 = Anim = 1201
Y = 0

[State 1202]
Type = HitDef
Trigger1 = Anim = 1201 && ((AnimElem=1&&Time<14)||AnimElem=3||AnimElem=5)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1202]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1203];‹ó’†—³Šªù•—‹r ã
Type = A
MoveType = A
Physics = N
Ctrl = 0
SorPriority = 2

[State 1203]
Type = ChangeAnim
Trigger1 = Time = 1 || Time = 21
Value = 1202 - (Time=1)

[State 1203]
Type = Turn
Trigger1 = Vel X < 0 && Time = 1

[State 1203]
Type = PlaySnd
Trigger1 = Time = 1
Value = 10, 2
Channel = 1
[State 1203]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1203]
Type = VelSet
Trigger1 = Anim = 1201
X = (2.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = 0
[State 1203]
Type = VelAdd
Trigger1 = Anim = 1202
Y = .34

[State 1203]
Type = HitDef
Trigger1 = Anim = 1201 && (Time=1||AnimElem=3||AnimElem=5)
Attr = A, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1203]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52

[StateDef 1204];‹ó’†—³Šªù•—‹r ’†
Type = A
MoveType = A
Physics = N
Ctrl = 0
SorPriority = 2

[State 1204]
Type = ChangeAnim
Trigger1 = Time = 1 || Time = 21
Value = 1202 - (Time=1)

[State 1204]
Type = Turn
Trigger1 = Vel X < 0 && Time = 1

[State 1204]
Type = PlaySnd
Trigger1 = Time = 1
Value = 10, 2
Channel = 1
[State 1204]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1204]
Type = VelSet
Trigger1 = Anim = 1201
X = (3+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = 0
[State 1204]
Type = VelAdd
Trigger1 = Anim = 1202
Y = .34

[State 1204]
Type = HitDef
Trigger1 = Anim = 1201 && (Time=1||AnimElem=3||AnimElem=5)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1204]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52

[StateDef 1205];‹ó’†—³Šªù•—‹r ‹­
Type = A
MoveType = A
Physics = N
Ctrl = 0
SorPriority = 2

[State 1205]
Type = ChangeAnim
Trigger1 = Time = 1 || Time = 28
Value = 1202 - (Time=1)

[State 1205]
Type = Turn
Trigger1 = Vel X < 0 && Time = 1

[State 1205]
Type = PlaySnd
Trigger1 = Time = 1
Value = 10, 2
Channel = 1
[State 1205]
Type = PlaySnd
Trigger1 = Anim = 1201 && AnimElem = 3
Value = 1, 0

[State 1205]
Type = VelSet
Trigger1 = Anim = 1201
X = (3.75+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = 0
[State 1205]
Type = VelAdd
Trigger1 = Anim = 1202
Y = .34

[State 1025]
Type = HitDef
Trigger1 = Anim = 1201 && (Time=1||AnimElem=3||AnimElem=5)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 77, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide
Guard.SparkNo = S54+(TeamSide)
SparkXY = 0, -52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = IFelse(P2Dist X>-1, -9, 9)*Const(Size.XScale)
Air.Velocity = IFelse(P2Dist X>-1, -1.5, 1.5)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>-1, 1, -1)

[State 1205]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52
