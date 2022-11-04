[StateDef 1000];百烈脚 弱
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1000]
Type = VelSet
Trigger1 = Anim = 1001 && Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1000]
Type = VarSet
Trigger1 = Time = 0 || Command = "waza1_light"
V = 14
Value = IFelse(Time=0, 0, 1)

[State 1000]
Type = ChangeAnim
Trigger1 = Anim = 1000 && AnimElem = 3
Value = 1001
[State 1000]
Type = ChangeAnim
Trigger1 = Time = 0 || (Anim=1001&&Time=48&&!Var(14))
Value = 1000
Elem = IFelse(PrevStateNo=1001||Anim=1001, 4, 1)

[State 1000]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1000]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1000]
Type = HitDef
Trigger1 = Time = 5
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -76
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -1.5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1000]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1000]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1000]
Type = HitDef
Trigger1 = Time > 5 && AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1000]
Type = HitDef
Trigger1 = Time > 5 && AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)

[State 1000]
Type = ChangeState
Trigger1 = (Anim=1000&&AnimTime=0) || (Time=48&&Var(14))
Value = IFelse((Anim=1000&&AnimTime=0), 0, 1001)
Ctrl = IFelse((Anim=1000&&AnimTime=0), 1, 0)

[State 1000]
Type = PlaySnd
Trigger1 = AnimElem = 2 &&Time > 32
Value = 10, 1
Channel = 1

[StateDef 1001];百烈脚中 弱
Type = U
MoveType = A
Physics = N
SprPriority = 2

[State 1001]
Type = VelSet
Trigger1 = Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1001]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 1000
Value = 1001
Elem = AnimElemNo(0)

[State 1001]
Type = PlaySnd
Trigger1 = AnimElem = 2
Value = 10, 1
Channel = 1

[State 1001]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1001]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1001]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1001]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1001]
Type = HitDef
Trigger1 = AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)
[State 1001]
Type = HitDef
Trigger1 = AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -80, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)

[State 1001]
Type = ChangeState
Trigger1 = TimeMod = 16,8 && Var(14) != 1
Value = IFelse(Var(14)=2, 1003, IFelse(Var(14)=3, 1005, 1000))

[State 1001]
Type = VarSet
Trigger1 = Command = "a" || Command = "b" || Command = "c" || TimeMod = 16,8
V = 14
Value = IFelse(Command="a", 1, IFelse(Command="b", 2, IFelse(Command="c", 3, 0)))

[StateDef 1002];百烈脚 中
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1002]
Type = VelSet
Trigger1 = Anim = 1002 && Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1002]
Type = VarSet
Trigger1 = Time = 0 || Command = "waza1_middle"
V = 14
Value = IFelse(Time=0, 0, 2)

[State 1002]
Type = ChangeAnim
Trigger1 = Anim = 1000 && AnimElem = 3
Value = 1002
[State 1002]
Type = ChangeAnim
Trigger1 = Time = 0 || (Anim=1002&&Time=26&&Var(14)=0)
Value = 1000
Elem = IFelse(PrevStateNo=1003||Anim=1002, 4, 1)

[State 1002]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1002]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1002]
Type = HitDef
Trigger1 = Time = 5
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -76
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1002]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1002]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1002]
Type = HitDef
Trigger1 = Time > 5 && AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = L
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1002]
Type = HitDef
Trigger1 = Time > 5 && AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = L
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)

[State 1002]
Type = ChangeState
Trigger1 = (Anim=1000&&AnimTime=0) || (Time=26&&Var(14)=2)
Value = IFelse((Anim=1000&&AnimTime=0), 0, 1003)
Ctrl = IFelse((Anim=1000&&AnimTime=0), 1, 0)

[State 1002]
Type = PlaySnd
Trigger1 = AnimElem = 2 &&Time > 14
Value = 10, 1
Channel = 1

[StateDef 1003];百烈脚中 中
Type = U
MoveType = A
Physics = N
SprPriority = 2

[State 1003]
Type = VelSet
Trigger1 = Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1003]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 1002
Value = 1002
Elem = AnimElemNo(0)

[State 1003]
Type = PlaySnd
Trigger1 = AnimElem = 2
Value = 10, 1
Channel = 1

