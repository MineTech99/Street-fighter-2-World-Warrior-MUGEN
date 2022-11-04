[StateDef 1000];ヘッドプレス 弱
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 40
SorPriority = 2

[State 1000]
Type = ChangeAnim
Trigger1 = Time = 3
Value = 1000

[State 1000]
Type = StateTypeSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
Value = A

[State 1000]
Type = VelSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
X = (P2Dist X /27) +(EnemyNear,Const(Size.Head.Pos.Y)/60)
Y = (-6.8 +((EnemyNear,Const(Size.Head.Pos.Y)+85)/25)) -(P2StateType=C)*(EnemyNear,Const(Size.Mid.Pos.Y)/30) +(P2StateType=A)*(EnemyNear,Pos Y/40)
[State 1000]
Type = VelAdd
Trigger1 = Anim = 1000 && AnimElem = 1,>0
Y = .26
[State 1000]
Type = VelSet
Trigger1 = FrontEdgeDist < 2
X = 0

[State 1000]
Type = HitDef
Trigger1 = AnimElem = 4,>=0 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 119
GetPower = 0
GivePower = 0
PauseTime = 0, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = 6+Floor(P2Dist X)/4, 0
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 1000]
Type = ChangeState
Trigger1 = (Vel Y>0&&Pos Y>=0) || MoveContact
Value = IFelse(MoveContact, 1003+(EnemyNear,StateType=A), 52)

[StateDef 1001];ヘッドプレス 中
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 40
SorPriority = 2

[State 1001]
Type = ChangeAnim
Trigger1 = Time = 3
Value = 1000

[State 1001]
Type = StateTypeSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
Value = A

[State 1001]
Type = VelSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
X = (P2Dist X /27) +(EnemyNear,Const(Size.Head.Pos.Y)/60)
Y = (-6.8 +((EnemyNear,Const(Size.Head.Pos.Y)+85)/25)) -(P2StateType=C)*(EnemyNear,Const(Size.Mid.Pos.Y)/30) +(P2StateType=A)*(EnemyNear,Pos Y/40)
[State 1001]
Type = VelAdd
Trigger1 = Anim = 1000 && AnimElem = 1,>0
Y = .26
[State 1001]
Type = VelSet
Trigger1 = FrontEdgeDist < 2
X = 0

[State 1001]
Type = HitDef
Trigger1 = AnimElem = 4,>=0 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 126
GetPower = 0
GivePower = 0
PauseTime = 0, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = 6+Floor(P2Dist X)/4, 0
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 1001]
Type = ChangeState
Trigger1 = (Vel Y>0&&Pos Y>=0) || MoveContact
Value = IFelse(MoveContact, 1003+(EnemyNear,StateType=A), 52)

[StateDef 1002];ヘッドプレス 強
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 40
SorPriority = 2

[State 1002]
Type = ChangeAnim
Trigger1 = Time = 3
Value = 1000

[State 1002]
Type = StateTypeSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
Value = A

[State 1002]
Type = VelSet
Trigger1 = Anim = 1000 && AnimElem = 1,1
X = (P2Dist X /27) +(EnemyNear,Const(Size.Head.Pos.Y)/60)
Y = (-6.8 +((EnemyNear,Const(Size.Head.Pos.Y)+85)/25)) -(P2StateType=C)*(EnemyNear,Const(Size.Mid.Pos.Y)/30) +(P2StateType=A)*(EnemyNear,Pos Y/40)
[State 1002]
Type = VelAdd
Trigger1 = Anim = 1000 && AnimElem = 1,>0
Y = .26
[State 1002]
Type = VelSet
Trigger1 = FrontEdgeDist < 2
X = 0

[State 1002]
Type = HitDef
Trigger1 = AnimElem = 4,>=0 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 147
GetPower = 0
GivePower = 0
PauseTime = 0, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = 6+Floor(P2Dist X)/4, 0
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 1002]
Type = ChangeState
Trigger1 = (Vel Y>0&&Pos Y>=0) || MoveContact
Value = IFelse(MoveContact, 1003+(EnemyNear,StateType=A), 52)

