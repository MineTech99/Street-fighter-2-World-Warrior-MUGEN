;===========================================================================
; 常時監視ステート（－２）
;===========================================================================
;---------------------------------------------------------------------------
; 通常の食らい状態（Statedef 5000～5199間）でも、
; 相手に（「P2StateNo」や「TargetState」等で）制御を奪われても、
; 常に登録したステートコントローラが有効になります。
; サブシステム等を制御する時に重宝するでしょう。
;---------------------------------------------------------------------------

[Statedef -2]
[State -2, 変数];板投げ用
type = VarSet
trigger1 = (StateNo != 1300)
var(5) = 0

;-----------------------------------
;ここは「パワー溜め」のステートで発生させた「Explod」のエフェクト画像を
;特定の条件が有効になれば消す、という処理をしています。

[State -2, エフェクトを消す];パワー溜めステート用
type = RemoveExplod
triggerall = NumExplod(130) > 0
                          ;↑はＩＤナンバー「130」のExplodの画面中の数が0よりも多い、
                          ;つまり１枚以上表示されている時
trigger1 = StateNo != 700 ;ステートが７００（パワー溜め）以外の時
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 130                  ;消すExplodの特定のＩＤナンバーを指定

;-----------------------------------
[State -2, クリップボード]
type = DisplayToClipboard
trigger1 = 1
text = "Cancel=%d, Throw=%d, Button=%d, Body-Distance X=%d,Y=%d \n"
params = var(1),var(2),var(5),floor(P2BodyDist X),floor(P2BodyDist Y)

[State -2, クリップボード（追加専用）]
type = AppendToClipboard
trigger1 = 1
text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)

[State -2];仕様の初期設定。
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 10
;Value = 0;←ここの値が0でノーマルモード。1でＸスーパーモード。
Value = IFelse((PalNo=[9,10]),1,0);←こう書くとPalNoが9,10の時にＸスーパーモード。

[State -2];気絶可否。
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 5
Value = 1;←ここの値が0で気絶あり。1で気絶なし。

[State -2];空中ガードなし
Type = AssertSpecial
Trigger1 = 1
Flag = NoAirGuard

[State -2];喰らい系ステートではコントロール不可
Type = CtrlSet
Trigger1 = StateNo = [5000,5999]
Value = 0

[State -2];相手が喰らい回復時は追撃不可
Type = StateTypeSet
Trigger1 = MoveType = A && (StateNo!=[1300,1399]) && EnemyNear,StateNo = [5020,5099]
IgnoreHitPause = 1
MoveType = I
[State -2]
Type = StateTypeSet
Trigger1 = MoveType = I && (StateNo = [200,2000]) && EnemyNear,StateNo != [5020,5099]
MoveType = A

[State -2];画面端で転倒すると何かに引っ掛かる
Type = ChangeState
Trigger1 = !Var(21) && Time > 0 && BackEdgeDist < 2 && ((StateNo = [5030, 5050]) || StateNo = 5071 || StateNo = 4000)
Value = 5042
[State -2]
Type = VarSet
Trigger1 = Var(21) && MoveType != H && StateNo != [5040,5049]
V = 21
Value = 0

[State -2];ダウン時の音とエフェクト
Type = PlaySnd
Trigger1 = Time = 1 && (StateNo = 5100 || (StateNo = 5111 && (PrevStateNo=5050||PrevStateNo=5071||PrevStateNo=5100)))
Value = S0, 11
[State -2]
Type = Explod
Trigger1 = Time = 1 && (StateNo = 5100 || StateNo = 5111)
Anim = 93
Pos = 0, 0
PosType = P1
SprPriority = -10
OwnPal = 1
Scale = Const(Size.XScale), 1

[State -2];立ち強攻撃喰らいエフェクト
Type = Explod
Trigger1 = GetHitVar(AnimType) = 2 && (GetHitVar(GroundType)=[1,2]) && StateNo = 5000 && Time = 1 && NumExplod(1) = 0 && Random < 750
IgnoreHitPause = 0
Anim = IFelse(GetHitVar(GroundType)=1, 71, 73)+(Random<500) + (Var(12)=-1)*10
ID = 1
Pos = 0, 0
PosType = P1
BindTime = -1
SprPriority = 1
RemoveOnGetHit = 1
Scale = Const(Size.XScale), 1
[State -2];攻撃喰らい演出エフェクト消去
Type = RemoveExplod
Trigger1 = NumExplod(1) = 1 && (MoveType!=H&&StateNo!=[5040,5041])
IgnoreHitPause = 0
ID = 1
[State -2];攻撃喰らい時の埃
Type = Explod
Trigger1 = (StateNo = 151 || StateNo = 153 || StateNo = 5001 || StateNo = 5011) && Time = 1
Anim = 70 + (Var(12)=-1)*10
Pos = 0, 0
PosType = P1
SprPriority = 10
OwnPal = 1
BindTime = -1
Scale = Const(Size.XScale), 1
[State -2]
Type = Explod
Trigger1 = StateNo = 5100
Anim = 75 + (Var(12)=-1)*10
Pos = Floor((-40 + Random/12.5)*Const(Size.XScale)), 0 - Random/50
PosType = P1
Velocity = 0, -3
SprPriority = 10
OwnPal = 1
Scale = Const(Size.XScale), 1

[State -2];気絶音消去
Type = StopSnd
Trigger1 = RoundState = 3 || ((StateNo=5000||StateNo=5010||StateNo=5020||StateNo=5070||StateNo!=[5000,5120]) && StateNo != [4000,4009])
Channel = 6

[State -2];気絶処理
Type = VarAdd
Trigger1 = !Var(5) && !Var(8) && GetHitVar(Damage) > 0 && (StateNo != [150,199])
V = 1
Value = GetHitVar(Damage)
[State -2]
Type = NotHitBy
Trigger1 = Var(1) > 400 && StateNo = [5100,5120]
Value = SCA
[State -2]
Type = RemoveExplod
Trigger1 = NumExplod(2) != 0 && StateNo < 5030 && StateNo != [4000,4009]
ID = 2
[State -2]
Type = VarSet
Trigger1 = (!Var(8) && StateNo = 4001) || (Var(8) && MoveType != H)
V = 8
Value = IFelse(Var(8), 0, 1)

[State -2];キャンセル処理
Type = VarSet
Trigger1 = Var(6) = -1 && MoveContact && (((StateNo=220||StateNo=260)&&Var(10))||StateNo=221||StateNo=231||StateNo=241||(StateNo=[300,310])||(StateNo=[330,340])||StateNo=[200,211])
V = 6
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(6) > 0 || (Var(6)=0&&StateNo!=[200,399])
V = 6
Value = -1
[State -2];スーパーキャンセル処理
Type = VarSet
Trigger1 = Var(19) = -1 && MoveContact && !Var(10) && StateNo = 230
V = 19
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(19) > 0 || (Var(19)=0&&StateNo!=[200,499]) && !Var(10)
V = 19
Value = -1

[State -2];残像消去
Type = AfterImageTime
Trigger1 = PrevStateNo = 2000 || MoveType = H
Time = 0

[State -2];試合開始時パワー0
Type = PowerSet
Trigger1 = RoundState = 0 && Power > 0
Value = 0

[State -2];技表
Type = Helper
Trigger1 = NumHelper(3000) = 0
Name = "Pause"
ID = 3000
Pos = 0, -600
PosType = Back
StateNo = 3000
KeyCtrl = 1
OwnPal = 1