[State 1003]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1003]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1003]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1003]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1003]
Type = HitDef
Trigger1 = AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = L
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)
[State 1003]
Type = HitDef
Trigger1 = AnimElem = 7 && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
AnimType = Light
HitFlag = MA
GuardFlag = L
Damage = 196 - Var(10)*21, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(182-Var(10)*21)&&Random<500)

[State 1003]
Type = ChangeState
Trigger1 = TimeMod = 12,6 && Var(14) != 2
Value = IFelse(Var(14)=1, 1001, IFelse(Var(14)=3, 1005, 1002))

[State 1003]
Type = VarSet
Trigger1 = Command = "a" || Command = "b" || Command = "c" || TimeMod = 12,6
V = 14
Value = IFelse(Command="a", 1, IFelse(Command="b", 2, IFelse(Command="c", 3, 0)))

[StateDef 1004];百烈脚 強
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1004]
Type = VelSet
Trigger1 = Anim = 1003 && Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1004]
Type = VarSet
Trigger1 = Time = 0 || Command = "waza1_hard"
V = 14
Value = IFelse(Time=0, 0, 3)

[State 1004]
Type = ChangeAnim
Trigger1 = Anim = 1000 && AnimElem = 3
Value = 1003
[State 1004]
Type = ChangeAnim
Trigger1 = Time = 0 || (Anim=1003&&Time=15&&Var(14)=0)
Value = 1000
Elem = IFelse(PrevStateNo=1005||Anim=1003, 4, 1)

[State 1004]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1004]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1004]
Type = HitDef
Trigger1 = Time = 4
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - Var(10)*56, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -76
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -12*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(217-Var(10)*56)&&Random<500)
[State 1004]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - Var(10)*56, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -12*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(217-Var(10)*56)&&Random<500)
[State 1004]
Type = HitDef
Trigger1 = Time > 5 && (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - Var(10)*56, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -12*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(217-Var(10)*56)&&Random<500)

[State 1004]
Type = ChangeState
Trigger1 = (Anim=1000&&AnimTime=0) || (Time=15&&Var(14)=3)
Value = IFelse((Anim=1000&&AnimTime=0), 0, 1005)
Ctrl = IFelse((Anim=1000&&AnimTime=0), 1, 0)

[State 1004]
Type = PlaySnd
Trigger1 = AnimElem = 2 &&Time > 7
Value = 10, 1
Channel = 1

[StateDef 1005];百烈脚中 強
Type = U
MoveType = A
Physics = N
SprPriority = 2

[State 1005]
Type = VelSet
Trigger1 = Var(12) = -2
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1005]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 1004
Value = 1003
Elem = AnimElemNo(0)

[State 1005]
Type = PlaySnd
Trigger1 = AnimElem = 2
Value = 10, 1
Channel = 1

[State 1005]
Type = VarSet
Trigger1 = Time = 0 || MoveHit
V = 15
Value = IFelse(Time=0||(Var(15)&&MoveContact), 0, 1)
[State 1005]
Type = MoveHitReset
Trigger1 = MoveHit

[State 1005]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && !Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - Var(10)*56, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
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
Guard.Velocity = -12*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(217-Var(10)*56)&&Random<500)
[State 1005]
Type = HitDef
Trigger1 = (AnimTime=0||AnimElem=3||AnimElem=5||(AnimElem=7&&EnemyNear,StateNo!=[120,199])) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199]) && Var(15)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 231 - Var(10)*56, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, IFelse(AnimElemNo(0)=1, -76, IFelse(AnimElemNo(0)=7, -32, -48))
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Guard.Velocity = -12*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
Kill = 1 - (P2Life>(217-Var(10)*56)&&Random<500)

[State 1005]
Type = ChangeState
Trigger1 = TimeMod = 8,4 && Var(14) != 3
Value = IFelse(Var(14)=1, 1001, IFelse(Var(14)=2, 1003, 1004))

[State 1005]
Type = VarSet
Trigger1 = Command = "a" || Command = "b" || Command = "c" || TimeMod = 8,4
V = 14
Value = IFelse(Command="a", 1, IFelse(Command="b", 2, IFelse(Command="c", 3, 0)))

[StateDef 1100];スピニングバードキック 弱
Type = U
MoveType = A
Physics = N
Anim = 1100
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1100]
Type = NotHitBy
Trigger1 = AnimElem = 8,<2
Value = SCA