[StateDef 1003];ヘッドプレス ヒット後 相手が地上にいた場合～サマーソルトスカルダイバー
Type = A
MoveType = A
Physics = N
Ctrl = 0
Anim = 1001
VelSet = 0, 0
SorPriority = 2

[State 1003]
Type = Turn
Trigger1 = AnimElem = 4 && (Command="holdfwd"||(Command!="holdback"&&Random<500))

[State 1003]
Type = VelSet
Trigger1 = AnimElem = 4,<1
Y = 0

[State 1003]
Type = VelSet
Trigger1 = AnimElem = 4,1
Y = -7-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1003]
Type = VelAdd
Trigger1 = AnimElem = 4,>1 || Anim = 1002
Y = .46
[State 1003]
Type = VelAdd
Trigger1 = (AnimElem=4,>1||Anim=1002) && (Command="holdfwd"||Command="holdback")
X = ((.14+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) -(Command="holdback")*(.28+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)))*Const(Size.XScale)
[State 1003]
Type = VelSet
Trigger1 = AnimElem = 4,>0 || Anim = 1002
X = (((-6-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))+(Command="holdfwd"&&Anim!=1002)*(4+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))-(Command="holdback"&&Anim!=1002)*(4+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))) +((Time-26)*.32))*Const(Size.XScale)

[State 1003]
Type = ChangeAnim
Trigger1 = Anim = 1001 && AnimElem = 4,>1 && (Command="x"||Command="y"||Command="z")
Value = 1002

[State 1003]
Type = HitDef
Trigger1 = Anim = 1002 && AnimElemNo(0) = 2 && !MoveContact
Attr = A, NA
HitFlag = MA
GuardFlag = H
Damage = 154 +(PrevStateNo=1000)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S50 + (Var(12)=-1)*10
SparkXY = -28+Floor(P2Dist X)/2, -54
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Light
Air.AnimType = Back
Ground.Type = Low
Ground.SlideTime = 11
Ground.HitTime = 12
Guard.HitTime = 19
Air.HitTime = 99
Ground.Velocity = -5*Const(Size.XScale)
Air.Velocity = -2*Const(Size.XScale), -6
Ground.CornerPush.VelOff = -10*Const(Size.XScale)
YAccel = .25
P2Facing = 1

[State 1003]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 52

[StateDef 1004];ヘッドプレス ヒット後 相手が空中にいた場合
Type = A
MoveType = A
Physics = N
Ctrl = 0
Anim = 1001
VelSet = 0, 0
SorPriority = 2

[State 1004]
Type = Turn
Trigger1 = Anim = 41 && AnimElem = 1,1 && (Command="holdfwd"||(Command!="holdback"&&Random<500))

[State 1004]
Type = ChangeAnim
Trigger1 = Anim = 1001 && AnimElem = 3
Value = 41

[State 1004]
Type = VelSet
Trigger1 = Anim != 41
Y = 0

[State 1004]
Type = VelSet
Trigger1 = Anim = 41 && AnimElem = 1
Y = -5-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1004]
Type = VelSet
Trigger1 = Anim = 41
X = ((-3-IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) +(Command="holdfwd")*(4.5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)) -(Command="holdback")*(6+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2)))*Const(Size.XScale)
[State 1004]
Type = VelAdd
Trigger1 = Anim = 41
Y = .26

[State 1004]
Type = ChangeState
Trigger1 = Pos Y >= 0
Value = 52

[StateDef 1100];サイコクラッシャーアタック 弱
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1100]
Type = ChangeAnim
Trigger1 = Time = 45 || FrontEdgeDist < 5
Persistent = 0
Value = 1101

[State 1100]
Type = VelSet
Trigger1 = AnimElem = 4
X = (5+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1100]
Type = StateTypeSet
Trigger1 = AnimElem = 4
Value = A
[State 1100]
Type = VelAdd
Trigger1 = AnimElem = 4,>0 || Anim = 1101
Y = .52

