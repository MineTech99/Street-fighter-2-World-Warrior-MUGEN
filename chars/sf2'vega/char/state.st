[StateDef -2]
[State -2];仕様の初期設定。
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 10
Value = 1;←ここの値が0でダッシュモード。1でボスモード。
;Value = IFelse(PalNo=3,1,0);←	こう書くとCボタンカラーの時にボスモード。

[State -2];気絶可否。
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 5
Value = 0;←ここの値が0で気絶あり。1で気絶なし。

[State -2];空中ガードなし
Type = AssertSpecial
Trigger1 = 1
Flag = NoAirGuard

[State -2];金色化
Type = PalFx
Trigger1 = Var(12) = -2 && RoundState = 2
IgnoreHitPause = 1
Time = 6
Color = 0
Add = 160,80,0
Mul = 255, 255, 255

[State -2];重力調整
Type = VelAdd
Trigger1 = StateType = A && MoveType != H && StateNo != [1000,1002]
Y = (Var(9)=1)*.21 + (Var(9)=2)*.5 + (Var(9)=3)*.79 - (Var(9)=-1)*.015 - (Var(9)=-2)*.09 - (Var(9)=-3)*.1

[State -2];守備力調整
Type = DefenceMulSet
Trigger1 = 1
Value = 1 + (Var(12)=-1)*.3 + (Var(12)=-2)*.6 + (Var(12)=-3)*.9 - (Var(12)=1)*.3 - (Var(12)=2)*.6 - (Var(12)=3)*.9

[State -2];喰らい系ステートではコントロール不可
Type = CtrlSet
Trigger1 = StateNo = [5000,5999]
Value = 0

[State -2];相手が喰らい回復時は追撃不可
Type = StateTypeSet
Trigger1 = MoveType = A && EnemyNear,StateNo = [5020,5099]
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
Value = 0, 11
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

[State -2];気絶処理
Type = VarAdd
Trigger1 = !Var(5) && !Var(8) && GetHitVar(Damage) > 0 && (StateNo != [150, 199])
V = 1
Value = GetHitVar(Damage)
[State -2]
Type = NotHitBy
Trigger1 = Var(1) > 400 && StateNo = [5100,5120]
Value = SCA
[State -2]
Type = RemoveExplod
Trigger1 = NumExplod(2) != 0 && StateNo < 5030 && StateNo != [4000, 4009]
ID = 2
[State -2]
Type = VarSet
Trigger1 = (!Var(8) && StateNo = 4001) || (Var(8) && MoveType != H)
V = 8
Value = IFelse(Var(8), 0, 1)

[State -2];キャンセル処理
Type = VarSet
Trigger1 = Var(6) = -1 && MoveContact && (StateNo=200||StateNo=300)
V = 6
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(6) > 0 || (Var(6)=0&&StateNo!=[200,499])
V = 6
Value = -1

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

[State -2];振り向き対応
Type = AssertSpecial
Trigger1 = P2Name = "madgear" || P4Name = "madgear" || P2Name = "BONUS AREA" || P4Name = "BONUS AREA"
Flag = NoAutoTurn
[State -2]
Type = Turn
Trigger1=Command="holdback"&&RoundState=2&&Ctrl&&StateType=S&&(P2Name="madgear"||P4Name="madgear"||P2Name="BONUS AREA"||P4Name="BONUS AREA")

;ここから下はいんちきプログラム。
[State -2];いんちきプログラム開始用ヘルパー出現
Type = Helper
Trigger1 = NumHelper(30) = 0 && Var(30) < 2
ID = 30
StateNo = 990
KeyCtrl = 1

[State -2];敵と距離が離れてる時はサイコクラッシャーアタック！
Type = ChangeState
Trigger1 = StateType != A && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && NumProjID(1) = 0 && P2Dist X > 130 && Random < 50+Var(10)*30 && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<100, 1100, IFelse(Random<600, 1101, 1102))

[State -1];たまにヘッドプレス。
Type = ChangeState
Trigger1 = StateType != A && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && Random < 20+Var(10)*20 && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<500, 1002, IFelse(Random<700, 1001, 1000))

