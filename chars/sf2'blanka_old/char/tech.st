[StateDef 1000];エレクトリックサンダー 弱
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1000]
Type = VarSet
Trigger1 = AnimTime = 0
V = 17
Value = IFelse(Var(17)=0, 1, 0)

[State 1000]
Type = ChangeAnim
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || AnimTime = 0
Value = 1000 +Var(17)

[State 1000]
Type = VarSet
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || ((Time>50||PrevStateNo=[1000,1099])&&AnimElem=2,1) || Command="x"||Command="y"||Command="z"
V = 14
Value = IFelse(Command="x", 1, IFelse(Command="y", 2, IFelse(Command="z", 3, 0)))

[State 1000]
Type = Helper
Trigger1 = Time = 0
Pos = 20, 0
PosType = P1
StateNo = 1004

[State 1000]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 0
Channel = 6
Loop = 1

[State 1000]
Type = HitDef
Trigger1 = (P2BodyDist X<(40*Const(Size.XScale))&&Random<250&&Time=0) || (!MoveContact&&Time=1) || AnimElem=2||AnimElem=3||AnimElem=4||AnimElem=5||AnimElem=6||AnimTime=0
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 196 -Var(10)*35, 49 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 0
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -38
HitSound = S1, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
P2StateNo = 1003

[State 1000]
Type = ChangeState
Trigger1 = (Time>50||PrevStateNo=[1000,1099]) && AnimElem = 2 && Var(14) != 1
Value = IFelse(Var(14)=0,0+(StateType=A)*50,999+Var(14))
Ctrl = 1 -Var(14)

[StateDef 1001];エレクトリックサンダー 中
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1001]
Type = VarSet
Trigger1 = AnimTime = 0
V = 17
Value = IFelse(Var(17)=0, 1, 0)

[State 1001]
Type = ChangeAnim
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || AnimTime = 0
Value = 1002 +Var(17)

[State 1001]
Type = VarSet
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || ((Time>50||PrevStateNo=[1000,1099])&&AnimElem=2,1) || Command="x"||Command="y"||Command="z"
V = 14
Value = IFelse(Command="x", 1, IFelse(Command="y", 2, IFelse(Command="z", 3, 0)))

[State 1001]
Type = Helper
Trigger1 = Time = 0
Pos = 20, 0
PosType = P1
StateNo = 1004

[State 1001]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 0
Channel = 6
Loop = 1

[State 1001]
Type = HitDef
Trigger1 = Time=1||AnimElem=2||AnimElem=3||AnimElem=4||AnimElem=5||AnimElem=6||AnimTime=0
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 217 -Var(10)*35, 49 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 0
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -38
HitSound = S1, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
P2StateNo = 1003

[State 1001]
Type = ChangeState
Trigger1 = (Time>50||PrevStateNo=[1000,1099]) && AnimElem = 2 && Var(14) != 2
Value = IFelse(Var(14)=0,0+(StateType=A)*50,999+Var(14))
Ctrl = 1 -Var(14)

[StateDef 1002];エレクトリックサンダー 強
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
SprPriority = 2

[State 1002]
Type = VarSet
Trigger1 = AnimTime = 0
V = 17
Value = IFelse(Var(17)=0, 1, 0)

[State 1002]
Type = ChangeAnim
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || AnimTime = 0
Value = 1004 +Var(17)

[State 1002]
Type = VarSet
Trigger1 = (Time=0&&PrevStateNo!=[1000,1099]) || ((Time>50||PrevStateNo=[1000,1099])&&AnimElem=2,1) || Command="x"||Command="y"||Command="z"
V = 14
Value = IFelse(Command="x", 1, IFelse(Command="y", 2, IFelse(Command="z", 3, 0)))

[State 1002]
Type = Helper
Trigger1 = Time = 0
Pos = 20, 0
PosType = P1
StateNo = 1004

[State 1002]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 0
Channel = 6
Loop = 1

[State 1002]
Type = HitDef
Trigger1 = Time=1||AnimElem=2||AnimElem=3||AnimElem=4||AnimElem=5||AnimElem=6||AnimTime=0
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 238 -Var(10)*35, 63 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 0
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+TeamSide + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -38
HitSound = S1, 1
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 99
Ground.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = (-2 +(P2Dist X<0)*4)*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1
P2StateNo = 1003

[State 1002]
Type = ChangeState
Trigger1 = (Time>50||PrevStateNo=[1000,1099]) && AnimElem = 2 && Var(14) != 3
Value = IFelse(Var(14)=0,0+(StateType=A)*50,999+Var(14))
Ctrl = 1 -Var(14)

