[StateDef 500];デッドリースルー
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 500]
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
Ground.Velocity = 3.5*Const(Size.XScale), -3
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 501
P2StateNo = 502
P1Facing = IFelse(Command="holdback", 1, -1)
P2Facing = 1

[State 500]
Type = ChangeState
Trigger1 = Time = 1
Value = 220

[StateDef 501];デッドリースルー中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 500

[State 501]
Type = Turn
Trigger1 = AnimElem = 7

[State 501]
Type = Width
Trigger1 = AnimElem = 5
Value = 0, Floor(120*Const(Size.XScale))

[State 501]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2 || AnimElem = 3
ID = 1
Pos = IFelse(Time=0,54,IFelse(AnimElem=2,0,43,55))*Const(Size.XScale), IFelse(AnimElem=3,0,-96,0)
[State 501]
Type = TargetBind
Trigger1 =  AnimElem = 4 || AnimElem = 5
ID = 1
Pos = IFelse(AnimElem=4,0,9,-90)*Const(Size.XScale), IFelse(AnimElem=4,0,-87,-21)

[State 501]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 502];デッドリースられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 502]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 501 +(Name="SF2'ベガ")

[State 502]
Type = Turn
Trigger1 = AnimElem = 3

[State 502]
Type = ScreenBound
Trigger1 = AnimElem = 5,<0
Value = 0

[State 502]
Type = ChangeState
Trigger1 = AnimElem = 5,3
Value = 503

[StateDef 503];デッドリースられる相手開放
Type = A
MoveType = H
Physics = N

[State 503]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 503]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 503]
Type = LifeAdd
Trigger1 = ((Vel Y>0&&Pos Y>=15) || (Life<=Floor(266/(Const(Data.Defence)/100)))) && PrevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(266/(Const(Data.Defence)/100))), -1000, -266)

[State 503]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 503]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

[StateDef 504];デッドリースルー 中パンチ時
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 504]
Type = HitDef
Trigger1 = Time = 0
Attr = S, NT
AnimType = Light
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = 3.5*Const(Size.XScale), -3
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 501
P2StateNo = 502
P1Facing = IFelse(Command="holdback", 1, -1)
P2Facing = 1

[State 504]
Type = ChangeState
Trigger1 = Time = 1
Value = 210

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
Type = AssertSpecial
Trigger1 = PrevStateNo = 1104
Flag = Invisible

[State 505]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0+(Var(10)&&Name="SSF2Xリュウ")*2, 11+(Var(10)&&Name="SSF2Xリュウ")

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
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 1104
Value = -266

[State 505]
Type = ChangeState
Trigger1 = Time = 12 || (Time = 4 && (Var(10)&&Name="SSF2Xリュウ"))
Value = PrevStateNo

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
Trigger1 = Var(2) < 136
Value = 5300
Elem = IFelse((Var(2)=[0,7])||(Var(2)=[32,39])||(Var(2)=[64,71])||(Var(2)=[96,103])||Var(2)>128, 1, IFelse((Var(2)=[16,23])||(Var(2)=[48,55])||(Var(2)=[80,87])||(Var(2)=[112,119]), 3, 2))
[State 4001]
Type = ChangeAnim
Trigger1 = Var(2) >135
Value = 5300
Elem = IFelse((Var(2)=[160,167])||(Var(2)=[192,199]), 1, IFelse((Var(2)=[144,151])||(Var(2)=[176,183])||Var(2)>209, 3, 2))

[State 4001]
Type = ChangeState
Trigger1 = (Var(0)=0&&Var(2)>=90) || (Var(0)=1&&Var(2)>=180)
Value = 0
Ctrl = 1