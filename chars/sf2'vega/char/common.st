[StateDef 0];通常状態
Type = S
Physics = S
SprPriority = 0
VelSet = 0, 0

[State 0]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 0]
Type = ChangeAnim
Trigger1 = (Anim != 0 && Anim != 5) || (Anim = 5 && AnimTime = 0)
Value = 0

[State 0]
Type = AssertSpecial
Trigger1 = RoundState > 2
Flag = NoWalk

[StateDef 10];立ち〜しゃがみ
Type = C
Physics = N
Anim = 10
VelSet = 0

[State 10]
Type = ChangeState
Trigger1 = AnimTime = 0 || RoundState > 2
Value = 11 - (RoundState>2)*11

[StateDef 11];しゃがみ
Type = C
Physics = C
Anim = 11
SprPriority = 0

[State 11]
Type = ChangeAnim
Trigger1 = Anim = 6 && AnimTime = 0
Value = 11

[State 11]
Type = ChangeState
Trigger1 = RoundState > 2
Value = 0

[StateDef 12];しゃがみ〜立ち
Type = S
Physics = S
Anim = 12

[State 12]
Type = AssertSpecial
Trigger1 = 1
Flag = NoWalk

[State 12]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0

[StateDef 20];歩行
Type = S
Physics = S
SprPriority = 0

[State 20]
Type = VelSet
Trigger1 = Command = "holdfwd" || Command = "holdback"
X = IFelse(Command="holdfwd", 4+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2), -3-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)

[State 20]
Type = ChangeAnim
Trigger1 = (Vel X > 0 && ((Anim != 20 && Anim != 5) || (Anim = 5 && AnimTime = 0))) || (Vel X < 0 && ((Anim != 21 && Anim != 5) ||  (Anim = 5 && AnimTime = 0)))
Value = IFelse(Vel X > 0, 20, 21)

[State 20]
Type = ChangeState
Trigger1 = RoundState > 2
Value = 0

[StateDef 40];跳躍開始
Type = S
Physics = S
Anim = 40
Ctrl = 0
VelSet = 0, 0
SprPriority = 1

[State 40]
Type = Turn
Trigger1 = Time = 0 && P2Dist X < -5

[State 40]
Type = VarSet
Trigger1 = Time = 1
sysvar(1) = IFelse(Command="holdfwd", 1, IFelse(Command="holdback", -1, 0))

[State 40]
Type = VelSet
Trigger1 = AnimTime = 0
X = IFelse(sysvar(1)=0, 0, IFelse(sysvar(1)=1, 4.3+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2), -4.8-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)))*Const(Size.XScale)
Y = -8-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)

[State 40]
Type = ChangeState
Trigger1 = AnimTime = 0 || RoundState > 2
Value = 50 - (RoundState>2)*50
Ctrl = 1

[StateDef 50];ジャンプ中
Type = A
Physics = A

[State 50]
Type = VarSet
Trigger1 = Time = 0
sysvar(1) = 0

[State 50]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse(Vel X=0||(PrevStateNo=[1000,1002]), 41, IFelse(Vel X>0, 42, 43))
Elem = IFelse((PrevStateNo=[1000,1002]), 4, 1)

[StateDef 52];着地
Type = S
Physics = S
Ctrl = 0
Anim = 47
VelSet = 0, 0

[State 52]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 52]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 10

[State 52]
Type = AssertSpecial
Trigger1 = 1
Flag = NoWalk

[State 52]
Type = CtrlSet
Trigger1 = Time = 1
Value = 1

[State 52]
Type = NotHitBy
Trigger1 = PrevStateNo = 5040 && Time < 2
Value = SCA

[State 52]
Type = ChangeState
Trigger1 = AnimTime = 0 || (P2Dist X<-5&&Time=0)
Value = 0 + (P2Dist X<-5&&Time=0&&Command="holddown")*11
Ctrl = 1

[StateDef 180];勝利時
Type = S

[State 180]
Type = ChangeState
Trigger1 = Time = 0
Value = 181

[StateDef 181];勝利
Type = S
Ctrl = 0
VelSet = 0, 0
SprPriority = 1

[State 182]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 180 + (Random<500)

[StateDef 190];イントロ 準備
Type = S
Ctrl = 0
VelSet = 0, 0