[StateDef 1003];電撃喰らい
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 1003]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1003]
Type = ChangeAnim
Trigger1 = Time = 0 && AuthorName = "MASA" && SelfAnimExist(5410)
IgnoreHitPause = 1
Value = 5410
[State 1003]
Type = ChangeAnim
TriggerAll = Time = 0
Trigger1=Name="Anakaris By Third"||Name="Balrog by M.M.R."||Name="blanka"||Name="Cammy"||Name="ChunLi"||Name="Dan Hibiki"||Name="Demitri(DS)"||Name="Guy"||Name="E.HONDA"||Name="Juni"
Trigger2=Name="Sakura Kasugano"||Name="Ken by M.M.R."||Name="Lilith"||Name="Nash"||Name="Ryu"||Name="Gouki by M.M.R."||Name="Sagat"||Name="adon"||Name="Sodom with Samurai Sword"||Name="Zangief"
IgnoreHitPause = 1
Value = 9010 -(Name="Anakaris By Third")*3469 -(Name="E.HONDA"||Name="Lilith")*5490
[State 1003]
Type = ChangeAnim
Trigger1 = Time = 0 && (Name="Donovan"||Name="Hsien-ko"||Name="Jedah"||Name="Chun Li"||Name="Pyron(DS)"||Name="Rikuo"||Name="Zabel"||Name="Zero-Akuma")
IgnoreHitPause = 1
Value = 7696
[State 1003]
Type = ChangeAnim
Trigger1 = Time = 0 && (Name="Super-8"||Name="Gaits")
IgnoreHitPause = 1
Value = 5300
[State 1003]
Type = ChangeAnim
Trigger1 = Anim!=5410&&Anim!=9010&&Anim!=7696&&Anim!=5300
IgnoreHitPause = 1
Value = 5000

[State 1003]
Type = ChangeAnim
Trigger1 = (Name="ローウェ"||Name="ボーナスくん") && AnimElem = 21
Value = 5410

[State 1003]
Type = Explod
Trigger1 = Time = 0 && Name = "Donovan" && !Var(1)
Anim = 7801
ID = 7801
Pos = 0, 0
PosType = P1
SprPriority = -2
BindTime = -1
RemoveTime = -1
[State 1003]
Type = RemoveExplod
Trigger1 = Vel Y > 0 &&  Pos Y >= 0
ID = 7801

[State 1003]
Type = PalFx
Trigger1 = Anim = 5000 && TimeMod = 10,4
IgnoreHitPause = 1
Time = 5
Add = 0,0,0
Mul = 0,0,0

[State 1003]
Type = PosAdd
Trigger1 = Time = 60 && PrevStateNo != 505
Y = -16
[State 1003]
Type = HitVelSet
Trigger1 = Time = 62 && PrevStateNo != 505
Persistent = 0
X = 1
Y = 1
[State 1003]
Type = VelAdd
Trigger1 = Time > 62 || PrevStateNo = 505
Y = GetHitVar(YAccel)

[State 1003]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 1003]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 0
Value = 5100

[StateDef 1004];電撃喰らいヘルパー予約
Type = A
MoveType = I
Physics = N
Anim = 99

[State 1004]
Type = ChangeState
Trigger1 = (Parent,MoveHit||Parent,MoveType=H) && P2MoveType = H && EnemyNear,Anim = 5000
Value = 1005

[State 1004]
Type = DestroySelf
Trigger1 = Parent,MoveType != H && Parent,StateNo != [1000,1002]

[StateDef 1005];電撃喰らいヘルパー
Type = A
MoveType = I
Physics = N
Anim = 99

[State 1005]
Type = Turn
Trigger1 = ((Facing=1&&EnemyNear,Facing!=1)||(Facing!=1&&EnemyNear,Facing=1)) && Time = 1 && PrevStateNo != 1106

[State 1005]
Type = VarSet
Trigger1 = Time = 0
FV = 0
Value = 1.0 +((EnemyNear,Const(Size.Ground.Front)+EnemyNear,Const(Size.Ground.Back))-35.0)/40.0
;Value = ((EnemyNear,Const(Size.Ground.Front)+EnemyNear,Const(Size.Ground.Back))-35)/70
[State 1005]
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = 1.0 -((EnemyNear,Const(Size.Head.Pos.Y)+80.0))/60.0
;Value = IFelse((EnemyNear,Const(Size.Head.Pos.Y)+80)<-15, -15, (EnemyNear,Const(Size.Head.Pos.Y)+80))/26

[State 1005]
Type = RemoveExplod
Trigger1 = (P2StateNo != [505,1003]) && NumExplod(1)
ID = 1
[State 1005]
Type = Explod
Trigger1 = !NumExplod(1) && P2StateNo=1003
Anim = 1006
ID = 1
Pos = 0, 0
PosType = P2
BindTime = -1
SprPriority = -2
RemoveTime = -1
RemoveOnGetHit = 1
Scale = FVar(0), FVar(1)

[State 1005]
Type = PosAdd
Trigger1 = 1
X = P2Dist X
Y = P2Dist Y

[State 1005]
Type = DestroySelf
Trigger1 = !NumExplod(1)

[StateDef 1100];ローリングアタック 弱
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (6+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), 0
Anim = 1100
SorPriority = 2

[State 1100]
Type = VelSet
Trigger1 = 1
Y = 0
[State 1100]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 1100]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimElem = 9
Value = 0, 8
Channel = 1

