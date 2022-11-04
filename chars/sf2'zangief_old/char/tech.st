[StateDef 1000];ダブルラリアット
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
SorPriority = 2

[State 1000]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 1000

[State 1000]
Type = StateTypeSet
Trigger1 = StateType = C
Value = S

[State 1000]
Type = NotHitBy
Trigger1 = Var(10) = 2
Value = , NP,SP,HP

[State 1000]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1000]
Type = SprPriority
Trigger1 = AnimElem = 4 || AnimTime = 0
Value = -1 + (AnimTime=0)*3

[State 1000]
Type = VelSet
Trigger1 = 1
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1000]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 10, 1
Channel = 1
[State 1000]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimTime = 0
Value = 1, 0
Channel = 2

[State 1000]
Type = Explod
Trigger1 = Time = 1 || Time = 28 || Time = 57
Anim = 70 + (Var(12)=-1)*10
Pos = 0, 0
PosType = P1
SprPriority = 10
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 1000]
Type = HitDef
Trigger1 = (AnimElem=1&&Random<500) || (AnimElem=1,1&&!MoveContact) || AnimElem = 3 || AnimElem = 5
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 147 + (Var(10)=1)*28, 49 + (Var(10)=1)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -84
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Guard.Velocity = (-9 + (P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1000]
Type = ChangeState
Trigger1 = Time = 60
Value = 0 + (StateType=A)*50
Ctrl = (StateType!=A)

[StateDef 1100];スクリューパイルドライバー
Type = U
MoveType = A
Physics = N
Ctrl = 0
Anim = 1103

[State 1100]
Type = VelSet
Trigger1 = StateType = S
X = 0
Y = 0

[State 1100]
Type = VarSet
Trigger1 = 1
sysvar(0) = -1 + (Command="holdfwd")*2

[State 1100]
Type = HitDef
Trigger1 = Time = 0
Attr = S, ST
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
P1StateNo = 1101
P2StateNo = 1102
P1Facing = 1
P2Facing = 1
[State 1100]
Type = HitDef
Trigger1 = Time = 0 && (StateType=A||Var(10)=2)
Attr = A, ST
HitFlag = MA-
Priority = 0, Miss
Damage = 0
GetPower = 0
GivePower = 0
NumHits = 0
SparkNo = -1
HitSound = -1
AnimType = Light
Ground.Velocity = -1.5*Const(Size.XScale), -5
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
ID = 1
P1StateNo = 1101
P2StateNo = 1102
P1Facing = 1
P2Facing = 1

[State 1100]
Type = ChangeState
Trigger1 = Time = 1 && StateType != A
Value = IFelse(Command="holdx", 200+(StateType=S&&P2Dist X<(84*Const(Size.XScale)))+(StateType=C)*100, IFelse(Command="holdy", 210+(StateType=C)*100, 220+(StateType=C)*100))
[State 1100]
Type = ChangeState
Trigger1 = Time = 1 && StateType = A
Value = IFelse(Command="holdx", 400, IFelse(Command="holdy", 410+(Command="holdup"&&Vel X=0)*50, 420+(Vel X!=0)+(Command="holdup"&&Vel X=0)*41+(Command="holddown"&&Vel X!=0)*49))

[StateDef 1101];スクリューパイルドライバー中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100

[State 1101]
Type = Width
Trigger1 = AnimElemNo(0) = [5,6]
Value = Floor(50+(AnimElemNo(0)=6)*15), 15
[State 1101]
Type = Width
Trigger1 = AnimElem = 7,>=0
Value = Floor(0+(AnimElemNo(0)=7)*40-(AnimElemNo(0)=9)*28), Floor(15+(AnimElemNo(0)=9)*13)

[State 1101]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo = 1101
Value = 513

[State 1101]
Type = TargetBind
Trigger1 = (Time=0||AnimElem=2||AnimElem=3||AnimElem=4||AnimElemNo(0)=[5,6]) && PrevStateNo != 1101
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0||AnimElemNo(0)=5,50,65)))*Const(Size.XScale), IFelse(AnimElem=4,0||AnimElemNo(0)=6,-64,0)
[State 1101]
Type = TargetBind
Trigger1 = AnimElem = 7,>=0 || (PrevStateNo=1101&&Time=0)
ID = 1
Pos = IFelse(Time=0,26,IFelse(AnimElemNo(0)=7,40,IFelse(AnimElemNo(0)=8,0,IFelse(AnimElemNo(0)=9,-28,0))))*Const(Size.XScale), IFelse(Time=0,-4,IFelse(AnimElemNo(0)=7,-66,IFelse(AnimElemNo(0)=8,-60,IFelse(AnimElemNo(0)=9,-61,-60))))