[State 1100]
Type = VelSet
Trigger1 = AnimElem = 5,>=0
Y = 0

[State 1100]
Type = AssertSpecial
Trigger1 = AnimElem = 5,>=0
IgnoreHitPause = 1
Flag = NoShadow
[State 1100]
Type = PlayerPush
Trigger1 = AnimElem = 5,>=0
Value = 0

[State 1100]
Type = PlaySnd
Trigger1 = AnimElem = 5
Persistent = 0
Value = 1, 0

[State 1100]
Type = Helper
Trigger1 = AnimElem = 5
Pos = 40, 0
PosType = P2
StateNo = 1106

[State 1100]
Type = HitDef
Trigger1 = AnimElem = 4 || AnimTime = 0
Attr = S, SA
HitFlag = MA
GuardFlag = M
;Priority = 5+(Var(30)=1), Miss
Damage = 175, 42
GetPower = 0
GivePower = 0
PauseTime = 14, 16
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2StateNo = 1104
P2Facing = 1

[State 1100]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1101];サイコクラッシャーアタック 中
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1101]
Type = ChangeAnim
Trigger1 = Time = 48 || FrontEdgeDist < 5
Persistent = 0
Value = 1101

[State 1101]
Type = VelSet
Trigger1 = AnimElem = 4
X = (7+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1101]
Type = StateTypeSet
Trigger1 = AnimElem = 4
Value = A
[State 1101]
Type = VelAdd
Trigger1 = AnimElem = 4,>0 || Anim = 1101
Y = .52

[State 1101]
Type = VelSet
Trigger1 = AnimElem = 5,>=0
Y = 0

[State 1101]
Type = AssertSpecial
Trigger1 = AnimElem = 5,>=0
IgnoreHitPause = 1
Flag = NoShadow
[State 1101]
Type = PlayerPush
Trigger1 = AnimElem = 5,>=0
Value = 0

[State 1101]
Type = PlaySnd
Trigger1 = AnimElem = 5
Persistent = 0
Value = 1, 0

[State 1101]
Type = Helper
Trigger1 = AnimElem = 5
Pos = 40, 0
PosType = P2
StateNo = 1106

[State 1101]
Type = HitDef
Trigger1 = AnimElem = 4 || AnimTime = 0
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 182, 42
GetPower = 0
GivePower = 0
PauseTime = 14, 16
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2StateNo = 1104
P2Facing = 1

[State 1101]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1102];サイコクラッシャーアタック 強
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1100
SorPriority = 2

[State 1102]
Type = ChangeAnim
Trigger1 = Time = 78 || FrontEdgeDist < 5
Persistent = 0
Value = 1101

[State 1102]
Type = VelSet
Trigger1 = AnimElem = 4
X = (9+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -3-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1100]
Type = StateTypeSet
Trigger1 = AnimElem = 4
Value = A
[State 1102]
Type = VelAdd
Trigger1 = AnimElem = 4,>0 || Anim = 1101
Y = .52

[State 1102]
Type = VelSet
Trigger1 = AnimElem = 5,>=0
Y = 0

[State 1102]
Type = AssertSpecial
Trigger1 = AnimElem = 5,>=0
IgnoreHitPause = 1
Flag = NoShadow
[State 1102]
Type = PlayerPush
Trigger1 = AnimElem = 5,>=0
Value = 0

[State 1102]
Type = PlaySnd
Trigger1 = AnimElem = 5
Persistent = 0
Value = 1, 0

[State 1102]
Type = Helper
Trigger1 = AnimElem = 5
Pos = 40, 0
PosType = P2
StateNo = 1106

[State 1102]
Type = HitDef
Trigger1 = AnimElem = 4 || AnimTime = 0 || Time = 49
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 196, 49
GetPower = 0
GivePower = 0
PauseTime = 14, 16
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = 10, -45
HitSound = S0, 3
GuardSound = S0, 0
AnimType = Up
Ground.Type = Low
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -1.5*Const(Size.XScale), -5
Guard.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Fall = 1
Fall.Recover = 0
Fall.YVelocity = -4
YAccel = .25
P2StateNo = 1104
P2Facing = 1

