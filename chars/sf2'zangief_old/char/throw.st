[StateDef 500];アイアンクロー
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
Ground.Velocity = -2*Const(Size.XScale), -6
Fall = 1
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 501
P2StateNo = 502
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 500]
Type = ChangeState
Trigger1 = Time = 1
Value = 210

[StateDef 501];アイアンクロー中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 500

[State 501]
Type = ChangeAnim
Trigger1 = Var(16) > 24 && AnimElem = 4,[6,30]
Value = 500
Elem = 5

[State 501]
Type = Width
Trigger1 = Time = 0
Value = Floor(120*Const(Size.XScale)), 0

[State 501]
Type = VarSet
Trigger1 = Time = 0
V = 15
Value = 228
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
Trigger1 = Time = 0 || AnimElem = 5,1
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
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2,>=0
ID = 1
Pos = Floor(52 + (AnimElemNo(0)=2||AnimElemNo(0)=4)*27 + (AnimElemNo(0)=3||AnimElemNo(0)=5)*21)*Const(Size.XScale), 0 - (AnimElemNo(0)=2||AnimElemNo(0)=4)*90 - (AnimElemNo(0)=3||AnimElemNo(0)=5)*87

[State 501]
Type = TargetBind
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Pos = Floor(112)*Const(Size.XScale), 13

[State 501]
Type = PlaySnd
Trigger1 = AnimElem = 3 || AnimElem = 5
Value = 10, 0

[State 501]
Type = Explod
Trigger1 = AnimElem = 3 || AnimElem = 5
Anim = 52+TeamSide
Pos = Floor(86*Const(Size.XScale)), -85
PosType = P1
SprPriority = 10
Facing = -1
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 501]
Type = TargetState
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Value = 504
[State 501]
Type = ChangeState
Trigger1 = Var(15) < 0 || !Target(1),Alive
Value = 0
Ctrl = 1

[State 501]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Value = 500
Elem = 4

[State 501]
Type = TargetState
Trigger1 = AnimElem = 4 || AnimElem = 5
ID = 1
Value = 502 + (AnimElem=5) + (AnimElem=4&&Var(10)=1)*4

[StateDef 502];アイアンクローられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 502]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 502]
Type = LifeAdd
Trigger1 = AnimElem = 3
Value = -154

[State 502]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 502
Elem = 1 + (PrevStateNo=[502,503])*3

[StateDef 503];アイアンクローられる相手2
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 503]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 503]
Type = LifeAdd
Trigger1 = Time = 0
Value = -28

[State 503]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 502
Elem = 5

[StateDef 504];アイアンクローられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

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
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 504]
Type = SelfState
Trigger1 = (Time = 0 && !Alive) || (Vel Y > 0 && Pos Y >= 0)
Value = 52 + (Time=0)*4948

[StateDef 506];アイアンクローられる相手 TURBO
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
Trigger1 = AnimElem = 3
Value = -112

[State 506]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 502
Elem = 1 + (PrevStateNo=[502,503])*3

[StateDef 505];相手降下中の画面端引っ掛かり
Type = A
MoveType = H
Physics = N

[State 505]
Type = PosFreeze
Trigger1 = 1

[State 505]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 505]
Type = ChangeAnim
Trigger1 = PrevStateNo = 504 || PrevStateNo = 524 || PrevStateNo = 564
Value = Anim
Elem = AnimElemNo(0)

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
Trigger1 = Time = 0 && (PrevStateNo=583||PrevStateNo=585)
Value = -266 + (PrevStateNo=585)*42

[State 505]
Type = ChangeState
Trigger1 = Time = 12 || (Time = 4 && (Var(10)&&Name="SSF2Xリュウ"))
Value = PrevStateNo

[StateDef 510];パイルドライバー
Type = S
MoveType = A
Physics = N
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
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 511
P2StateNo = 512
P1Facing = 1
P2Facing = 1

[State 510]
Type = ChangeState
Trigger1 = Time = 1
Value = 210

[StateDef 511];パイルドライバー中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 510

[State 511]
Type = Width
Trigger1 = AnimElem = 5,>=0
Value = Floor((45 -(AnimElem=6,>=0)*15)*Const(Size.XScale)), 15

[State 511]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo = 511
Value = 513