[State 1101]
Type = TargetState
Trigger1 = Time = 0 && PrevStateNo = 1101
Value = 1103 + (Var(10)=1)

[State 1101]
Type = VelSet
Trigger1 = AnimElem = 5 || (AnimElem=2&&PrevStateNo=1101)
X = (IFelse(sysvar(0)=-1||PrevStateNo=1101, (-2+(AnimElem=5))-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2), 1+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)))
Y = (-6.7)-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 5,>0
Y = .16 + (Vel Y>=0||PrevStateNo=1101)*.28
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 2,>0 && PrevStateNo = 1101
Y = .34

[State 1101]
Type = StateTypeSet
Trigger1 = AnimElem = 5 || (PrevStateNo=1101&&AnimElem=2)
Value = A
[State 1101]
Type = StateTypeSet
Trigger1 = PrevStateNo = 1101 && Time = 0
Value = S

[State 1101]
Type = VelSet
Trigger1 = Time = 0 && PrevStateNo = 1101
X = 0
Y = 0
[State 1101]
Type = PosSet
Trigger1 = Time = 0 && PrevStateNo = 1101
Y = 0

[State 1101]
Type = Explod
Trigger1 = Time = 1 && PrevStateNo = 1101
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(14*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
Facing = 1
SprPriority = 2

[State 1101]
Type = EnvShake
Trigger1 = Time = 1 && PrevStateNo = 1101
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 1101]
Type = PlaySnd
Trigger1 = Time = 1
Value = 0 + (PrevStateNo!=1101)*10, 11 - (PrevStateNo!=1101)*10
Channel = 2
[State 1101]
Type = PlaySnd
Trigger1 = Vel Y > 4 && PrevStateNo != 1101
Persistent = 7
Value = 0, 9
Channel = 2

[State 1101]
Type = ChangeState
Trigger1 = (AnimElem = 5,>0 || (PrevStateNo=1101&&AnimElem=2,>0)) && Pos Y >= 0
Value = 0 + (PrevStateNo!=1101)*1101
Ctrl = 1 - (PrevStateNo!=1101)

[StateDef 1102];スクリューパイルドライバーられる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 1102]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 1101 + (Name="SF2'ザンギエフ")

[State 1102]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 1102]
Type = SprPriority
Trigger1 = AnimTime = 0 || AnimElem = 9
Value = -1 + (AnimElem=9)*3

[StateDef 1103];スクリューパイルドライバられる相手解放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 1103]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511
Elem = 6

[State 1103]
Type = HitVelSet
Trigger1 = Time = 15 && PrevStateNo != 505
X = 1
Y = 1

[State 1103]
Type = VelAdd
Trigger1 = Time > 15
Y = .25

[State 1103]
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 505
Value = -350

[State 1103]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 1103]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 1104];スクリューパイルドライバられる相手解放 TURBO
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 1104]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511
Elem = 6

[State 1104]
Type = HitVelSet
Trigger1 = Time = 15 && PrevStateNo != 505
X = 1
Y = 1

[State 1104]
Type = VelAdd
Trigger1 = Time > 15
Y = .25

[State 1104]
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 505
Value = -308

[State 1104]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"||Name="SF2'ブランカ"
Value = 505

[State 1104]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 1200];ハイスピードダブルラリアット
Type = U
MoveType = A
Physics = U
Ctrl = 0
VelSet = 0, 0
SorPriority = 2

[State 1200]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 1200

[State 1200]
Type = StateTypeSet
Trigger1 = StateType = C
Value = S