[State 1100]
Type = StateTypeSet
Trigger1 = AnimElem = 8
Value = A
[State 1100]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 34
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2), 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1100]
Type = VelAdd
Trigger1 = AnimElem = 8,>0 && AnimElem = 15,<0
Y = .27
[State 1100]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 34,<0 && Vel Y > 0
Y = 0

[State 1100]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1100]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=33,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1100]
Type = HitDef
Trigger1 = (AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199])
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 189 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>(175-Var(10)*35)&&Random<500)

[State 1100]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1101];スピニングバードキック 中
Type = U
MoveType = A
Physics = N
Anim = 1101
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1101]
Type = NotHitBy
Trigger1 = AnimElem = 8,<2
Value = SCA

[State 1101]
Type = StateTypeSet
Trigger1 = AnimElem = 8
Value = A
[State 1101]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 42
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2), 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 8,>0 && AnimElem = 15,<0
Y = .27
[State 1101]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 42,<0 && Vel Y > 0
Y = 0

[State 1101]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1101]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=41,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1101]
Type = HitDef
Trigger1 = (AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35||AnimElem=39||AnimElem=43) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199])
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 196 - Var(10)*35, 49 - Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>(182-Var(10)*35)&&Random<500)

[State 1101]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1102];スピニングバードキック 強
Type = U
MoveType = A
Physics = N
Anim = 1102
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1102]
Type = NotHitBy
Trigger1 = AnimElem = 8,<2
Value = SCA

[State 1102]
Type = StateTypeSet
Trigger1 = AnimElem = 8
Value = A
[State 1102]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 66
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2), 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1102]
Type = VelAdd
Trigger1 = AnimElem = 8,>0 && AnimElem = 15,<0
Y = .27
[State 1102]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 66,<0 && Vel Y > 0
Y = 0

[State 1102]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1102]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=65,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1102]
Type = HitDef
TriggerAll = EnemyNear,MoveType != H || EnemyNear,StateNo = [120,199]
Trigger1 = AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35
Trigger2 = AnimElem=39||AnimElem=43||AnimElem=47||AnimElem=51||AnimElem=55||AnimElem=59||AnimElem=63||AnimElem=67
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 210 - Var(10)*35, 49 - Var(10)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>(196-Var(10)*35)&&Random<500)

[State 1102]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1103];スピニングバードキック 着地
Type = S
MoveType = A
Physics = N
Anim = 1103
Ctrl = 0
VelSet = 0, 0

[State 1103]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1103]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 1103]
Type = Turn
Trigger1 = Time = 0

[State 1103]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 1104];空中スピニングバードキック 弱
Type = A
MoveType = A
Physics = N
Anim = 1100
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1104]
Type = ChangeAnim
Trigger1 = AnimElem = 4
Value = 1100
Elem = 8

[State 1104]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 34
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), 0, 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1104]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 34,<0 && Vel Y > 0
Y = 0

[State 1104]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1104]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=33,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1104]
Type = HitDef
Trigger1 = (AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199])
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 154, 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>140&&Random<500)

[State 1104]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 1103

[StateDef 1105];空中スピニングバードキック 中
Type = A
MoveType = A
Physics = N
Anim = 1100
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1105]
Type = ChangeAnim
Trigger1 = AnimElem = 4
Value = 1101
Elem = 8

[State 1105]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 42
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), 0, 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1105]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 42,<0 && Vel Y > 0
Y = 0

[State 1105]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1105]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=41,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1105]
Type = HitDef
Trigger1 = (AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35||AnimElem=39||AnimElem=43) && (EnemyNear,MoveType!=H||EnemyNear,StateNo=[120,199])
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 161, 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>147&&Random<500)

[State 1105]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 1103

[StateDef 1106];空中スピニングバードキック 強
Type = A
MoveType = A
Physics = N
Anim = 1100
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1106]
Type = ChangeAnim
Trigger1 = AnimElem = 4
Value = 1102
Elem = 8

[State 1106]
Type = VelSet
Trigger1 = AnimElem = 8 || AnimElem = 66
X = (3.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) * Const(Size.XScale)
Y = IFelse((AnimElem=8,0), 0, 4+IFelse(Var(7)>=0,Var(7)*2,Var(7)/2))
[State 1106]
Type = VelSet
Trigger1 = AnimElem = 10,>0 && AnimElem = 66,<0 && Vel Y > 0
Y = 0