[State 511]
Type = TargetBind
Trigger1 = (Time=0||AnimElem=2||AnimElem=3||AnimElem=4) && PrevStateNo != 511
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0,50,65)))*Const(Size.XScale), IFelse(AnimElem=4,0,-64,0)
[State 511]
Type = TargetBind
Trigger1 = AnimElem = 5,>=0 || (PrevStateNo=511&&Time=0)
ID = 1
Pos = IFelse(AnimElemNo(0)=5,28,26)*Const(Size.XScale), IFelse(AnimElemNo(0)=5,-75,-4)

[State 511]
Type = TargetState
Trigger1 = Time = 0 && PrevStateNo = 511
Value = 513 + (Var(10)=1)

[State 511]
Type = VelSet
Trigger1 = AnimElem = 5 || (AnimElem=2&&PrevStateNo=511)
X = IFelse(AnimElem=5&&Command="holdfwd", 2+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2), -2-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))
Y = (-5 + (PrevStateNo=511)*3.1)-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 511]
Type = VelAdd
Trigger1 = AnimElem = 5,>0 || (AnimElem=2,>0&&PrevStateNo=511)
Y = .24

[State 511]
Type = StateTypeSet
Trigger1 = AnimElem = 5 || (PrevStateNo=511&&AnimElem=2)
Value = A
[State 511]
Type = StateTypeSet
Trigger1 = PrevStateNo = 511 && Time = 0
Value = S

[State 511]
Type = VelSet
Trigger1 = Time = 0 && PrevStateNo = 511
X = 0
Y = 0
[State 511]
Type = PosSet
Trigger1 = Time = 0 && PrevStateNo = 511
Y = 0

[State 511]
Type = Explod
Trigger1 = Time = 1 && PrevStateNo = 511
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(14*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
Facing = 1
SprPriority = 2

[State 511]
Type = EnvShake
Trigger1 = Time = 1 && PrevStateNo = 511
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 511]
Type = PlaySnd
Trigger1 = Time = 1
Value = 0 + (PrevStateNo!=511)*10, 11 - (PrevStateNo!=511)*11

[State 511]
Type = ChangeState
Trigger1 = (AnimElem = 5,>0 || (PrevStateNo=511&&AnimElem=2,>0)) && Pos Y >= 0
Value = 0 + (PrevStateNo!=511)*511
Ctrl = 1 - (PrevStateNo!=511)

[StateDef 512];パイルドライバーられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 512]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511 + (Name="SF2'ザンギエフ")

[State 512]
Type = Turn
Trigger1 = AnimElem = 6

[State 512]
Type = ScreenBound
Trigger1 = 1
Value = 0

[StateDef 513];パイルドライバられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 513]
Type = HitVelSet
Trigger1 = Time = 15 && PrevStateNo != 505
X = 1
Y = 1

[State 513]
Type = VelAdd
Trigger1 = Time > 15 || PrevStateNo = 505
Y = .25

[State 513]
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 505
Value = -266

[State 513]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 513]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 514];パイルドライバられる相手解放 TURBO
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 514]
Type = HitVelSet
Trigger1 = Time = 15 && PrevStateNo != 505
X = 1
Y = 1

[State 514]
Type = VelAdd
Trigger1 = Time > 15 || PrevStateNo = 505
Y = .25

[State 514]
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 505
Value = -224

[State 514]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 514]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 520];かみつき
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
Ground.Velocity = -2*Const(Size.XScale), -6
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 521
P2StateNo = 522
P1Facing = IFelse(Command="holdback", -1, 1)
P2Facing = 1

[State 520]
Type = ChangeState
Trigger1 = Time = 1
Value = 220

[StateDef 521];かみつき中
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 520

[State 521]
Type = ChangeAnim
Trigger1 = Var(16) > 24 && AnimElem = 6,[6,40]
Value = 520
Elem = 7

[State 521]
Type = Width
Trigger1 = Time = 0
Value = Floor(120*Const(Size.XScale)), 0