[State 1200]
Type = NotHitBy
Trigger1 = Var(10) = 2
Value = , NP,SP,HP

[State 1200]
Type = VelSet
Trigger1 = StateType = A
Y = 0

[State 1200]
Type = SprPriority
Trigger1 = AnimElem = 4 || AnimTime = 0
Value = -1 + (AnimTime=0)*3

[State 1200]
Type = VelSet
Trigger1 = 1
X = 0 + (Command="holdfwd")*1.3 - (Command="holdback")*1.3

[State 1200]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 10, 1
Channel = 1
[State 1200]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimTime = 0
Value = 1, 0
Channel = 2

[State 1200]
Type = Explod
Trigger1 = Time = 1 || Time = 23
Anim = 70 + (Var(12)=-1)*10
Pos = 0, 0
PosType = P1
SprPriority = 10
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 1200]
Type = HitDef
Trigger1 = (AnimElem=1&&Random<500) || (AnimElem=1,1&&!MoveContact) || AnimElem = 3 || AnimElem = 5
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 119, 28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -84
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Guard.Velocity = (-9 + (P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1200]
Type = ChangeState
Trigger1 = Time = 40
Value = 0 + (StateType=A)*50
Ctrl = (StateType!=A)

[StateDef 1300];阿修羅ハラショー 前 パンチ
Type = U
MoveType = I
Physics = N
Ctrl = 0
VelSet = 0, 0

[State 1300]
Type = AfterImage
Trigger1 = Time = 0
Time = 73
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50+(PalNo!=12)*75
PalContrast = 135,135,135+(PalNo!=12)*60
PalAdd = 30,30,30-(PalNo!=12)*50

[State 1300]
Type = PlaySnd
Trigger1 = Time = 15
Value = 10, 2

[State 1300]
Type = PosAdd
Trigger1 = Time = [1,15]
X = IFelse(Time=1||Time=3||Time=4||Time=6||Time=9||Time=11||Time=12||Time=14||Time=15, -2, 2)

[State 1300]
Type = VelSet
Trigger1 = Time = 15 || Time = 61
X = 11 - (Time=61)*11
[State 1300]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 35

[State 1300]
Type = PlayerPush
Trigger1 = 1
Value = 0
[State 1300]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1300]
Type = ChangeAnim
Trigger1 = 1
Value = 181
Elem = 1 + (Time>14)*2

[State 1300]
Type = ChangeState
Trigger1 = Time = 68 || FrontEdgeDist < 3
Value = 1304 - (StateType=A)*1254

[StateDef 1301];阿修羅ハラショー 後 パンチ
Type = U
MoveType = I
Physics = N
Ctrl = 0
VelSet = 0, 0

[State 1301]
Type = AfterImage
Trigger1 = Time = 0
Time = 73
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50+(PalNo!=12)*75
PalContrast = 135,135,135+(PalNo!=12)*60
PalAdd = 30,30,30-(PalNo!=12)*50

[State 1301]
Type = PlaySnd
Trigger1 = Time = 15
Value = 10, 2

[State 1301]
Type = PosAdd
Trigger1 = Time = [1,15]
X = IFelse(Time=1||Time=3||Time=4||Time=6||Time=9||Time=11||Time=12||Time=14||Time=15, -2, 2)

[State 1301]
Type = VelSet
Trigger1 = Time = 15 || Time = 61
X = -11 + (Time=61)*11
[State 1301]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 35

[State 1301]
Type = PlayerPush
Trigger1 = 1
Value = 0
[State 1301]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1301]
Type = ChangeAnim
Trigger1 = 1
Value = 181
Elem = 1 + (Time>14)*2

[State 1301]
Type = ChangeState
Trigger1 = Time = 68 || (BackEdgeDist<3&&Time>14)
Value = 1304 - (StateType=A)*1254

[StateDef 1302];阿修羅ハラショー 前 キック
Type = U
MoveType = I
Physics = N
Ctrl = 0
VelSet = 0, 0