[State 190]
Type = ChangeState
Trigger1 = Time = 0
Value = IFelse(Var(12)=-2&&Random>200, 193 +(Random<500)*3, IFelse(Var(10)||Var(12)=-2, 191, 0))

[StateDef 191];イントロ マント脱ぎ
Type = S
Ctrl = 0
Anim = 190
VelSet = 0, 0

[State 191]
Type = Helper
Trigger1 = AnimElem = 16
Pos = 0, 0
PosType = P1
StateNo = 192
OwnPal = 1

[State 191]
Type = PlaySnd
Trigger1 = AnimElem = 16
Value = 0, 9

[State 191]
Type = AssertSpecial
Trigger1 = AnimElem = 12,<0
Flag = Intro

[State 191]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = 0

[StateDef 192];イントロ マント
Type = S
Ctrl = 0
VelSet = 0, 0
Anim = 191
SprPriority = 2

[State 192]
Type = PosAdd
Trigger1 = Time = 2
X = 7
[State 192]
Type = SprPriority
Trigger1 = Time = 2
Value = -2
[State 192]
Type = VelSet
Trigger1 = Time = 3
X = -1.9
Y = -1
[State 192]
Type = VelAdd
Trigger1 = Time > 3
Y = .05
[State 192]
Type = AssertSpecial
Trigger1 = Time > 12
Persistent = 2
Flag = Invisible

[State 192]
Type = DestroySelf
Trigger1 = Time = 76

[StateDef 193];イントロ 豪鬼出現
Type = S
Ctrl = 0
Anim = 0

[State 193]
Type = AssertSpecial
Trigger1 = 1
Flag = Intro

[State 193]
Type = Helper
Trigger1 = Time = 122
ID = 1
Name = "Intro GOUKI"
Pos = Floor(260*Const(Size.XScale))
PosType = P1
StateNo = 194
Facing = -1
OwnPal = 1

[State 193]
Type = ChangeAnim
Trigger1 = Time = 398
Value = 180

[State 193]
Type = ChangeState
Trigger1 = Anim = 180 && AnimElem = 5,64
Value = 0

[StateDef 194];ベガへの瞬獄殺
Type = S
MoveType = I
Physics = N
Ctrl = 0
VelSet = 10
Anim = 192
SprPriority = -8

[State 194]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 35

[State 194]
Type = VelSet
Trigger1 = AnimElem = 2
X = - 0

[State 194]
Type = AfterImage
Trigger1 = Time = 0
Time = 26
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50
PalContrast = 135,135,135
PalAdd = 30,30,30
[State 194]
Type = AfterImage
Trigger1 = AnimElem = 2
Time = 0

[State 194]
Type = PlaySnd
Trigger1 = Time = 0
Value = 2, 0

[State 194]
Type = EnvColor
Trigger1 = AnimElem = 3,>=0 && AnimElem = 3,<221
Value = 240, 240, 240

[State 194]
Type = Explod
Trigger1 = AnimElem = 3,9 || AnimElem = 3,14 || AnimElem = 3,25 || AnimElem = 3,36 || AnimElem = 3,57 || AnimElem = 3,72
Anim = 54+TeamSide
Pos = 40, -45
Random = Floor(50*Const(Size.XScale)), 60
PosType = P1
OnTop = 1
Facing = -1
OwnPal = 1
Scale = Const(Size.XScale), 1
[State 194]
Type = PlaySnd
Trigger1 = AnimElem = 3,9 || AnimElem = 3,14 || AnimElem = 3,25 || AnimElem = 3,36 || AnimElem = 3,57 || AnimElem = 3,72
Value = 0, 3

[State 194]
Type = AssertSpecial
Trigger1 = AnimElem = 3,>=0
Flag = NoShadow

[State 194]
Type = PosAdd
Trigger1 = AnimElem = 3
X = ParentDist X + 30
[State 194]
Type = Turn
Trigger1 = AnimElem = 3

[State 194]
Type = ChangeState
Trigger1 = AnimElem = 6
Value = 195

[StateDef 195];倒れた豪鬼
Type = S
MoveType = I
Physics = S
Ctrl = 0
VelSet = 0
SprPriority = -8

[State 195]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 192
Elem = 6

[State 195]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 195]
Type = AssertSpecial
Trigger1 = Time > 160 && TimeMod = 2,0
Flag = Invisible

[State 195]
Type = DestroySelf
Trigger1 = Time = 240