[State 521]
Type = VarSet
Trigger1 = Time = 0
V = 15
Value = 213
[State 521]
Type = VarAdd
Trigger1 = 1
V = 15
Value = -1
[State 521]
Type = VarAdd
Trigger1 = Target(1),Command="a"||Target(1),Command="b"||Target(1),Command="c"||Target(1),Command="x"||Target(1),Command="y"||Target(1),Command="z"||Target(1),Command="fwd"||Target(1),Command="back"||Target(1),Command="up"||Target(1),Command="down"
V = 15
Value = -3
[State 521]
Type = VarAdd
Trigger1 = (Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z") && Var(15) > 10
Persistent = 4
V = 15
Value = 1

[State 521]
Type = VarSet
Trigger1 = Time = 0 || AnimElem = 7,1
V = 16
Value = 0
[State 521]
Type = VarAdd
Trigger1 = Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z"
V = 16
Value = 6
[State 521]
Type = VarAdd
Trigger1 = Var(16) > 0
V = 16
Value = -1

[State 521]
Type = TargetBind
Trigger1 = Time = 0 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4
ID = 1
Pos = IFelse(AnimElem=2,0,46,50)*Const(Size.XScale), 0
[State 521]
Type = TargetBind
Trigger1 =  AnimElem = 5 || AnimElem = 6,>=0
ID = 1
Pos = Floor(34 + (AnimElemNo(0)=6)*5)*Const(Size.XScale), -82 + (AnimElemNo(0)=6)*-2

[State 521]
Type = TargetBind
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Pos = Floor(112*Const(Size.XScale)), 13

[State 521]
Type = PlaySnd
Trigger1 = AnimElem = 5,2 || AnimElem = 7,2
Value = 0, 5

[State 521]
Type = Explod
Trigger1 = AnimElem = 5,2 || AnimElem = 7,2
Anim = 54+TeamSide
Pos = Floor(34*Const(Size.XScale)), -84
PosType = P1
SprPriority = 10
Facing = -1
OwnPal = 1
Scale = Const(Size.XScale), 1
[State 521]
Type = Explod
Trigger1 = AnimElem = 5,2 || AnimElem = 7,2
Anim = 523
Pos = Floor(71*Const(Size.XScale)), 38
PosType = P1
SprPriority = 9
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 521]
Type = TargetState
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Value = 504
[State 521]
Type = ChangeState
Trigger1 = Var(15) < 0 || !Target(1),Alive
Value = 0
Ctrl = 1

[State 521]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Value = 520
Elem = 6

[State 521]
Type = TargetState
Trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7
ID = 1
Value = 522 + (AnimElem=6) + (AnimElemNo(0)!=6&&Var(10)=1)*3

[StateDef 522];かみつかれる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 522]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 522]
Type = LifeAdd
Trigger1 = AnimElem = 5 || AnimElem = 7,1
Value = -154 + (AnimElem=7,1)*126

[State 522]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 522
Elem = 1 +(PrevStateNo=522)*4 +(PrevStateNo=523)*6

[StateDef 523];かみつかれる相手2
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 523]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 523]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 522
Elem = 6

[StateDef 524];かみつかれる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 524]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 524]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 524]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 524]
Type = ChangeAnim
Trigger1 = (Time = 0 && PrevStateNo != 505) || (Time = 13 && Anim != 5040)
Value = IFelse(Time=0, 5000 + (SelfAnimExist(5035))*35, 5040)

[State 524]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 524]
Type = SelfState
Trigger1 = (Time = 0 && !Alive) || (Vel Y > 0 && Pos Y >= 0)
Value = 52 + (Time=0)*4948

[StateDef 525];かみつかれる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 525]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 525]
Type = LifeAdd
Trigger1 = AnimElem = 5 || AnimElem = 7,1
Value = -112 + (AnimElem=7,1)*84

[State 525]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 522
Elem = 1 +(PrevStateNo=522)*4 +(PrevStateNo=523)*6

[StateDef 526];かみつかれる相手2 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 526]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 526]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 522
Elem = 6

[StateDef 530];ブレーンバスター
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 530]
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
Ground.Velocity = 3*Const(Size.XScale), -2
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 531
P2StateNo = 532 + (Var(10)=1)*2
P1Facing = -1 + (Command="holdback")*2
P2Facing = 1

[State 530]
Type = ChangeState
Trigger1 = Time = 1
Value = 220

[StateDef 531];ブレーンバスター中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 530

[State 531]
Type = Width
Trigger1 = AnimElem = 8
Value = 0, Floor(120*Const(Size.XScale))

