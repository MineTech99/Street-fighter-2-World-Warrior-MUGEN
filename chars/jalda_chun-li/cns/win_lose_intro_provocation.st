;===========================================================================
; ステート
;===========================================================================
;---------------------------------------------------------------------------
; ここからはキャラのそれぞれの行動（ステート）を設定する。
; 番号（ステートナンバー）に気を付ければ良いだけで、
; 行動の決め方もステートの数も作りたいキャラによって自由。
;
; 本来ステートは別のファイルとして扱っているものだけど、
; このようにコンスタンツファイルと一緒にまとめる事も可能。
;
; ステートの基本的な設定はおまけフォルダの「テンプレート.txt」を参照。
;===========================================================================
; 基本行動
;===========================================================================
;---------------------------------------------------------------------------
;タイムオーバー（負けた時）
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 無敵]
type = NotHitBy
trigger1 = 1 ;トリガーを何も書かず「1」にする事により、『無条件で常に実行させる命令』になる。
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;勝利ポーズ分岐（common1.cnsには無いけど、これもコモンステート）
[StateDef 0];通常状態
Type = S
Physics = S
SprPriority = 0
VelSet = 0, 0

[State 0]
Type = Turn
Trigger1 = Time = 0 && Var(18) > 0 && P2Dist X < 0
[State 0]
Type = ChangeState
Trigger1 = Time = 0 && Var(18) = [1,9]
Value=1999+(Var(18)=13)-(Var(18)=1)*999-(Var(18)=2)*997-(Var(18)=3)*895-(Var(18)=4)*799-(Var(18)=5)*798-(Var(18)=6)*797-(Var(18)=7)*899-(Var(18)=8)*898-(Var(18)=9)*897
[State 0]
Type = ChangeState
Trigger1 = Time = 0 && Var(18) > 9
Value=1300+(Var(18)=11)+(Var(18)=12)*2+(Var(18)=13)*3

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

[StateDef 10];立ち～しゃがみ
Type = C
Physics = N
Anim = 10
VelSet = 0

[State 10]
Type = ChangeState
Trigger1 = AnimTime = 0 || RoundState > 2
Value = 11 - (RoundState>2)*11

[StateDef 20];歩行
Type = S
Physics = S
SprPriority = 0

[State 20]
Type = VelSet
Trigger1 = Command = "holdfwd" || Command = "holdback"
X = IFelse(Command="holdfwd", 4, -3)*Const(Size.XScale)

[State 20]
Type = ChangeAnim
Trigger1 = (Vel X>0&&((Anim!=20&&Anim!=5)||(Anim=5&&AnimTime=0))) || (Vel X<0&&((Anim!=21&&Anim!= 5)|| (Anim=5&&AnimTime=0)))
Value = IFelse(Vel X > 0, 20, 21)

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
X = IFelse(sysvar(1)=0, 0, IFelse(sysvar(1)=1, 4, -4.2))*Const(Size.XScale)
Y = -10

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

[StateDef 51];壁反蹴
Type = A
Physics = N
Anim = 44
VelSet = 0, 0
Ctrl = 0

[State 51]
Type = Turn
Trigger1 = FrontEdgeDist < 3 && Time = 0

[State 51]
Type = PosAdd
Trigger1 = Anim = 44
X = IFelse(Facing=1, Pos X, -Pos X)

[State 51]
Type = VelSet
Trigger1 = Time < 6
Y = 0

[State 51]
Type = VelSet
Trigger1 = Time = 6
X = 4*Const(Size.XScale)
Y = -6
[State 51]
Type = VelAdd
Trigger1 = Time > 5
Y = .27

[State 51]
Type = CtrlSet
Trigger1 = Time = 6
Value = 1

[State 51]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Value = 42

[State 51]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 52

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
Trigger1 = AnimTime = 0 || (P2Dist X<-5&&Time=0) || PrevStateNo = 470
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
Value = IFelse(Random<500, 180, 181)

[State 182]
Type = PlaySnd
Trigger1 = Anim = 180 && (AnimElem=3||AnimElem=21)
Value = 10, 2 + (AnimElem=21)

[State 182]
Type = AssertSpecial
Trigger1 = Anim = 180 && Time < 240
Flag = RoundNotOver

[StateDef 190];イントロ準備
Type = S
Ctrl = 0
VelSet = 0, 0

[State 190]
Type = ChangeState
Trigger1 = Time = 0
Value = 0

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
Trigger1 = HitOver || AnimTime = 0 || (Vel Y > 0 && Pos Y >= 10) || (Time = 0 && Anim != 5035)
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
Range = 0, 3

[State 5120]
Type = PlaySnd
Trigger1 = Var(1) > 400 && NumExplod(2) = 0
Value = 0, IFelse(Var(0) = 0, 14, IFelse(Var(0) = 1, 13, IFelse(Var(0) = 2, 15, 16)))
Channel = 6
Loop = 1