[State 1102]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1103];サイコクラッシャーアタック 着地
Type = S
MoveType = A
Physics = S
Ctrl = 0
VelSet = 0, 0

[State 1103]
Type = PosSet
Trigger1 = Time = 0
Y = 0

[State 1103]
Type = ChangeAnim
Trigger1 = Time = 0 && PrevStateNo = [1200,1202]
Value = 40
[State 1103]
Type = ChangeAnim
Trigger1 = Time = 0 && Anim = 1100
Value = 1101

[State 1103]
Type = ChangeState
Trigger1 = (AnimTime=0&&PrevStateNo=[1100,1102]) || (Time=6+(PrevStateNo=1201)+(PrevStateNo=1202)*2&&PrevStateNo=[1200,1202])
Value = 0 +(PrevStateNo=[1200,1202])*11
Ctrl = 1

[StateDef 1104];サイコ炎上喰らい
Type = A
MoveType = H
Physics = N
VelSet = 0, 0
SprPriority = -1

[State 1104]
Type = NotHitBy
Trigger1 = 1
Value = SCA

[State 1104]
Type = AssertSpecial
Trigger1 = 1
Flag = Invisible

[State 1104]
Type = ChangeAnim
Trigger1 = 1
IgnoreHitPause = 1
Value = 5030

[State 1104]
Type = HitVelSet
Trigger1 = HitShakeOver && PrevStateNo != 505
Persistent = 0
X = 1
Y = 1
[State 1104]
Type = VelAdd
Trigger1 = HitShakeOver
Y = GetHitVar(YAccel)

[State 1104]
Type = ChangeState
TriggerAll = BackEdgeDist < 2 && Time > 0 && PrevStateNo != 505
Trigger1 = Name="SSF2Xリュウ"||Name="SF2'リュウ"||Name="SF2'ケン"||Name="SF2'サガット"||Name="SF2'ガイル"||Name="SF2'春麗"||Name="SF2'ザンギエフ"||(Name="SSF2Xダルシム"&&!Var(10))
Trigger2 = Name="SF2'ベガ"
Value = 505

[State 1104]
Type = SelfState
Trigger1 = Vel Y > 0 &&  Pos Y >= 20
Value = 5100

[StateDef 1105];炎上喰らいヘルパー
Type = A
MoveType = I
Physics = N
Anim = 99

[State 1105]
Type = Turn
Trigger1 = ((Facing=1&&EnemyNear,Facing!=1)||(Facing!=1&&EnemyNear,Facing=1)) && Time = 1 && PrevStateNo != 1106

[State 1105]
Type = RemoveExplod
Trigger1 = ((P2StateNo=1104&&EnemyNear,Time=1) || Time < 15 || P2StateNo != [505,1104]) && NumExplod(1)
ID = 1
[State 1105]
Type = Explod
Trigger1 = !NumExplod(1) && ((P2StateNo=1104&&EnemyNear,Time=1) || Time < 15)
Anim = 1102
ID = 1
Pos = 0, 0
PosType = P2
BindTime = -1
SprPriority = 0
RemoveTime = -1
RemoveOnGetHit = 1
Scale = Const(Size.XScale), 1

[State 1105]
Type = PosAdd
Trigger1 = 1
X = P2Dist X
Y = P2Dist Y

[State 1105]
Type = DestroySelf
Trigger1 = !NumExplod(1)

[StateDef 1106];炎上喰らいヘルパー予約
Type = A
MoveType = I
Physics = N
Anim = 99
VelSet = ((5+(Parent,StateNo=1101)*2+(Parent,StateNo=1102)*4)+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)

[State 1106]
Type = ChangeState
Trigger1 = (Parent,MoveHit||Parent,MoveType=H) && P2MoveType = H
Value = 1105

[State 1106]
Type = DestroySelf
Trigger1 = Parent,MoveType != H && Parent,StateNo != [1100,1102]