[State 531]
Type = TargetBind
Trigger1 = Time = 0 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0,50,65)))*Const(Size.XScale), IFelse(AnimElem=4,0,-64,0)
[State 531]
Type = TargetBind
Trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 8,1
ID = 1
Pos = IFelse(AnimElem=5,0,55,IFelse(AnimElem=6,0,-16,IFelse(AnimElem=7,0,-64,IFelse(AnimElem=8,0,-135,-137))))*Const(Size.XScale), IFelse(AnimElem=5,0,-89,IFelse(AnimElem=6,0,-124,IFelse(AnimElem=7,0,-98,IFelse(AnimElem=8,0,0,8))))

[State 531]
Type = Explod
Trigger1 = AnimElem = 8,2
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(-132*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
Facing = -1
SprPriority = 2

[State 531]
Type = EnvShake
Trigger1 = AnimElem = 8,2
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 531]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimElem = 8,2
Value = 0 + (AnimElem=2)*10, 11 - (AnimElem=2)*10

[State 531]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 532];ブレーンバスターられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 532]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 531 + (Name="SF2'ザンギエフ")

[State 532]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 532]
Type = LifeAdd
Trigger1 = AnimElem = 8
Value = -266

[State 532]
Type = ChangeState
Trigger1 = AnimElem = 8,12
Value = 533

[StateDef 533];ブレーンバスターられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 533]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 533]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 533]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 533]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 534];ブレーンバスターられる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 534]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 531 + (Name="SF2'ザンギエフ")

[State 534]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 534]
Type = LifeAdd
Trigger1 = AnimElem = 8
Value = -224

[State 534]
Type = ChangeState
Trigger1 = AnimElem = 8,12
Value = 533

[StateDef 540];ジャーマンスープレックス
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 540]
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
Ground.Velocity = -3*Const(Size.XScale), -2
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 541
P2StateNo = 542 + (Var(10)=1)*2
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 540]
Type = ChangeState
Trigger1 = Time = 1
Value = 240 +(P2BodyDist X<(40*Const(Size.XScale)))

[StateDef 541];ジャーマンスープレックス中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 540

[State 541]
Type = Width
Trigger1 = AnimElem = 8
Value = Floor(120*Const(Size.XScale)), 0

[State 541]
Type = TargetBind
Trigger1 = Time = 0 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0,50,-41)))*Const(Size.XScale), IFelse(AnimElem=4,0,-1,0)
[State 541]
Type = TargetBind
Trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8
ID = 1
Pos = IFelse(AnimElem=5,0,-54,IFelse(AnimElem=6,0,-11,IFelse(AnimElem=7,0,51,106)))*Const(Size.XScale), IFelse(AnimElem=5,0,-64,IFelse(AnimElem=6,0,-78,IFelse(AnimElem=7,0,-67,-4)))

[State 541]
Type = Explod
Trigger1 = AnimElem = 8,2
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(107*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
SprPriority = 2

[State 541]
Type = EnvShake
Trigger1 = AnimElem = 8,2
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 541]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimElem = 8,2
Value = 0 + (AnimElem=2)*10, 11 - (AnimElem=2)*10

[State 541]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 542];ジャーマンスープレックスられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 542]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 541

[State 542]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 542]
Type = LifeAdd
Trigger1 = AnimElem = 7
Value = -266

[State 542]
Type = ChangeState
Trigger1 = AnimElem = 7,12
Value = 543

[StateDef 543];ジャーマンスープレックスられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 543]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 543]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 543]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 543]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 544];ジャーマンスープレックスられる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 544]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 541

[State 544]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 544]
Type = LifeAdd
Trigger1 = AnimElem = 7
Value = -224

[State 544]
Type = ChangeState
Trigger1 = AnimElem = 7,12
Value = 543

[StateDef 550];サンダーファイヤーパワーボム
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 550]
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
Ground.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 551
P2StateNo = 552 + (Var(10)=1)*2
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 550]
Type = ChangeState
Trigger1 = Time = 1
Value = 250 +(P2BodyDist X<(40*Const(Size.XScale)))

[StateDef 551];サンダーファイヤーパワーボム中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 550

[State 551]
Type = Width
Trigger1 = AnimElem = 8
Value = Floor(120*Const(Size.XScale)), 0

[State 551]
Type = TargetBind
Trigger1 = Time = 0 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0,50,65)))*Const(Size.XScale), IFelse(AnimElem=4,0,-64,0)
[State 541]
Type = TargetBind
Trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8
ID = 1
Pos = IFelse(AnimElem=5,0,55,IFelse(AnimElem=6,0,5,IFelse(AnimElem=7,0,84,97)))*Const(Size.XScale), IFelse(AnimElem=5,0,-88,IFelse(AnimElem=6,0,-113,IFelse(AnimElem=7,0,-68,-7)))