[State -2];敵の隙をついてダブルニープレス。
Type = ChangeState
Trigger1 = P2Dist X < 160 && StateType != A && Ctrl && Random < 20+Var(10)*40 && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<400, 1202, IFelse(Random<600, 1201, 1200))

[State -2];敵がしゃがみ攻撃を出してる時はジャンプし易く。
Type = ChangeState
Trigger1 = StateType = S && Ctrl && P2Dist X > 40 && EnemyNear,MoveType = A && EnemyNear,StateType = C && Random < 10 && Var(30) = 1 && RoundState = 2
Value = 40
[State -2];前後ジャンプを状況に合わせて
Type = VarSet
Trigger1 = Time = 1 && StateNo = 40 && Var(30) = 1 && RoundState = 2
sysvar(1) = IFelse(P2Dist X>120||Random<333||EnemyNear,NumProjID(0)!=0, 1, IFelse(P2Dist X<80||Random<666, -1, 0))

[State -2];敵が遠くで飛び道具を撃ったらヘッドプレスで逃げたり。
Type = ChangeState
Trigger1 = StateType != A && Ctrl && P2Dist X > 160 && EnemyNear,NumProjID(0) != 0 && Random < 40+Var(10)*80 && Var(30) = 1 && RoundState = 2
Value = 1002

[State -2];近くに寄ったら投げてみよう。ごくごくたまに。
Type = ChangeState
Trigger1 = StateNo = 20 && P2Dist X < 20 && Ctrl && Random < 20 && StateType != A && Var(30) = 1 && RoundState = 2
Value = 500

[State -2];通常技キャンセル必殺技。
Type = ChangeState
Trigger1 = Var(6) > 0 && StateType != A && Random < 40+Var(10)*80 && Var(30) = 1
Value = IFelse(Random<250, 1202, 1101)

[State -2];立ち攻撃
Type = ChangeState
Trigger1 = P2Dist X < 80 && Random < 50 && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<175||(P2MoveType=A&&EnemyNear,Time<6),200,IFelse(Random<250, 210,IFelse(Random<500,220,IFelse(Random<675||(P2MoveType=A&&EnemyNear,Time<6),230,IFelse(Random<750,240,250)))))
[State -2];しゃがみ攻撃
Type = ChangeState
Trigger1 = P2Dist X < 60 && ((Random<30&&StateType=S)||(Random<100&&StateType=C)) && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<175, 300, IFelse(Random<250, 310, IFelse(Random<500, 320, IFelse(Random<675, 330, IFelse(Random<750, 340, 350)))))
[State -2];ホバーキック
Type = ChangeState
Trigger1 = P2Dist X < 200 && ((Random<10+Var(10)*30&&StateType=S)||(Random<20+Var(10)*40&&StateType=C)) && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = 350
[State -2];空中攻撃
Type = ChangeState
Trigger1 = P2Dist X < 100 && (P2Dist Y=[-10,20]) && Random < 50 && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<175,400,IFelse(Random<250,410,IFelse(Random<500,420,IFelse(Random<675,430+(Vel X!=0),IFelse(Random<750,440+(Vel X!=0),450+(Vel X!=0))))))

[StateDef 990];いんちきぷろぐらむ発動ヘルパー
Type = S
Physics = S
Ctrl = 0
Anim = 99
[State 990]
Type = LifeSet
Trigger1 = Time = 0
Value = 1
[State 990]
Type = ParentVarSet
Trigger1 = Time = 300
V = 30
Value = 1
[State 990]
Type = ChangeState
TrjggerAll = RoundState = 2
Trigger1 = (Command="holdup"&&Parent,Command="holdup")||(Command="holddown"&&Parent,Command="holddown")||(Command="holdfwd"&&Parent,Command="holdfwd")||(Command="holdback"&&Parent,Command="holdback")
Trigger2 = (Command="a"&&Parent,Command="a")||(Command="b"&&Parent,Command="b")||(Command="c"&&Parent,Command="c")||(Command="x"&&Parent,Command="x")||(Command="y"&&Parent,Command="y")||(Command="z"&&Parent,Command="z")
Trigger3 = Life > 1
Value = 991
[StateDef 991]
Type = S
Physics = S
[State 991]
Type = ParentVarSet
Trigger1 = Time = 0
V = 30
Value = 2
[State 991]
Type = DestroySelf
Trigger1 = Time = 0