[StateDef 196];イントロ 豪鬼出現2
Type = S
Ctrl = 0
Anim = 0

[State 196]
Type = AssertSpecial
Trigger1 = 1
Flag = Intro

[State 196]
Type = Helper
Trigger1 = Time = 122
ID = 1
Name = "Intro GOUKI"
Pos = Floor(260*Const(Size.XScale))
PosType = P1
StateNo = 197
Facing = -1
OwnPal = 1

[State 196]
Type = ChangeState
Trigger1 = Time > 122 && !NumHelper(1)
Value = 0

[StateDef 197];ベガへじゃない瞬獄殺
Type = S
MoveType = I
Physics = N
Ctrl = 0
VelSet = 10
Anim = 192
SprPriority = -8

[State 197]
Type = SprPriority
Trigger1 = (ScreenPos X>160&&Facing=1) || (ScreenPos X<160&&Facing=-1)
Value = 8

[State 197]
Type = ChangeAnim
Trigger1 = 1
Value = 192

[State 197]
Type = VelAdd
Trigger1 = 1
X = - Vel X / 70

[State 197]
Type = AfterImage
Trigger1 = Time = 0
Time = 99
Trans = None
FrameGap = 3
Length = 10
PalColor = 0
PalBright = 50,50,50
PalContrast = 135,135,135
PalAdd = 30,30,30

[State 197]
Type = PlaySnd
Trigger1 = Time = 0
Value = 2, 0

[State 197]
Type = DestroySelf
Trigger1 = FrontEdgeDist < -50

[StateDef 5000];地上ダメージ喰らい中
Type = S
MoveType = H
Physics = N
VelSet = 0, 0

[State 5000]
Type = ChangeState
Trigger1 = Var(1) > 400
Value = 4000

