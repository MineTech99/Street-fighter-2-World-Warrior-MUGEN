[StateDef 500];背負い投げ
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
P1Facing = IFelse(Command = "holdback", 1, -1)
P2Facing = 1

[State 500]
Type = ChangeState
Trigger1 = Time = 1
Value = IFelse(P2BodyDist X<(45*Const(Size.XScale)), 221, 220)

[StateDef 501];投げ中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 500

[State 501]
Type = Turn
Trigger1 = AnimTime = 0

[State 501]
Type = Width
Trigger1 = AnimElem = 5
Value = 0, Floor(120*Const(Size.XScale))

[State 501]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2 || AnimElem = 3
ID = 1
Pos = IFelse(Time=0,34,IFelse(AnimElem=2,0,49,0))*Const(Size.XScale), IFelse(Time=0,-1,IFelse(AnimElem=2,0,-99,-83))
[State 501]
Type = TargetBind
Trigger1 =  AnimElem = 4 || AnimElem = 5 || AnimElem = 5,6
ID = 1
Pos = IFelse(AnimElem=4,0,-35,IFelse(AnimElem=5,0,-66,-121))*Const(Size.XScale), IFelse(AnimElem=4,0,-65,IFelse(AnimElem=5,0,-66,-10))

[State 501]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 3

[State 501]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 502];投げられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 502]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = IFelse(Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン", 501, 502)

[State 502]
Type = ScreenBound
Trigger1 = AnimElem = 6,<0
Value = 0

[State 502]
Type = ChangeState
Trigger1 = AnimElem = 6, 3
Value = 503

[StateDef 503];投げられる相手開放
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
Trigger1 = ((Vel Y > 0 &&  Pos Y >= 15) || (Life <= Floor(266/(Const(Data.Defence)/100)))) && PrevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(266/(Const(Data.Defence)/100))), -1000, -266)

[State 503]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 503]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

[StateDef 504];背負い投げ 中パンチ時
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
P1Facing = IFelse(Command = "holdback", 1, -1)
P2Facing = 1

[State 504]
Type = ChangeState
Trigger1 = Time = 1
Value = IFelse(P2BodyDist X>(34*Const(Size.XScale)), 210, 211)

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
Trigger1 = Time = 0
Value = -266

[State 505]
Type = ChangeState
Trigger1 = Time = 12 || (Time = 4 && (Var(10)&&Name="SSF2Xリュウ"))
Value = PrevStateNo

[StateDef 510];巴投げ or 地獄車
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0

[State 510]
Type = HitDef
Trigger1 = Time = 0
Attr = S, NT
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
P1StateNo = 511 +(Name="SF2'ケン")*10
P2StateNo = 512 +(Name="SF2'ケン")*10
P1Facing = IFelse(Command = "holdback", 1, -1)
P2Facing = 1

[State 510]
Type = ChangeState
Trigger1 = Time = 1
Value = IFelse(P2BodyDist X>(34*Const(Size.XScale)), 240, 241)

[StateDef 511];巴投げ中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 510

[State 511]
Type = Turn
Trigger1 = AnimTime = 0

[State 511]
Type = Width
Trigger1 = AnimElem = 5
Value = 0, Floor(120*Const(Size.XScale))

[State 511]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2 || AnimElem = 3
ID = 1
Pos = IFelse(Time=0,34,IFelse(AnimElem=2,0,24,-80))*Const(Size.XScale), IFelse(Time=0,-1,IFelse(AnimElem=2,0,-83,-71))
[State 511]
Type = TargetBind
Trigger1 =  AnimElem = 4 || AnimElem = 4,4 || AnimElem = 4,6
ID = 1
Pos = IFelse(AnimElem=4,0,-111,IFelse(AnimElem=5,0,-114,-123))*Const(Size.XScale), IFelse(AnimElem=4,0,-39,IFelse(AnimElem=4,4,-50,1))

[State 511]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 3

[State 511]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 512];巴投げられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 512]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511

[State 512]
Type = ScreenBound
Trigger1 = AnimElem = 6,<0
Value = 0

[State 512]
Type = ChangeState
Trigger1 = AnimElem = 6, 3
Value = 513

[StateDef 513];巴投げられる相手開放
Type = A
MoveType = H
Physics = N