[State 551]
Type = Explod
Trigger1 = AnimElem = 8,2
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(89*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
SprPriority = 2

[State 551]
Type = EnvShake
Trigger1 = AnimElem = 8,2
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 551]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimElem = 8,2
Value = 0 + (AnimElem=2)*10, 11 - (AnimElem=2)*10

[State 551]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 552];サンダーファイヤーパワーボマれる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 552]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 551

[State 552]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 552]
Type = LifeAdd
Trigger1 = AnimElem = 7
Value = -266

[State 552]
Type = ChangeState
Trigger1 = AnimElem = 7,15
Value = 553

[StateDef 553];サンダーファーイヤーパワーボマられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 553]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 553]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 553]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 553]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 554];サンダーファイヤーパワーボマれる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 554]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 551

[State 554]
Type = ScreenBound
Trigger1 = AnimElem = 7,<0
Value = 0

[State 554]
Type = LifeAdd
Trigger1 = AnimElem = 7
Value = -224

[State 554]
Type = ChangeState
Trigger1 = AnimElem = 7,15
Value = 553

[StateDef 560];ストマッククロー
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 560]
Type = HitDef
Trigger1 = Time = 0
Attr = C, NT
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -2*Const(Size.XScale), -6
Fall = 1
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 561
P2StateNo = 562
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 560]
Type = ChangeState
Trigger1 = Time = 1
Value = 310

[StateDef 561];ストマッククロー中
Type = C
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 560

[State 561]
Type = ChangeAnim
Trigger1 = Var(16) > 24 && AnimElem = 3,[6,40]
Value = 560
Elem = 4

[State 561]
Type = Width
Trigger1 = Time = 0
Value = Floor(120*Const(Size.XScale)), 0

[State 561]
Type = VarSet
Trigger1 = Time = 0
V = 15
Value = 245
[State 561]
Type = VarAdd
Trigger1 = 1
V = 15
Value = -1
[State 561]
Type = VarAdd
Trigger1 = Target(1),Command="a"||Target(1),Command="b"||Target(1),Command="c"||Target(1),Command="x"||Target(1),Command="y"||Target(1),Command="z"||Target(1),Command="fwd"||Target(1),Command="back"||Target(1),Command="up"||Target(1),Command="down"
V = 15
Value = -3
[State 561]
Type = VarAdd
Trigger1 = (Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z") && Var(15) > 10
Persistent = 4
V = 15
Value = 1

[State 561]
Type = VarSet
Trigger1 = Time = 0 || AnimElem = 4,1
V = 16
Value = 0
[State 561]
Type = VarAdd
Trigger1 = Command="fwd"||Command="back"||Command="up"||Command="down"||Command="a"||Command="b"||Command="c"||Command="x"||Command="y"||Command="z"
V = 16
Value = 6
[State 561]
Type = VarAdd
Trigger1 = Var(16) > 0
V = 16
Value = -1

[State 561]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2,>=0
ID = 1
Pos = Floor(79)*Const(Size.XScale), 0

[State 561]
Type = TargetBind
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Pos = Floor(112)*Const(Size.XScale), 13

[State 561]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimElem = 4
Value = 10, 1

[State 561]
Type = Explod
Trigger1 = AnimElem = 2 || AnimElem = 4
Anim = 52+TeamSide
Pos = Floor(75*Const(Size.XScale)), -73
PosType = P1
SprPriority = 10
Facing = -1
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 561]
Type = TargetState
Trigger1 = Var(15) < 0 || !Target(1),Alive
ID = 1
Value = 504
[State 561]
Type = ChangeState
Trigger1 = Var(15) < 0 || !Target(1),Alive
Value = 0
Ctrl = 1

[State 561]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Value = 560
Elem = 3

[State 561]
Type = TargetState
Trigger1 = AnimElem = 3 || AnimElem = 4
ID = 1
Value = 562 + (AnimElem=4) + (AnimElem=3&&Var(10)=1)*4

[StateDef 562];ストマッククローられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 562]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 562]
Type = LifeAdd
Trigger1 = AnimElem = 2
Value = -154