[StateDef 1200];ダブルニープレス 弱
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SprPriority = 2

[State 1200]
Type = VelSet
Trigger1 = AnimElem = 2
X = (6.3+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -1-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1200]
Type = VelAdd
Trigger1 = AnimElem = 2,>0
Y = .098

[State 1200]
Type = VelAdd
Trigger1 = StateType = A && Var(9) = [-3,-2]
Y = .01

[State 1200]
Type = StateTypeSet
Trigger1 = AnimElem = 2
Value = A

[State 1200]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 1200]
Type = HitDef
Trigger1 = AnimElem = 4 || (AnimElem=5&&MoveGuarded)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 175 -(AnimElem=5)*49, 42 -(AnimElem=5)*7
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
P2Facing = 1
[State 1200]
Type = HitDef
Trigger1 = AnimElem = 5 && !MoveGuarded
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 126, 35
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
Ground.SlideTime = 21
Ground.HitTime = 20
Guard.HitTime = 29
Air.HitTime = 20
Ground.Velocity = -9*Const(Size.XScale)
Air.Velocity = -1.5*Const(Size.XScale), -5
Ground.CornerPush.VelOff = -18*Const(Size.XScale)
P2Facing = 1

[State 1200]
Type = ChangeState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value = 1103

[StateDef 1201];ダブルニープレス 中
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SprPriority = 2

[State 1201]
Type = VelSet
Trigger1 = AnimElem = 2
X = (8.3+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -1-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1201]
Type = VelAdd
Trigger1 = AnimElem = 2,>0
Y = .098

[State 1201]
Type = VelAdd
Trigger1 = StateType = A && Var(9) = [-3,-2]
Y = .01

[State 1201]
Type = StateTypeSet
Trigger1 = AnimElem = 2
Value = A

[State 1201]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 1201]
Type = HitDef
Trigger1 = AnimElem = 4 || (AnimElem=5&&MoveGuarded)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 182 -(AnimElem=5)*56, 49 -(AnimElem=5)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
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
Type = HitDef
Trigger1 = AnimElem = 5 && !MoveGuarded
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 126, 28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
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

[StateDef 1202];ダブルニープレス 強
Type = U
MoveType = A
Physics = N
Ctrl = 0
VelSet = 0, 0
Anim = 1200
SprPriority = 2

[State 1202]
Type = VelSet
Trigger1 = AnimElem = 2
X = (10.4+IFelse(Var(4)>=0,Var(4)*2,Var(4)/2))*Const(Size.XScale)
Y = -1-IFelse(Var(7)>=0,Var(7)*2,Var(7)/2)
[State 1202]
Type = VelAdd
Trigger1 = AnimElem = 2,>0
Y = .098

[State 1202]
Type = VelAdd
Trigger1 = StateType = A && Var(9) = [-3,-2]
Y = .01

[State 1202]
Type = StateTypeSet
Trigger1 = AnimElem = 2
Value = A

[State 1202]
Type = PlaySnd
Trigger1 = Time = 0
Value = 0, 9

[State 1202]
Type = HitDef
Trigger1 = AnimElem = 4 || (AnimElem=5&&MoveGuarded)
Attr = S, SA
HitFlag = MA
GuardFlag = M
Damage = 196 -(AnimElem=5)*56, 49 -(AnimElem=5)*21
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
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
Type = HitDef
Trigger1 = AnimElem = 5 && !MoveGuarded
Attr = S, SA
HitFlag = MA
GuardFlag = L
Damage = 140, 28
GetPower = 0
GivePower = 0
PauseTime = 14, 14
SparkNo = S54+TeamSide + (Var(12)=-1)*10
Guard.SparkNo = S54+(TeamSide) + (Var(12)=-1)*10
SparkXY = -20+Floor(P2Dist X)/2, -62 +(AnimElem=5)*52
HitSound = S0, 6
GuardSound = S0, 0
AnimType = Hard
Air.AnimType = Back
Ground.Type = High
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