[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4000 + Var(0)
ID = 2
PosType = P1
Pos = 20, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1
[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4004 + Var(0)
ID = 2
PosType = P1
Pos = 20, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1
[State 5120]
Type = Explod
Trigger1 = Var(1) > 400 && NumExplod(2) < 3
Anim = 4008 + Var(0)
ID = 2
PosType = P1
Pos = 20, 0
SprPriority = 1
BindTime = -1
RemoveOnGetHit = 1
RemoveTime = -1

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


;---------------------------------------------------------------------------
; ※２：AssertSpecial
;
; 　他のコントローラでは設定出来ない『特殊な効果』を指定する命令。
; 　設定したトリガーが有効になってる間だけ一時的に適用される。
;
; 　適用出来るパラメータはこのコントローラを一つ設置する場合、最大３つまで。
; 　書式としては「flag」「flag2」「flag3」を順に加えていく形。
; 　flag2とflag3はオプション。ではその特殊効果を全て紹介。
;
; 　Intro          = イントロ（試合開始前の登場演出アクション）の状態になる。イントロステート専用。
; 　Invisible      = 自分の姿を消す。しかし残像（AfterImage）は消せない。
; 　RoundNotOver   = 現在のラウンドを過ぎない。勝利ポーズ専用。
; 　NoBarDisplay   = ライフバーを非表示にする。
; 　NoBG           = ステージの奥の画像を非表示にし、「真っ黒の背景」にする。
; 　NoFG           = ステージの手前の画像を非表示にする。
; 　NoStandGuard   = 立ちガードが出来なくなる。
; 　NoCrouchGuard  = しゃがみガードが出来なくなる。
; 　NoAirGuard     = 空中ガードが出来なくなる。
; 　NoAutoTurn     = 自動で振り向かない。
; 　NoJuggleCheck  = ジャグルをチェックしない。（ジャグルポイントが減らなくなる）
; 　NoKOSnd        = ＫＯ時の音声（11,0）を鳴らさないようにする。画面中に存在する全員に有効なので注意。
; 　NoKOSlow       = ＫＯ時のスローモーションを無効にする。（ＫＯ直前に有効にしないといけない）
; 　NoShadow       = 自分の影を消す。
; 　GlobalNoShadow = 画面中に存在する全てのプレイヤー（ヘルパーとProjectileも含む）の影を消す。
; 　NoMusic        = 演奏しているＢＧＭを止める。（プラグインによってはＢＧＭがバグるので要注意）
; 　NoWalk         = 歩かない。（前か後ろのキーを入力中コントロールが可能の時に勝手に[Statedef 20]にならない）
; 　TimerFreeze    = タイムカウント（制限時間）を停止する。
; 　UnGuardable    = 自分の全ての攻撃が『ガード不可』になる。
;
;---------------------------------------------------------------------------
;挑発
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 2

[State 195, コントロール]
type = CtrlSet
trigger1 = Time = 40 ;このステートが４０フレームになったら
value = 1            ;キーコントロールが可能になる。

[State 195, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[StateDef 3000];ポーズヘルパー待機
Type = S
Ctrl = 0
Anim = 99

[State 3000];スーパーコンボフィニッシュ演出へ移行
Type = ChangeState
Trigger1 = Parent,StateNo = 2000 && RoundState = 3 && Parent,MoveContact
Value = 3003
[State 3000];勝利演出用KOスロー止め
Type = AssertSpecial
Trigger1 = Parent,StateNo = 2000 && Parent,MoveContact
Flag = NoKOSlow

[State 3000];FIRST ATTACKの表記
Type = Explod
Trigger1 = (P2MoveType = H && P2StateNo != [150, 199]) && !Parent,Var(7) && !Parent,Var(10)
Anim = 81-Facing
Pos = 0, 80
PosType = Back
BindTime = -1
SprPriority = -100
Facing = Facing
RemoveTime = IFelse(Var(10), 63, 63)
Scale = Const(Size.XScale), 1
[State 3000]
Type = ParentVarSet
Trigger1 = !Parent,Var(7) && ((P2MoveType = H && P2StateNo != [150, 199]) || Parent,StateNo = [5000, 5999])
V = 7
Value = 1
[State 3000];RECOVERYの表記
Type = Explod
Trigger1 = Parent,PrevStateNo = 4001 && Parent,Time = 1 && Parent,MoveType != H
Anim = 85 - Facing
Pos = -20, 60
PosType = Back
BindTime = -1
SprPriority = -100
Facing = Facing
[State 3000];REVERSAL ATTACKの表記
Type = Explod
Trigger1 = Parent,Var(18) > 0 && Parent,Time=1 && !Parent,Var(10) && ((Parent,StateNo=[1000,1002])||(Parent,StateNo=[1100,1105])||(Parent,StateNo=[1200,1203])||Parent,StateNo=2000||Parent,StateNo=[1300,1305])
;Trigger1 = Parent,PrevStateNo=5120 && Parent,Time=1 && !Parent,Var(10) && ((Parent,StateNo=[1000,1002])||(Parent,StateNo=[1100,1105])||(Parent,StateNo=[1200,1203])||Parent,StateNo=2000||Parent,StateNo=[1300,1305])
Anim = 82 - Facing
Pos = 18, 60
PosType = Back
BindTime = -1
SprPriority = -100
Facing = Facing

[State 3000];飛び道具ヒット時のスロー
Type = VarSet
Trigger1 = Parent,ProjHit1 = 1,16 || Var(11) = 30
V = 10
Value = IFelse(Var(11)=30, 0, 1)
[State 3000]
Type = VarSet
Trigger1 = Var(11) = 30
V = 11
Value = 0
[State 3000]
Type = VarAdd
Trigger1 = Var(10)
V = 11
Value = 1
[State 3000]
Type = Pause
Trigger1 = RoundState = 2 && Var(11) = [1,21]
Time = 1
MoveTime = 1

[State 3000];気絶値初期化
Type = VarAdd
Trigger1 = Parent,Var(1) > 0
V = 20
Value = 1
[State 3000]
Type = ParentVarSet
Trigger1 = Parent,Var(1) > 0 && Var(20) > 180
V = 1
Value = 0
[State 3000]
Type = VarSet
Trigger1 = Var(20) > 0 && (Var(20)>180||Parent,MoveType=H||Parent,Var(1)<0)
V = 20
Value = 0

[State 3000]
Type = ChangeState
Trigger1 = Parent,Alive && RoundState = 2 && Command = "start" && Parent,Command = "start" && Parent,Var(30) = 2
Value = 3001

[StateDef 3001];ポーズ
Type = S
Ctrl = 0

[State 3001]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 17

[State 3001]
Type = AssertSpecial
Trigger1 = 1
Flag = NoFG

[State 3001]
Type = BGPalFX
Trigger1 = 1
Time = 10
Mul = 100,100,100
Add = 70, 70, 70

[State 3001]
Type = PlaySnd
Trigger1 = Command="down"&&Var(0)<2
Trigger2 = Command="up"&&Var(0)>0
Trigger3 = (Command="fwd"&&((Var(0)=0&&!Parent,Var(5))||(Var(0)=1&&!Parent,Var(10))||(Var(0)=2&&Parent,Var(13))))|| (Command="back"&&((Var(0)=0&&Parent,Var(5))||(Var(0)=1&&Parent,Var(10))||(Var(0)=2&&!Parent,Var(13))))
Value = 0, 18

[State 3001]
Type = VarAdd
Trigger1 = (Command="up"&&Var(0)>0)||(Command="down"&&Var(0)<2)
V = 0
Value = IFelse(Command = "down", 1, -1)
[State 3001]
Type = RemoveExplod
Trigger1 = Command = "up" || Command = "down"
ID = 3001

[State 3001]
Type = ParentVarSet
Trigger1 = Var(0)=0 && (Command = "fwd" || Command = "back")
V = 5
Value = IFelse(Command = "fwd", 1, 0)
[State 3001]
Type = RemoveExplod
Trigger1 = Var(0)=0 && (Command = "fwd" || Command = "back")
ID = 3002

[State 3001]
Type = ParentVarSet
Trigger1 = Var(0)=1 && (Command = "fwd" || Command = "back")
V = 10
Value = IFelse(Command = "fwd", 1, 0)
[State 3001]
Type = RemoveExplod
Trigger1 = Var(0)=1 && (Command = "fwd" || Command = "back")
ID = 3003
[State 3001]
Type = RemoveExplod
Trigger1 = (Var(0)=[1,2]) && (Command="fwd"||Command="back")
ID = 3000
[State 3001]
Type = RemoveExplod
Trigger1 = Var(0)=1 && (Command = "fwd" || Command = "back")
ID = 3008

[State 3001];コマンド変更
Type = ParentVarSet
Trigger1 = Var(0)=2 && (Command = "fwd" || Command = "back")
V = 13
Value = IFelse(Command="fwd", 0, 1)
[State 3001]
Type = RemoveExplod
Trigger1 = Var(0)=2 && (Command = "fwd" || Command = "back")
ID = 3009
[State 3001]
Type = Explod
Trigger1 = Time = 0 || (Var(0)=2 && (Command="fwd"||Command="back"))
Anim = 3012-Parent,Var(13)
ID = 3009
Pos = 160, 134
PosType = Left
OwnPal = 1
SprPriority = 101
PauseMoveTime = -1
BindTime = -1

[State 3001];モード
Type = Explod
Trigger1 = Time = 0
Anim = 3013
ID = 3010
Pos = 160, 110
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = (Time=0&&Parent,Var(10)) || (Var(0)=1&&Command="fwd")
Anim = 3014
ID = 3003
Pos = 160, 110
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1

[State 3001]
Type = Explod
Trigger1 = Time = 0 || ((Var(0)=[1,2]) && (Command="fwd"||Command="back"))
Anim = 3000
ID = 3000
Pos = 160, 130 + Parent,Var(10)*18
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = Time = 0 || ((Var(0)=[1,2]) && (Command="fwd"||Command="back"))
Anim = IFelse(Parent,Facing=1, 3001, 3003) +Parent,Var(13)
ID = 3000
Pos = 160, 130 + Parent,Var(10)*18
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = Time = 0 || ((Var(0)=[1,2]) && (Command="fwd"||Command="back"))
Anim = 3010
ID = 3000
Pos = 160, 110
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = (!Parent,Var(10)&&Time=0) || (Var(0)=1&&Command="back")
Anim = 3005
ID = 3008
Pos = 160, 130
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = (!Parent,Var(10)&&Time=0) || ((Var(0)=1)&&Command="back")
Anim = IFelse(Parent,Facing=1, 3006, 3007)
ID = 3008
Pos = 160, 130
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = Time = 0 || Command = "down" || Command = "up"
Anim = 3015
ID = 3001
Pos = 160, 110+Var(0)*14
PosType = Left
OwnPal = 1
SprPriority = 101
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = Time = 0 || (Var(0)=0 && (Command="fwd"||Command="back"))
Anim = 3011+Parent,Var(5)
ID = 3002
Pos = 160, 110
PosType = Left
OwnPal = 1
SprPriority = 101
PauseMoveTime = -1
BindTime = -1

[State 3001]
Type = Explod
Trigger1 = (Time = 0 || ((Var(0)=[1,2])&&(Command="fwd"||Command="back"))) && !Parent,Var(10)
Anim = IFelse(Parent,Var(13), IFelse(Parent,Facing=1, 3009, 3016), 3008)
ID = 3000
Pos = 160, 130
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1
[State 3001]
Type = Explod
Trigger1 = Time = 0 || ((Var(0)=[1,2])&&(Command="fwd"||Command="back"))
Anim = IFelse(Parent,Var(10)||Parent,Var(13), 3018, IFelse(Parent,Facing=1, 3017, 3019))
ID = 3000
Pos = 160, 130+Parent,Var(10)*18
PosType = Left
OwnPal = 1
SprPriority = 100
PauseMoveTime = -1
BindTime = -1

[State 3001]
Type = Pause
Trigger1 = 1
Time = 10
MoveTime = 10

[State 3001]
Type = ChangeState
Trigger1 = Time >= 6 && Command = "start"
Value = 3002

[StateDef 3002];ポーズ待機へ
Type = S
Ctrl = 0

[State 3002]
Type = Pause
Trigger1 = Time = 0
Time = 0

[State 3002]
Type = VarSet
Trigger1 = Time = 0
V = 0
Value = 0

[State 3002]
Type = BGPalFX
Trigger1 = Time = 0
Time = 1

[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3000
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3001
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3002
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3003
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3004
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3005
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3006
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3007
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3008
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3009
[State 3002]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 3010

[State 3002]
Type = ChangeState
Trigger1 = Time = 1
Value = 3000

[StateDef 3003];スーパーコンボ勝利演出
Type = S
Ctrl = 0
Anim = 99

[State 3003]
Type = Turn
Trigger1 = Facing = -1

[State 3003]
Type = AssertSpecial
Trigger1 = Time < 102
Flag = GlobalNoShadow

[State 3003]
Type = Pause
Trigger1 = TimeMod = 3,0 && Time < 102
Time = 2
MoveTime = 2

[State 3003]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 20

[State 3003]
Type = Explod
Trigger1 = Time = 0
Anim = 91
Pos = 0, 0
PosType = Left
BindTime = -1
SprPriority = -100
RemoveTime = 101
PauseMoveTime = 101
[State 3003]
Type = Explod
Trigger1 = Time = 0
Anim = 91
Pos = 319, 0
PosType = Left
BindTime = -1
SprPriority = -100
RemoveTime = 101
PauseMoveTime = 101
Facing = -1
[State 3003]
Type = Explod
Trigger1 = Time = 0
Anim = 91
Pos = 0, 239
PosType = Left
BindTime = -1
SprPriority = -100
RemoveTime = 101
PauseMoveTime = 101
VFacing = -1
[State 3003]
Type = Explod
Trigger1 = Time = 0
Anim = 91
Pos = 319, 239
PosType = Left
BindTime = -1
SprPriority = -100
RemoveTime = 101
PauseMoveTime = 101
Facing = -1
VFacing = -1