[State 5000]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse((GetHitVar(AnimType) = [3,5]), 5030, IFelse((GetHitVar(GroundType)=1), IFelse(GetHitVar(AnimType)=0,5000,5000+GetHitVar(AnimType)), IFelse(GetHitVar(AnimType)=0,5010,5010+GetHitVar(AnimType))))
[State 5000]
Type = ChangeAnim
Trigger1 = Time = 0 && (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
Value = 5047 + GetHitVar(AnimType)
[State 5000]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim

[State 5000]
Type = StateTypeSet
Trigger1 = (Time = 0 && GetHitVar(YVel) != 0 && GetHitVar(Fall)) || Pos Y != 0
Type = A

[State 5000]
Type = ChangeState
Trigger1 = HitShakeOver
Value = IFelse(GetHitVar(YVel) = 0, 5001, 5030)

[State 5000]
Type = ForceFeedback
Trigger1 = Anim = 5000 || Anim = 5010
Persistent = 0
Time = 6
WaveForm = Square
[State 5000]
Type = ForceFeedback
Trigger1 = Anim = 5001 || Anim = 5011
Persistent = 0
Time = 8
WaveForm = SineSquare
Ampl = 110, -1, -.3
[State 5000]
Type = ForceFeedback
Trigger1 = Anim = 5012 || Anim = 5002 || Anim = 5030
Persistent = 0
Time = 15
WaveForm = SineSquare
Ampl = 140

[StateDef 5010];しゃがみ喰らい中
Type = C
MoveType = H
Physics = N
VelSet = 0, 0

[State 5010]
Type = ChangeState
Trigger1 = Var(1) > 400
Value = 4000

[State 5010]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse((GetHitVar(AnimType) = [3,5]), 5030, IFelse(GetHitVar(AnimType)=0, 5020, 5020+GetHitVar(AnimType)))
[State 5010]
Type = ChangeAnim
Trigger1 = Time = 0 && (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
Value = 5047 + GetHitVar(AnimType)
[State 5010]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim

[State 5010]
Type = ChangeState
Trigger1 = HitShakeOver
Value = IFelse(GetHitVar(YVel) = 0, 5011, 5030)

[State 5010]
Type = ForceFeedback
Trigger1 = Anim = 5020
Persistent = 0
Time = 6
WaveForm = Square
[State 5010]
Type = ForceFeedback
Trigger1 = Anim = 5021
Persistent = 0
Time = 8
WaveForm = SineSquare
Ampl = 110, -1, -.3
[State 5010]
Type = ForceFeedback
Trigger1 = Anim = 5022
Persistent = 0
Time = 15
WaveForm = SineSquare
Ampl = 140

[StateDef 5020];空中喰らい中
Type = A
MoveType = H
Physics = N
VelSet = 0, 0

[State 5020]
Type = ChangeState
Trigger1 = Var(1) > 400
Value = 4000

[State 5020]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse((GetHitVar(AnimType) = [3,5]), 5030, IFelse(GetHitVar(GroundType)=1, 5000+GetHitVar(AnimType), 5010+GetHitVar(AnimType)))
[State 5020]
Type = ChangeAnim
Trigger1 = Time = 0 && (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
Value = 5047 + GetHitVar(AnimType)
[State 5020]
Type = ChangeAnim
Trigger1 = Time > 0
Value = Anim

[State 5020]
Type = PosSet
Trigger1 = Pos Y > 0
Y = 0

[State 5020]
Type = ChangeState
Trigger1 = HitShakeOver
Value = 5030

[State 5020]
Type = ForceFeedback
Trigger1 = Anim = 5000 || Anim = 5010
Persistent = 0
Time = 6
WaveForm = Square
[State 5020]
Type = ForceFeedback
Trigger1 = Anim = 5001 || Anim = 5011
Persistent = 0
Time = 8
WaveForm = SineSquare
Ampl = 110, -1, -.3

[State 5020]
Type = ForceFeedback
Trigger1 = Anim = 5012 || Anim = 5002 || Anim = 5030 || Anim = [5051, 5059]
Persistent = 0
Time = 15
WaveForm = SineSquare
Ampl = 140

[StateDef 5035];空中喰らい 上昇移行
Type = A
MoveType = H
Physics = N

[State 5035]
Type = ChangeAnim
Trigger1 = Time = 0 && SelfAnimExist(5035) && Anim != 5090 && Anim != [5051,5059]
Value = 5035

[State 5035]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(yaccel)

[State 5035]
Type = ChangeState
Trigger1 = HitOver || AnimTime = 0 || (Vel Y > 0 && Pos Y >= 0) || (Time = 0 && Anim != 5035)
Value = IFelse(HitFall, 5050, 5040)

[StateDef 5040];空中復帰
Type = A
MoveType = H
Physics = N

[State 5040]
Type = ChangeState
Trigger1 = !Alive
Value = 5050

[State 5040]
Type = ChangeAnim
Trigger1 = (PrevStateNo != 5042 || Anim != 5040) && ((AnimTime = 0 && Anim != 5040) || (Time = 0 && Anim != 5035))
Value = 5040

[State 5040]
Type = StateTypeSet
Trigger1 = HitOver
MoveType = I

[State 5040]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 5040]
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = 0
[State 5040]
Type = VarAdd
Trigger1 = 1
FV = 1
Value = -.5

[State 5040]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52

[StateDef 5041];空中復帰からバウンド復帰
Type = A
MoveType = H
Physics = N
Anim = 5041
Ctrl = 1

[State 5041]
Type = Explod
Trigger1 = Time = 0
Anim = 93
Pos = 0, 0
PosType = P1
SprPriority = 10
OwnPal = 1
Scale = Const(Size.XScale), 1

[State 5041]
Type = PlaySnd
Trigger1 = Time = 0
Value = 2, 12

[State 5041]
Type = PosSet
Trigger1 = Time = 0
Y = 0
[State 5041]
Type = VelSet
Trigger1 = Time = 0
Y = -1+FVar(1)

[State 5041]
Type = VelAdd
Trigger1 = 1
Y = .4

[State 5041]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 52

[StateDef 5042];降下中の画面端引っ掛かり
Type = A
MoveType = H
Physics = N

[State 5042]
Type = VarSet
Trigger1 = Time = 0
V = 21
Value = 1

[State 5042]
Type = PosFreeze
Trigger1 = 1

[State 5042]
Type = ModifyExplod
Trigger1 = Pos Y >= 0
ID = 2
PosType = P1
Pos = 0, Floor(RootDist Y - Pos Y)

[State 5042]
Type = ChangeAnim
Trigger1 = 1
Value = Anim
Elem = AnimElemNo(0)

[State 5042]
Type = NotHitBy
Trigger1 = PrevStateNo = 4000 || Pos Y > -20
Value = SCA

[State 5042]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 11

[State 5042]
Type = VelSet
Trigger1 = Time = 12
Y = 1

[State 5042]
Type = ChangeState
Trigger1 = Time = 12
Value = IFelse(PrevStateNo=5030, IFelse(HitFall, 5050, 5040), PrevStateNo)

[StateDef 5050];空中喰らい 降下中
Type = A
MoveType= H
Physics = N

[State 5050]
Type = ModifyExplod
Trigger1 = Pos Y >= 0
ID = 2
PosType = P1
Pos = 0, Floor(RootDist Y - Pos Y)

[State 5050]
Type = ChangeAnim
Trigger1 = ((AnimTime = 0 && Anim = 5035) || (PrevStateNo != 5042 && Time = 0 && Anim != 5035 && (Anim != [5051,5059]) && (Anim != [5061,5069]) && Anim != 5090))
Value = 5050

[State 5050]
Type = ChangeAnim
Trigger1 = Vel Y >= IFelse(Anim = 5050, 1, -2) && SelfAnimExist(Anim + 10) && Anim = [5050,5059]
Persistent = 0
Value = Anim + 10

[State 5050]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 5050]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = IFelse(GetHitVar(YVel)=0, 5111, 5100)

[StateDef 5070];足払い転倒 喰らい中
Type = A
MoveType = H
Physics = N
VelSet = 0, 0

[State 5070]
Type = ChangeState
Trigger1 = Var(1) > 400
Value = 4000

[State 5070]
Type = ChangeAnim 
Trigger1 = 1
Value = 5070

[State 5070]
Type = ChangeState
Trigger1 = HitShakeOver
Value = 5071

[State 5070]
Type = ForceFeedback
Trigger1 = time = 0
Time = 12
XaveForm = SineSquare
Ampl = 140

[StateDef 5071];足払い転倒 降下中
Type = A
MoveType = H
Physics = N

[State 5071]
Type = ModifyExplod
Trigger1 = Pos Y >= 0
ID = 2
PosType = P1
Pos = 0, Floor(RootDist Y - Pos Y)

[State 5071]
Type = HitVelSet
Trigger1 = Time = 0 && PrevStateNo != 5042
X = 1
Y = 1

[State 5071]
Type = VelAdd
Trigger1 = 1
Y = GetHitVar(YAccel)

[State 5071]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = IFelse(GetHitVar(Fall.YVel)=0, 5111, 5100)

[StateDef 5100];喰らいバウンド
Type = L
MoveType = H
Physics = N

[State 5100]
Type = ModifyExplod
Trigger1 = Pos Y >= 0
ID = 2
PosType = P1
Pos = 0, 0

[State 5100]
Type = VelSet
Trigger1 = Time = 0 && GetHitVar(Fall.YVel) = 0 && Vel X > 1
X = 1

[State 5100]
Type = FallEnvShake
Trigger1 = Time = 0

[State 5100]
Type = VarSet
Trigger1 = Time = 0
sysvar(1) = Floor(Vel Y)

[State 5100]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse(PrevStateNo = 5071, 5071, 5100)

[State 5100]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 5100]
Type = VelSet
Trigger1 = Time = 0
Y = 0