[State 1302]
Type = AfterImage
Trigger1 = Time = 0
Time = 51
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50+(PalNo!=12)*75
PalContrast = 135,135,135+(PalNo!=12)*60
PalAdd = 30,30,30-(PalNo!=12)*50

[State 1302]
Type = PlaySnd
Trigger1 = Time = 15
Value = 10, 2

[State 1302]
Type = PosAdd
Trigger1 = Time = [1,15]
X = IFelse(Time=1||Time=3||Time=4||Time=6||Time=9||Time=11||Time=12||Time=14||Time=15, -2, 2)

[State 1302]
Type = VelSet
Trigger1 = Time = 15 || Time = 46
X = 7 - (Time=46)*7
[State 1302]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 35

[State 1302]
Type = PlayerPush
Trigger1 = 1
Value = 0
[State 1302]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1302]
Type = ChangeAnim
Trigger1 = 1
Value = 181
Elem = 1 + (Time>14)*2

[State 1302]
Type = ChangeState
Trigger1 = Time = 51 || FrontEdgeDist < 3
Value = 1304 - (StateType=A)*1254

[StateDef 1303];阿修羅ハラショー 後 キック
Type = U
MoveType = I
Physics = N
Ctrl = 0
VelSet = 0, 0

[State 1303]
Type = AfterImage
Trigger1 = Time = 0
Time = 51
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50+(PalNo!=12)*75
PalContrast = 135,135,135+(PalNo!=12)*60
PalAdd = 30,30,30-(PalNo!=12)*50

[State 1303]
Type = PlaySnd
Trigger1 = Time = 15
Value = 10, 2

[State 1303]
Type = PosAdd
Trigger1 = Time = [1,15]
X = IFelse(Time=1||Time=3||Time=4||Time=6||Time=9||Time=11||Time=12||Time=14||Time=15, -2, 2)

[State 1303]
Type = VelSet
Trigger1 = Time = 15 || Time = 46
X = -7 + (Time=46)*7
[State 1303]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 35

[State 1303]
Type = PlayerPush
Trigger1 = 1
Value = 0
[State 1303]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1303]
Type = ChangeAnim
Trigger1 = 1
Value = 181
Elem = 1 + (Time>14)*2

[State 1303]
Type = ChangeState
Trigger1 = Time = 51 || (BackEdgeDist<3&&Time>14)
Value = 1304 - (StateType=A)*1254

[StateDef 1304];阿修羅ハラショー 終了
Type = S
MoveType = I
Physics = S
Ctrl = 0
VelSet = 0, 0
Anim = 47

[State 1304]
Type = AfterImage
Trigger1 = Time = 0
Time = 0

[State 1304]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 1304]
Type = Turn
Trigger1 = Time = 0 && P2Dist X < 0

[State 1304]
Type = ChangeAnim
Trigger1 = 1
Value = 10

[State 1304]
Type = ChangeState
Trigger1 = Time = 9
Value = 0
Ctrl = 1

[StateDef 1400];瞬獄落
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 3
Anim = 1400

[State 1400]
Type = AfterImage
Trigger1 = Time = 0
Time = 60
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50+(PalNo!=12)*75
PalContrast = 135,135,135+(PalNo!=12)*60
PalAdd = 30,30,30-(PalNo!=12)*50

[State 1400]
Type = PlayerPush
Trigger1 = 1
Value = 0

[State 1400]
Type = HitDef
Trigger1 = Time = 10
Attr = S, ST
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
ID = 1
P1StateNo = 1401
P2StateNo = 1402
P1Facing = 1
P2Facing = 1

[State 1400]
Type = ChangeState
Trigger1 = Time = 60
Value = 1304

[StateDef 1401];瞬獄落中
Type = S
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0

[State 1401]
Type = AfterImage
Trigger1 = Time = 0
Time = 0

[State 1401]
Type = ChangeAnim
Trigger1 = Time < 27 && PrevStateNo != 1401
Value = 1100

[State 1401]
Type = EnvColor
Trigger1 = PrevStateNo != 1401 && Time = [22,180]
Value = 240, 240, 240