[State 562]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 561
Elem = 1 + (PrevStateNo=[562,563])*2

[StateDef 563];ストマッククローられる相手2
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 563]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 563]
Type = LifeAdd
Trigger1 = Time = 0
Value = -28

[State 563]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 561
Elem = 4

[StateDef 564];ストマッククローられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 564]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1
[State 564]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 564]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 564]
Type = ChangeAnim
Trigger1 = (Time = 0 && PrevStateNo != 505) || (Time = 13 && Anim != 5040)
Value = IFelse(Time=0, 5000 + (SelfAnimExist(5035))*35, 5040)

[State 564]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 564]
Type = SelfState
Trigger1 = (Time = 0 && !Alive) || (Vel Y > 0 && Pos Y >= 0)
Value = 52 + (Time=0)*4948

[StateDef 565];ストマッククロー 強パンチ
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 565]
Type = HitDef
Trigger1 = Time = 0
Attr = C, NT
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -2*Const(Size.XScale), -6
Fall = 1
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 561
P2StateNo = 562
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 565]
Type = ChangeState
Trigger1 = Time = 1
Value = 320

[StateDef 566];ストマッククローられる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 566]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 566]
Type = LifeAdd
Trigger1 = AnimElem = 2
Value = -112

[State 566]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 561
Elem = 1 + (PrevStateNo=[562,563])*2

[StateDef 570];デッドリードライブ
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 570]
Type = HitDef
Trigger1 = Time = 0
Attr = C, NT
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -3*Const(Size.XScale), -3
Fall = 1
Fall.Recover = 0
Fall,XVelocity = -1*Const(Size.XScale)
Fall.YVelocity = -3
YAccel = .25
ID = 1
P1StateNo = 571
P2StateNo = 572 + (Var(10)=1)*2
P1Facing = IFelse(Facing=1, IFelse(Command="holdback", -1, 1), IFelse(Command="holdfwd",1 ,-1))
P2Facing = IFelse(Facing=1, IFelse(Command="holdback", -1, -1), IFelse(Command="holdfwd",-1 ,-1))

[State 570]
Type = ChangeState
Trigger1 = Time = 1
Value = 310

[StateDef 571];デッドリードライブ中
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0
Anim = 570

[State 571]
Type = Width
Trigger1 = AnimElem = 3,6
Value = Floor(120*Const(Size.XScale)), 0

[State 571]
Type = TargetBind
Trigger1 = Time = 0 || AnimElem = 2 || AnimElem = 3
ID = 1
Pos = IFelse(Time=0,-65,IFelse(AnimElem=2,0,5,20))*Const(Size.XScale), IFelse(AnimElem=3,0,-1,IFelse(AnimElem=2,0,-86,0))
[State 571]
Type = TargetBind
Trigger1 = AnimElem = 3,6 || AnimElem = 3,7
ID = 1
Pos = IFelse(AnimElem=3,6,76,76)*Const(Size.XScale), IFelse(AnimElem=3,6,0,10)

[State 571]
Type = EnvShake
Trigger1 = AnimElem = 3,8
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 571]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0

[State 571]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 572];デッドリードライブられる相手
Type = C
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 572]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 571 + (Name="SF2'ザンギエフ")

[State 572]
Type = ScreenBound
Trigger1 = AnimElem = 5,<0
Value = 0

[State 572]
Type = LifeAdd
Trigger1 = AnimElem = 5
Value = -266

[State 572]
Type = ChangeState
Trigger1 = AnimElem = 5,2
Value = 573

[StateDef 573];デッドリードライブられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 573]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 573]
Type = VelAdd
Trigger1 = 1
Y = .2

[State 573]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 573]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

[StateDef 574];デッドリードライブられる相手 TURBO
Type = C
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 574]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 571 + (Name="SF2'ザンギエフ")

[State 574]
Type = ScreenBound
Trigger1 = AnimElem = 5,<0
Value = 0

[State 574]
Type = LifeAdd
Trigger1 = AnimElem = 5
Value = -224

[State 574]
Type = ChangeState
Trigger1 = AnimElem = 5,2
Value = 573

[StateDef 580];レッグスルー
Type = C
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 580]
Type = HitDef
Trigger1 = Time = 0
Attr = C, NT
HitFlag = M-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = 3*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 581
P2StateNo = 582 + (Var(10)=1)*2
P1Facing = 1 - (Command="holdback")*2
P2Facing = 1