[State 5100]
Type = ChangeState
Trigger1 = (Time = 0 && GetHitVar(Fall.YVel) = 0) || AnimTime = 0
Value = IFelse(AnimTime = 0, 5101, 5111)

[State 5100]
Type = HitFallDamage
Trigger1 = Time = 3

[State 5100]
Type = PosFreeze
Trigger1 = 1

[State 5100]
Type = ForceFeedback
Trigger1 = Time = 0
WaveForm = SineSquare
Ampl = 128, -3, -.2, .005
Time = 20

[StateDef 5101];喰らいバウンド後
Type = L
MoveType = H
Physics = N

[State 5101]
Type = ChangeAnim
Trigger1 = Time = 0
Value = IFelse((Anim = [5101, 5109]) && SelfAnimExist(5160 + (Anim % 10)), 5160 + (Anim % 10), 5160)

[State 5101]
Type = HitFallVel
Trigger1 = Time = 0

[State 5101]
Type = PosSet
Trigger1 = Time = 0
Y = 20

[State 5101]
Type = ModifyExplod
Trigger1 = Pos Y >= 0
ID = 2
PosType = P1
Pos = 0, Floor(RootDist Y - Pos Y)

[State 5101]
Type = VelAdd
Trigger1 = 1
Y = .4

[State 5101]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 12
Value = 5110