[State 1401]
Type = Explod
Trigger1 = (Time = 35 || Time = 42 || Time = 64 || Time = 75 || Time = 86) && PrevStateNo != 1401
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = 0, -40
Random = Floor(30*Const(Size.XScale)), 45
PosType = P1
OwnPal = 1
Facing = 1
OnTop = 1

[State 1401]
Type = PlaySnd
Trigger1 = (Time = 35 || Time = 42 || Time = 64 || Time = 75 || Time = 86) && PrevStateNo != 1401
Value = 0, 3

[State 1401]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo = 1401
Value = 513

[State 1401]
Type = TargetBind
Trigger1 = (Time=0||AnimElem=2||AnimElem=3||AnimElem=4||AnimElemNo(0)=[5,6]) && PrevStateNo != 1401
ID = 1
Pos = IFelse(Time=0,50,IFelse(AnimElem=2,0,46,IFelse(AnimElem=3,0||AnimElemNo(0)=5,50,65)))*Const(Size.XScale), IFelse(AnimElem=4,0||AnimElemNo(0)=6,-64,0)
[State 1401]
Type = TargetBind
Trigger1 = AnimElem = 7,>=0 || (PrevStateNo=1401&&Time=0)
ID = 1
Pos = IFelse(Time=0,26,IFelse(AnimElemNo(0)=7,40,IFelse(AnimElemNo(0)=8,0,IFelse(AnimElemNo(0)=9,-28,0))))*Const(Size.XScale), IFelse(Time=0,-4,IFelse(AnimElemNo(0)=7,-66,IFelse(AnimElemNo(0)=8,-60,IFelse(AnimElemNo(0)=9,-61,-60))))

[State 1401]
Type = TargetState
Trigger1 = Time = 0 && PrevStateNo = 1401
Value = 1403

[State 1401]
Type = VelSet
Trigger1 = AnimElem = 5 || (AnimElem=2&&PrevStateNo=1401)
X = 0 - (AnimElem=2)*2
Y = (-10 + (PrevStateNo=1401)*3.5)-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1401]
Type = VelAdd
Trigger1 = AnimElem = 5,>0
Y = .24 -(Vel Y<0)*.12 +(Vel Y>=0)*.12
[State 1401]
Type = VelAdd
Trigger1 = AnimElem=2,>0 && PrevStateNo = 1401
Y = .24

[State 1401]
Type = VelSet
Trigger1 = Time = 0 && PrevStateNo = 1401
X = 0
Y = 0
[State 1401]
Type = PosSet
Trigger1 = Time = 0 && PrevStateNo = 1401
Y = 0

[State 1401]
Type = Explod
Trigger1 = Time = 1 && PrevStateNo = 1401
Anim = 54+TeamSide + (Var(12)=-1)*10
Pos = Floor(14*Const(Size.XScale)), -2
PosType = P1
OwnPal = 1
Facing = 1
SprPriority = 2

[State 1401]
Type = EnvShake
Trigger1 = Time = 1 && PrevStateNo = 1401
Freq = 135
Ampl = -3
Time = 60
Phase = 0

[State 1401]
Type = PlaySnd
Trigger1 = Time = 24 || (PrevStateNo=1401&&Time=1)
Value = 0 + (PrevStateNo!=1401)*10, 11 - (PrevStateNo!=1401)*10
Channel = 2
[State 1401]
Type = PlaySnd
Trigger1 = Vel Y > 4 && PrevStateNo != 1401
Persistent = 7
Value = 0, 9
Channel = 2

[State 1401]
Type = ScreenBound
Trigger1 = PrevStateNo != 1401
Value = 0

[State 1401]
Type = ChangeState
Trigger1 = (AnimElem = 5,>0 || (PrevStateNo=1401&&AnimElem=2,>0)) && Pos Y >= 0
Value = 0 + (PrevStateNo!=1401)*1401
Ctrl = 1 - (PrevStateNo!=1401)

[StateDef 1402];瞬獄落られる相手
Type = S
MoveType = H
Physics = S
VelSet = 0, 0
SprPriority = -1

[State 1402]
Type = ChangeAnim2
Trigger1 = Time < 27
Value = 1101 + (Name="SF2'ザンギエフ")