[State 1106]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 4
Channel = 1
[State 1106]
Type = PlaySnd
Trigger1 = AnimElem=14,>0&&AnimElem=65,<=0 && TimeMod = 8,0
Value = 0, 7
Channel = 2

[State 1106]
Type = HitDef
TriggerAll = EnemyNear,MoveType != H || EnemyNear,StateNo = [120,199]
Trigger1 = AnimElem=11||AnimElem=15||AnimElem=19||AnimElem=23||AnimElem=27||AnimElem=31||AnimElem=35
Trigger2 = AnimElem=39||AnimElem=43||AnimElem=47||AnimElem=51||AnimElem=55||AnimElem=59||AnimElem=63||AnimElem=67
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 178, 42
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -36+Floor(P2Dist X)/2, -68
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-9+(P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5+(P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = IFelse(P2Dist X>0, 1, -1)
Kill = 1 - (P2Life>164&&Random<500)

[State 1106]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 1103

[StateDef 1200];気功動拳 弱
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SorPriority = 2

[State 1200]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1200]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 5
Channel = 1

[State 1200]
Type = Explod
Trigger1 = AnimElem = 3
Anim = 1205 + (Var(12)=-1)
Pos = -28, 0
PosType = P1
SprPriority = 3
RemoveOnGetHit = 1
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 1200]
Type = Helper
Trigger1 = AnimElem = 4,2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1208

[State 1200]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (3+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 84, 14
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
Kill = 1 - (P2Life>70&&Random<500)
[State 1200]
Type = Projectile
Trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (3+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 84, 14
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
Kill = 1 - (P2Life>70&&Random<500)

[State 1200]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1201];気功拳 中
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SorPriority = 2

[State 1201]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1201]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 5
Channel = 1

[State 1201]
Type = Explod
Trigger1 = AnimElem = 3
Anim = 1205 + (Var(12)=-1)
Pos = -28, 0
PosType = P1
SprPriority = 3
RemoveOnGetHit = 1
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 1201]
Type = Helper
Trigger1 = AnimElem = 4, 2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1208

[State 1201]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (4+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 112, 21
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
Kill = 1 - (P2Life>98&&Random<500)
[State 1201]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (4+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 112, 21
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
Kill = 1 - (P2Life>98&&Random<500)

[State 1201]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1202];気功拳 強
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SorPriority = 2

[State 1202]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1202]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 5
Channel = 1

[State 1202]
Type = Explod
Trigger1 = AnimElem = 3
Anim = 1205 + (Var(12)=-1)
Pos = -28, 0
PosType = P1
SprPriority = 3
RemoveOnGetHit = 1
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 1202]
Type = Helper
Trigger1 = AnimElem = 4,2
Name = "Guard_HANTEI"
ID = 1000
Pos = 40, 0
PosType = P1
StateNo = 1208

[State 1202]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo != [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (5+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = MA
Damage = 112, 28
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
Kill = 1 - (P2Life>98&&Random<500)
[State 1202]
Type = Projectile
trigger1 = AnimElem = 4,2 && EnemyNear,StateNo = [5020,5099]
ProjAnim = 1201 + (Var(12)=-1)*2
ProjHitAnim = 1202 + (Var(12)=-1)*2
ProjID = 1
OffSet = 0, 0
Velocity = (5+IFelse(Var(11)>=0,Var(11)*2,Var(11)/2))*Const(Size.XScale)
ProjPriority = 1
ProjScale = Const(Size.XScale), 1
Attr = S, SP
GuardFlag = M
HitFlag = M
Damage = 112, 28
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
Kill = 1 - (P2Life>98&&Random<500)

[State 1202]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0 + (StateType=A)*50
Ctrl = 1 - (StateType=A)

[StateDef 1208];飛び道具 CPUに防御させ易くするヘルパー
Type = S
MoveType = A
Physics = N
Ctrl = 0
Anim = 99

[State 1208]
Type = VelSet
trigger1 = Time = 0
X=(IFelse(Parent,StateNo=1200,3,IFelse(Parent,StateNo=1201,4,5))+IFelse(Parent,Var(11)>=0,Parent,Var(11)*2,Parent,Var(11)/2))*Const(Size.XScale)

[State 1208]
Type = DestroySelf
Trigger1 = FrontEdgeDist < -50 || Parent,ProjContact0 = 1, 1 || Parent,ProjCancelTime(0) = 1
