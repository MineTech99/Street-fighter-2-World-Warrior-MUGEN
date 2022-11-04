[StateDef 500];ワイルドファング
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0

[State 520]
Type = HitDef
Trigger1 = Time = 0
Attr = S, NT
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -2*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 501
P2StateNo = 502 +Var(10)*4
P1Facing = 1
P2Facing = 1

[State 500]
Type = ChangeState
Trigger1 = Time = 1
Value = 220

[StateDef 501];ワイルドファング中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 500

[State 501]
Type = ChangeAnim
Trigger1 = Var(16) > 24 && ((AnimElem=4,[6,20])||AnimElem=6,[6,20])
Value = 500
Elem = 5 +(AnimElemNo(0)=6)*2

[State 501]
Type = VarSet
Trigger1 = Time = 0
V = 15
Value = 213
[State 501]
Type = VarAdd
Trigger1 = 1
V = 15
Value = -1
[State 501]
Type = VarAdd
Trigger1 = Target(1),Command="a"||Target(1),Command="b"||Target(1),Command="c"||Target(1),Command="x"||Target(1),Command="y"||Target(1),Command="z"||Target(1),Command="fwd"||Target(1),Command="back"||Target(1),Command="up"||Target(1),Command="down"
V = 15
Value = -3
[State 501]
Type = VarAdd
Trigger1 = (Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z") && Var(15) > 10
Persistent = 4
V = 15
Value = 1

[State 501]
Type = VarSet
Trigger1 = Time = 0 || AnimElem = 5 || AnimElem = 7
V = 16
Value = 0
[State 501]
Type = VarAdd
Trigger1 = Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z"
V = 16
Value = 6
[State 501]
Type = VarAdd
Trigger1 = Var(16) > 0
V = 16
Value = -1

[State 501]
Type = PosSet
Trigger1 = 1
X = (Target(1),Pos X-(88*Const(Size.XScale))*Facing)

[State 501]
Type = PosAdd
Trigger1 = AnimElem = 2 || AnimElem = 3
Y = (Target(1),Const(Size.Head.Pos.Y) + 75) / 2

[State 501]
Type = PlaySnd
Trigger1 = AnimElem = 4,2 || AnimElem = 6,2
Value = 0, 9

[State 501]
Type = Explod
Trigger1 = AnimElem = 4,2 || AnimElem = 6,2
Anim = 503
Pos = Floor(122*Const(Size.XScale)), 38
PosType = P1
SprPriority = 9
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 501]
Type = TargetState
Trigger1 = AnimElem = 7,>1 && Var(15) < 0 || !Target(1),Alive
ID = 1
Value = 504
[State 501]
Type = ChangeState
Trigger1 = AnimElem = 7,>1 && Var(15) < 0 || !Target(1),Alive
Value = 508

[State 501]
Type = TargetState
Trigger1 = AnimElem = 4 || AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimTime = 0
ID = 1
Value = 502 +(AnimElem=4||AnimElem=6||AnimTime=0) +Var(10)*4

[State 501]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Value = 500
Elem = 6

[StateDef 502];ワイルドファンガれる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 502]
Type = Width
Trigger1 = Time = 0 && PrevStateNo != 503
Value = 90, 0 

[State 502]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 501 +(Name="SF2'ブランカ")
Elem = 1 +(PrevStateNo=502)*4 +(PrevStateNo=503)*6

[StateDef 503];ワイルドファンガれる相手2
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 503]
Type = LifeAdd
Trigger1 = AnimElem = 4,1 || AnimElem = 6,1
Value = -182 + (AnimElem=6,1)*154

[State 503]
Type = ChangeAnim2
Trigger1 = Time = 0 && AnimElem = 4,>0
Value = 501 +(Name="SF2'ブランカ")
Elem = 6

[StateDef 504];ワイルドファンガれる相手開放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 504]
Type = PosSet
Trigger1 = Time = 0 && PrevStateNo != 505
Y = -16

[State 504]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 504]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 504]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 504]
Type = ChangeAnim
Trigger1 = (Time = 0 && PrevStateNo != 505) || (Time = 13 && Anim != 5040)
Value = IFelse(Time=0, 5000 + (SelfAnimExist(5035))*35, 5040)

[State 504]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 =  Name="SSF2Xリュウ"||(Name="SSF2Xダルシム"&&!Var(10))||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'ガイル"||Name="SF2'サガット"||Name="SF2'春麗"||Name="SF2'ザンギエフ"
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 504]
Type = SelfState
Trigger1 = (Time = 0 && !Alive) || (Vel Y > 0 && Pos Y >= 0)
Value = 52 + (Time=0)*4948

[StateDef 506];ワイルドファンガれる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 506]
Type = Width
Trigger1 = Time = 0 && PrevStateNo != 507
Value = 90, 0 

[State 506]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 501 +(Name="SF2'ブランカ")
Elem = 1 +(PrevStateNo=506)*4 +(PrevStateNo=507)*6