[State 1402]
Type = ScreenBound
Trigger1 = 1
Value = 0

[State 1402]
Type = SprPriority
Trigger1 = AnimTime = 0 || AnimElem = 9
Value = -1 + (AnimElem=9)*3

[StateDef 1403];瞬獄落られる相手開放
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 1403]
Type = ChangeAnim2
Trigger1 = Time = 0
Value = 511
Elem = 6

[State 1403]
Type = HitVelSet
Trigger1 = Time = 15 && PrevStateNo != 505
X = 1
Y = 1

[State 1403]
Type = VelAdd
Trigger1 = Time > 15
Y = .25

[State 1403]
Type = LifeAdd
Trigger1 = Time = 0 && PrevStateNo != 505
Value = -525

[State 1403]
Type = ChangeState
Trigger1 = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505 && (Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10)))
Value = 505

[State 1403]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= -10
Value = 5100

[StateDef 1500];コサックキック
Type = U
MoveType = A
Physics = U
Ctrl = 0
SorPriority = 2

[State 1500]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 1500

[State 1500]
Type = StateTypeSet
Trigger1 = StateType = S
Value = C

[State 1500]
Type = VelSet
Trigger1 = StateType = C
X = 0 + (Command="holdfwd")*1.6 - (Command="holdback")*1.3

[State 1500]
Type = PlaySnd
Trigger1 = AnimElem = 2,1 || AnimElem = 4,1
Value = 10, 1
Channel = 1
[State 1500]
Type = PlaySnd
Trigger1 = AnimElem = 2,1 || AnimElem = 4,1
Value = 0, 9
Channel = 2

[State 1500]
Type = HitDef
Trigger1 = AnimElem = 2 || AnimTime = 0 || AnimElem = 4
Attr = C, SA
HitFlag = M
GuardFlag = L
Damage = 112, 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -24
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Trip
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = 0
YAccel = .25
P2Facing = 1

[State 1500]
Type = ChangeState
Trigger1 = (AnimTime=0||AnimElem=4) && (!Var(15)||(Var(30)=1&&Random<500))
Value = 11 + (StateType=A)*39
Ctrl = (StateType!=A)

[State 1500]
Type = VarSet
Trigger1 = (Time=0||AnimTime=0||AnimElem=4) || ((Command="a"||Command="b"||Command="c") && ((AnimTime=[-6,-1])||(AnimElem=4,[-6,-1])))
V = 15
Value = 1 - (Time=0||AnimTime=0||AnimElem=4)

[StateDef 1600];斬空ダブルラリアット
Type = A
MoveType = A
Physics = N
Ctrl = 0
SorPriority = 2

[State 1600]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo != 4100
Value = 1000

[State 1600]
Type = SprPriority
Trigger1 = AnimElem = 4 || AnimTime = 0
Value = -1 + (AnimTime=0)*3

[State 1600]
Type = VelAdd
Trigger1 = AnimElem = 1
Y = -Vel Y / 10
[State 1600]
Type = VelAdd
Trigger1 = AnimElem = 1 && Vel Y < 1
X = IFelse(Vel X<0, -.5, .5)
[State 1600]
Type = VelAdd
Trigger1 = 1
Y = IFelse(Time<16||PrevStateNo!=4100, .125, .15)

[State 1600]
Type = PlaySnd
Trigger1 = AnimElem = 1
Value = 10, 1
Channel = 1
[State 1600]
Type = PlaySnd
Trigger1 = AnimElem = 2 || AnimTime = 0
Value = 1, 0
Channel = 2

[State 1600]
Type = HitDef
Trigger1 = (AnimElem=1&&Random<500) || (AnimElem=1,1&&!MoveContact) || AnimElem = 3 || AnimElem = 5
Attr = A, SA
HitFlag = MA
GuardFlag = M
Damage = 147 + (Var(10)=1)*28, 49 + (Var(10)=1)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -84
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Guard.Velocity = (-9 + (P2Dist X<0)*18)*Const(Size.XScale)
Air.Velocity = (-1.5 + (P2Dist X<0)*3)*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2Facing = 1

[State 1600]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 1304