[State 503]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 513]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 513]
Type = LifeAdd
Trigger1 = ((Vel Y > 0 &&  Pos Y >= 15) || (Life <= Floor(266/(Const(Data.Defence)/100)))) && PRevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(266/(Const(Data.Defence)/100))), -1000, -266)

[State 513]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 513]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

[StateDef 514];巴投げ or 地獄車 強キック
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0

[State 514]
Type = HitDef
Trigger1 = Time = 0
Attr = S, NT
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
P1StateNo = 511 +(Name="SF2'ケン")*10
P2StateNo = 512 +(Name="SF2'ケン")*10
P1Facing = IFelse(Command = "holdback", 1, -1)
P2Facing = 1

[State 514]
Type = ChangeState
Trigger1 = Time = 1
Value = IFelse(P2BodyDist X<(45*Const(Size.XScale)), 251, 250)

[StateDef 521];地獄車中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 510

[State 521]
Type = Turn
Trigger1 = AnimTime = 0

[State 521]
Type = Width
Trigger1 = AnimElem = 8,<7
Value = 0, Floor(IFelse(AnimElem=8,<0,30,IFelse(AnimElem=8,<4,80,IFelse(AnimElem=8,<6,100,120)))*Const(Size.XScale))

[State 521]
Type = VelSet
Trigger1 = AnimElem = 3,2
X = -3.5*Const(Size.XScale)
Y = -2
[State 521]
Type = VelAdd
Trigger1 = AnimElem = 3,>2 && AnimElem = 8,<4
Y = .13
[State 521]
Type = VelSet
Trigger1 = AnimElem = 8,8
X = 0
[State 521]
Type = VelSet
Trigger1 = AnimElem = 8,4
Y = 0
[State 521]
Type = PosSet
Trigger1 = AnimElem = 8,4
Y = 0

[State 521]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2
ID = 1
Pos = IFelse(Time=0,34,24)*Const(Size.XScale), IFelse(Time=0,-1,-83)
[State 521]
Type = TargetBind
Trigger1 =  AnimElem = 3,>=0 && AnimElem = 7,<0
ID = 1
Pos = IFelse(AnimElemNo(0)=3,-9,IFelse(AnimElemNo(0)=4,-22,IFelse(AnimElemNo(0)=5,5,20)))*Const(Size.XScale), IFelse(AnimElemNo(0)=3,-62,IFelse(AnimElemNo(0)=4,-25,IFelse(AnimElemNo(0)=5,-18,-50)))
[State 521]
Type = TargetBind
Trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 8,4 || AnimElem = 8,6
ID = 1
Pos = IFelse(AnimElem=7,0,-80,IFelse(AnimElem=8,0,-111,IFelse(AnimElem=8,4,-114,-123)))*Const(Size.XScale), IFelse(AnimElem=7,0,-71,IFelse(AnimElem=8,0,-39,IFelse(AnimElem=8,4,-50,1)))

[State 521]
Type = PlaySnd
Trigger1 = Time = 0
Value = 1, 3

[State 521]
Type = EnvShake
Trigger1 = AnimElem = 8,4
Freq = 135
Ampl = -3
Time = 64
Phase = 0

[State 521]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 522];地獄車られる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 522]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511 + (Name="SF2'ケン"||Name="SF2'リュウ"||Name="SSF2Xリュウ")

[State 522]
Type = ScreenBound
Trigger1 = AnimElem = 10,<0
Value = 0

[State 522]
Type = ChangeState
Trigger1 = AnimElem = 10, 3
Value = 523

[StateDef 523];地獄車られる相手開放
Type = A
MoveType = H
Physics = N

[State 523]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 523]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 523]
Type = LifeAdd
Trigger1 = ((Vel Y > 0 &&  Pos Y >= 15) || (Life <= Floor(266/(Const(Data.Defence)/100)))) && PrevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(266/(Const(Data.Defence)/100))), -1000, -266)

[State 523]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 523]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

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
Elem = IFelse((Var(2)=[0,21])||(Var(2)=[86,107])||Var(2)>172, 1, IFelse((Var(2)=[22,39])||(Var(2)=[66,85])||(Var(2)=[108,125])||(Var(2)=[152,171]), 2, 3))

[State 4001]
Type = ChangeState
Trigger1 = (Var(0)=0&&Var(2)>=90) || (Var(0)=1&&Var(2)>=180)
Value = 0
Ctrl = 1