[StateDef 5110];ダウン中へ
Type = L
MoveType = H
Physics = N
VelSet = 0, 0

[State 5110]
Type = ChangeState
Trigger1 = 1
Value = 5111

[StateDef 5111];ダウン中へ2
Type = L
MoveType = H
Physics = N
VelSet = 0, 0
Anim = IFelse(PrevStateNo=5050||PrevStateNo=5071||PrevStateNo=5100, 5071, 5110)

[State 5111]
Type = ModifyExplod
Trigger1 = Time = 0
ID = 2
PosType = P1
Pos = 0, 0

[State 5111]
Type = FallEnvShake
Trigger1 = Time = 0

[State 5111]
Type = HitFallDamage
Trigger1 = Time = 0

[State 5111]
Type = PosSet
Trigger1 = 1
Y = 0

[State 5111]
Type = VarSet
Trigger1 = Time = 0 && GetHitVar(Fall.YVel) != 0
sysvar(1) = Floor(Vel Y)

[State 5111]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = IFelse(Alive, 5112, 5150)

[State 5111]
Type = VarSet
Trigger1 = sysvar(0) && Time = 0
sysvar(0) = 0

[State 5111]
Type = ForceFeedback
Trigger1 = Alive && Time = 0
Time = 8
Ampl = 240
WaveForm = Sine
[State 5110]
Type = ForceFeedback
Trigger1 = !Alive && Time = 0
Ampl = 200, 7, -.467
Time = 30
WaveForm = Sine

[StateDef 5112];ダウン中
Type = L
MoveType = H
Physics = N
VelSet = 0, 0

[State 5112]
Type = ChangeAnim
Trigger1 = Time= 0
Value = 5110

[State 5112]
Type = VarAdd
Trigger1 =  Var(16) > 6
V = 16
Value = -1

[State 5112]
Type = ChangeState
Trigger1 = (Time = 23 && GetHitVar(AnimType)!=3) || (Time = 35 && GetHitVar(AnimType)=3)
Value = IFelse(Time=23||Time=35,5120,5121)

[StateDef 5120];起き上がり
Type = L
MoveType = I
Physics = N
VelSet = 0, 0

[State 5120]
Type = PosSet
Trigger1 = 1
Y = 0

[State 5120]
Type = ChangeAnim
Trigger1 = Time = 0
Value = 5120
Elem = IFelse(PrevStateNo = 5121, 2, 1)

[State 5120]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 5120]
Type = HitFallSet
Trigger1 = AnimTime = 0
Value = 1

[State 5120]
Type = NotHitBy
Trigger1 = AnimTime = 0
Value = , NT, ST, HT
Time = 12

[State 5120]
Type = NotHitBy
Trigger1 = AnimTime = 0
Value2 = SCA
Time = 3

[State 5120]
Type = VarRandom
Trigger1 = Var(1) > 400 && NumExplod(2) = 0
V = 0
Range = 0, 1

[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4000 + Var(0) + (Var(12)=-1)*10
ID = 2
PosType = P1
Pos = 0, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1
Facing = -1
[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4002 + Var(0) + (Var(12)=-1)*10
ID = 2
PosType = P1
Pos = 0, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1
Facing = -1
[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4004 + Var(0) + (Var(12)=-1)*10
ID = 2
PosType = P1
Pos = 0, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1
Facing = -1

[State 5120]
Type = ChangeState
Trigger1 = AnimTime = 0
Value = IFelse(Var(1) > 400, 4001, 0)
Ctrl = IFelse(Var(1) > 400, 0, 1)

[StateDef 5900];Varの初期化設定
Type = S

[State 5900]
Type = VarRangeSet
Trigger1 = RoundNo = 1
Value = 0
First = 0
Last = 3
[State 5900]
Type = VarSet
Trigger1 = RoundNo = 1
V = 6
Value = 0
[State 5900]
Type = VarSet
Trigger1 = RoundNo = 1
V = 8
Value = 0
[State 5900]
Type = VarRangeSet
Trigger1 = RoundNo = 1
Value = 0
First = 14
Last = 29
[State 5900]
Type = VarRangeSet
Trigger1 = RoundNo = 1
Value = 0
First = 31
Last = 59

[State 5900]
Type = VarRangeSet
Trigger1 = RoundNo = 1
fvalue = 0

[State 5900]
Type = ChangeState
Trigger1 = RoundNo = 1
Value = 190