[StateDef 507];ワイルドファンガれる相手2 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 507]
Type = LifeAdd
Trigger1 = AnimElem = 4,1 || AnimElem = 6,1
Value = -182 + (AnimElem=6,1)*154

[State 507]
Type = ChangeAnim2
Trigger1 = Time = 0 && AnimElem = 4,>0
Value = 501 +(Name="SF2'ブランカ")
Elem = 6

[StateDef 506];ワイルドファンガれる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 506]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 506]
Type = LifeAdd
Trigger1 = AnimElem = 5 || AnimElem = 7,1
Value = -140 + (AnimElem=7,1)*112

[State 506]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 501 +(Name="SF2'ブランカ")
Elem = 1 +(PrevStateNo=[502,503])*5; +(PrevStateNo=503)*6

[StateDef 507];ワイルドファンガれる相手2 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 507]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 507]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 501 +(Name="SF2'ブランカ")
Elem = 7

[StateDef 505];相手降下中の画面端引っ掛かり
Type = A
MoveType = H
Physics = N

[State 505]
Type = VelSet
Trigger1 = Time = 0
Y = 0

[State 505]
Type = PosFreeze
Trigger1 = 1

[State 505]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 505]
Type = ChangeAnim
Trigger1 = 1
Value = Anim
Elem = AnimElemNo(0)

[State 505]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0+(Name="SSF2Xリュウ"&&Var(10)*2), 11+(Name="SSF2Xリュウ"&&Var(10))

[State 505]
Type = Explod
Trigger1 = Time = 0 && Name = "SSF2Xリュウ" && Var(10)
Anim = 96-TeamSide
Pos = 0, 0
PosType = P1
SprPriority = -10
OwnPal = 1
Facing = -1
RemoveOnGetHit = 1
Scale = Const(Size.XScale), 1

[State 505]
Type = ChangeState
Trigger1 = Time = 12 || (Time = 4 && (Var(10)&&Name="SSF2Xリュウ"))
Value = PrevStateNo

[StateDef 508];ワイルドファング 終了
Type = A
MoveType = H
Physics = N
VelSet = (-1.5-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale), -5-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
Anim = 504

[State 508]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 508]
Type = VelAdd
Trigger1 = 1
Y = .48

[State 508]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52

[StateDef 4000];気絶直前 倒れ
Type = A
MoveType = H
Physics = N
SprPriority = -1

[State 4000]
Type = ChangeAnim
Trigger1 = (Time = 0 && PrevStateNo != 5042) || (Anim=5030&&HitShakeOver)
IgnoreHitPause = 1
Value = IFelse(Time=0, 5030, 5050)

[State 4000]
Type = Turn
Trigger1 = Time = 0 && EnemyNear,Facing = Facing
IgnoreHitPause = 1

[State 4000]
Type = VelSet
Trigger1 = Time = 0 && PrevStateNo != 5042
X = 0
Y = 0

[State 4000]
Type = NotHitBy
Trigger1 = 1
IgnoreHitPause = 1
Value = SCA

[State 4000]
Type = HitVelSet
Trigger1 = HitShakeOver && PrevStateNo != 5042 && GetHitVar(YVel) < 0
Persistent = 0
X = 1
Y = 1
[State 4000]
Type = VelSet
Trigger1 = HitShakeOver && PrevStateNo != 5042 && GetHitVar(YVel) >= 0
Persistent = 0
X = -2*Const(Size.XScale)
Y = -6
[State 4000]
Type = VelAdd
Trigger1 = HitShakeOver || PrevStateNo = 5042
Y = IFelse(GetHitVar(YAccel)>0, GetHitVar(YAccel), .25)

[State 4000]
Type = ChangeState
Trigger1 = Vel Y > 0 &&  Pos Y >= 0
Value = 5100

[StateDef 4001];気絶中
Type = S
MoveType = I
Physics = S
Anim = 5300

[State 4001]
Type = VarSet
Trigger1 = Time = 0
V = 1
Value = -400
[State 4001]
Type = VarSet
Trigger1 = Time = 0
V = 2
Value = 0
[State 4001]
Type = VarAdd
Trigger1 = 1
V = 2
Value = 1
[State 4001]
Type = VarAdd
Trigger1 = Command = "up" || Command = "down" || Command = "fwd" || Command = "back" || Command = "a" || Command = "b" || Command = "c" || Command = "x" || Command = "y" || Command = "z"
V = 2
Value = 4

[State 4001]
Type = ChangeAnim
Trigger1 = 1
Value = 5300
Elem = IFelse((Var(2)=[0,15])||(Var(2)=[128,143]), 1, IFelse((Var(2)=[16,31])||(Var(2)=[112,127])||(Var(2)=[144,159]), 2, IFelse((Var(2)=[32,47])||(Var(2)=[96,111])||(Var(2)=[160,175]), 3, IFelse((Var(2)=[64,79])||Var(2)>191, 5, 4))))

[State 4001]
Type = ChangeState
Trigger1 = (Var(0)=0&&Var(2)>=90) || (Var(0)=1&&Var(2)>=200)
Value = 0
Ctrl = 1