[State 1100]
Type = HitDef
Trigger1 = (Time=1&&!Var(10)) || (((Time=0&&Random<500)||(Time=1&&!MoveContact)) && Var(10))
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 161 +Floor((Random%28)/10) -Var(10)*28, 35 +(Random<250)*7 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1100]
Type = ChangeState
Trigger1 = Time = 25 || MoveContact || FrontEdgeDist < 4 || P2BodyDist X < -10
Value = 1103 +(MoveContact) -(StateType=A&&!MoveContact)*1053

[StateDef 1101];ローリングアタック 中
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (8+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), 0
Anim = 1101
SorPriority = 2

[State 1101]
Type = VelSet
Trigger1 = 1
Y = 0
[State 1101]
Type = PlayerPush
Trigger1 = 1
Value = 0


[State 1101]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimElem = 9
Value = 0, 8
Channel = 1

[State 1101]
Type = HitDef
Trigger1 = (Time=1&&!Var(10)) || (((Time=0&&Random<500)||(Time=1&&!MoveContact)) && Var(10))
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 168 +Floor((Random%28)/10) -Var(10)*28, 42 +(Random<250)*7 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1101]
Type = ChangeState
Trigger1 = Time = 25 || MoveContact || FrontEdgeDist < 4 || P2BodyDist X < -10
Value = 1103 +(MoveContact) -(StateType=A&&!MoveContact)*1053

[StateDef 1102];ローリングアタック 強
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (10+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), 0
Anim = 1102
SorPriority = 2

[State 1102]
Type = VelSet
Trigger1 = 1
Y = 0
[State 1102]
Type = PlayerPush
Trigger1 = 1
Value = 0


[State 1102]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimTime = 0
Value = 0, 8
Channel = 1
[State 1102]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0

[State 1102]
Type = HitDef
Trigger1 = (Time=1&&!Var(10)) || (((Time=0&&Random<500)||(Time=1&&!MoveContact)) && Var(10))
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 182 +Floor((Random%28)/10) -Var(10)*28, 42 +(Random<250)*7 -Var(10)*14
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1102]
Type = ChangeState
Trigger1 = Time = 25 || MoveContact || FrontEdgeDist < 4 || P2BodyDist X < -10
Value = 1103 +(MoveContact) -(StateType=A&&!MoveContact)*1053

[StateDef 1103];ローリングアタック 着地
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0, 0
Anim = 47

[State 1103]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 1103]
Type = ChangeState
Trigger1 = ((Time=6||P2Dist X<0)&&PrevStateNo=[1100,1104]) || (Time=6+(PrevStateNo=1201)+(PrevStateNo=1202)*2&&PrevStateNo=[1200,1202])
Value = 0
Ctrl = 1

[StateDef 1104];ローリングアタック ヒット後
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (-2-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), -9-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)

[State 1104]
Type = PlaySnd
Trigger1 = (AnimElem=9&&PrevStateNo=[1100,1101]) || (AnimTime=0&&PrevStateNo=1102)
Value = 0, 8
Channel = 1

[State 1104]
Type = VelAdd
Trigger1 = 1
Y = .46

[State 1104]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1200];バーチカルローリング 弱
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (8+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), -8-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
Anim = 1100
SorPriority = 2

[State 1201]
Type = VelSet
Trigger1 = Vel X <= 0
X = 0
[State 1200]
Type = VelAdd
Trigger1 = Vel X > 0
X = -.5*Const(Size.XScale)
[State 1200]
Type = VelAdd
Trigger1 = 1
Y = .38

[State 1200]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimElem = 9
Value = 0, 8
Channel = 1

[State 1200]
Type = HitDef
Trigger1 = (Time=0&&Random<500) || (Time=1&&!MoveContact)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 98 +(Random<250)*7, 21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1200]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1201];バーチカルローリング 中
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (9+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), -9-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
Anim = 1101
SorPriority = 2

[State 1201]
Type = VelSet
Trigger1 = Vel X <= 0
X = 0
[State 1201]
Type = VelAdd
Trigger1 = Vel X > 0
X = -.5*Const(Size.XScale)
[State 1201]
Type = VelAdd
Trigger1 = 1
Y = .38

[State 1201]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimElem = 9
Value = 0, 8
Channel = 1

[State 1201]
Type = HitDef
Trigger1 = (Time=0&&Random<500) || (Time=1&&!MoveContact)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 105 +Floor((Random%28)/10), 28 +(Random<500)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1201]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1202];バーチカルローリング 強
Type = A
MoveType = A
Physics = N
Ctrl = 0
VelSet = (10+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), -10-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
Anim = 1102
SorPriority = 2

[State 1202]
Type = VelSet
Trigger1 = Vel X <= 0
X = 0
[State 1202]
Type = VelAdd
Trigger1 = Vel X > 0
X = -.5*Const(Size.XScale)
[State 1202]
Type = VelAdd
Trigger1 = 1
Y = .38

[State 1202]
Type = PlaySnd
Trigger1 = AnimElem = 1 || AnimTime = 0
Value = 0, 8
Channel = 1

[State 1202]
Type = HitDef
Trigger1 = (Time=0&&Random<500) || (Time=1&&!MoveContact)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 119 +Floor((Random%28)/10), 28 +(Random<500)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Air.Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1202]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103