[State 580]
Type = ChangeState
Trigger1 = Time = 1
Value = 320

[StateDef 581];レッグスルー中
Type = C
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0
Anim = 580

[State 581]
Type = Width
Trigger1 = AnimElem = 3
Value = 0, Floor(120*Const(Size.XScale))

[State 581]
Type = TargetBind
Trigger1 =  Time = 0 || AnimElem = 2 || AnimElem = 3 || AnimElem = 3,2
ID = 1
Pos = IFelse(Time=0,60,IFelse(AnimElem=2,0,52,IFelse(AnimElem=3,0,-80,-60)))*Const(Size.XScale), IFelse(Time=0,0,IFelse(AnimElem=2,0,-25,IFelse(AnimElem=3,0,-93,-70)))

[State 581]
Type = PlaySnd
Trigger1 = Time = 0
Value = 10, 0

[State 581]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0
Ctrl = 1

[StateDef 582];レッグスられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 582]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 581 + (Name="SF2'ザンギエフ")

[State 582]
Type = ScreenBound
Trigger1 = AnimElem = 4,<0
Value = 0

[State 582]
Type = ChangeState
Trigger1 = AnimElem = 4,2
Value = 583

[StateDef 583];レッグスられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 583]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 583]
Type = VelAdd
Trigger1 = 1
Y = .25

[State 583]
Type = LifeAdd
Trigger1 = ((Vel Y > 0 &&  Pos Y >= 0) || (Life <= Floor(266/(Const(Data.Defence)/100)))) && PrevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(266/(Const(Data.Defence)/100))), -1000, -266)

[State 583]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 583]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 0
Value = 5100

[StateDef 584];レッグスられる相手 TURBO
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 584]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 581 + (Name="SF2'ザンギエフ")

[State 584]
Type = ScreenBound
Trigger1 = AnimElem = 4,<0
Value = 0

[State 584]
Type = ChangeState
Trigger1 = AnimElem = 4,2
Value = 585

[StateDef 585];レッグスられる相手解放 TURBO
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 585]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 505
X = 1
Y = 1

[State 585]
Type = VelAdd
Trigger1 = 1
Y = .25

[State 585]
Type = LifeAdd
Trigger1 = ((Vel Y > 0 &&  Pos Y >= 0) || (Life <= Floor(224/(Const(Data.Defence)/100)))) && PrevStateNo != 505
Persistent = 0
Value = IFelse((Life<=Floor(224/(Const(Data.Defence)/100))), -1000, -224)

[State 585]
Type = ChangeState
TriggerAll = FrontEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 585]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 0
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
Elem = IFelse((Var(2)=[0,21])||(Var(2)=[96,117]),1,IFelse((Var(2)=[48,69])||Var(2)>144,3,IFelse((Var(2)=[70,95]),4,2)))

[State 4001]
Type = ChangeState
Trigger1 = (Var(0)=0&&Var(2)>=90) || (Var(0)=1&&Var(2)>=150)
Value = 0
Ctrl = 1

[StateDef 4100];スーパーアーマーもどき
Type = U
MoveType = H
Physics = N
Ctrl = 0

[State 4100]
Type = ChangeState
Trigger1 = !Alive && StateType != A
Value = 4101

[State 4100]
Type = ChangeAnim
Trigger1 = 1
Value = Anim
Elem = AnimElemNo(0)

[State 4100]
Type = PosFreeze
Trigger1 = 1

[State 4100]
Type = ChangeState
Trigger1 = Time >= GetHitVar(HitShakeTime) && Time > 0
Value = Var(26)
Ctrl = 1

[State 4100]
Type = ForceFeedback
Trigger1 = Time = 0
WaveForm = Square
Time = 3

[StateDef 4101];スーパーアーマーもどき ～ 死亡
Type = S
MoveType = H
Physics = N
Ctrl = 0

[State 4101]
Type = ChangeAnim
Trigger1 = Time = 0 || Time = 11 || Time = 24 || Time = 35 || Time = 48 || Time = 54 || Time = 60
Value = 5300 -(Time>40)*180
Elem = 1 +(Time=11||Time=54) +(Time=24||Time=48)*2 +(Time = 35)*3

[State 4101]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 4101]
Type = ChangeState
Trigger1 = Time = 66
Value = 5150