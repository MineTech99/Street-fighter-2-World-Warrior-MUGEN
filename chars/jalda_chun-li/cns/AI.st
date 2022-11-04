;===========================================================================
; AI記述予定
;===========================================================================

[Statedef -3]

;AI Command Check
[State -3, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
trigger5 = command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
Trigger6 = Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger7 = Command = "AI_24" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28"
Trigger8 = Command = "AI_29" || Command = "AI_30" || Command = "AI_31" || Command = "AI_32"
Trigger9 = Command = "AI_33" || Command = "AI_34" || Command = "AI_35" || Command = "AI_36"
Trigger10 = Command = "AI_37" || Command = "AI_38" || Command = "AI_39" || Command = "AI_40"
Trigger11 = Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger12 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48"
Trigger13 = Command = "AI_49" || Command = "AI_00"
;Trigger14 = 1;AI即起動スイッチ「;」を解除するとプレイヤー操作不可。

V = 59
Value = 1
IgnoreHitPause = 1

;ガード
[State -3]
Type = ChangeState
Value = 120
TriggerAll = Var(59)
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger1 =! EnemyNear,HitDefAttr = ,NT,ST,HT;投げ属性以外の攻撃にのみ
Trigger1 = InGuardDist
;Trigger1 = Random = [0,990]
Trigger1 = Random < 500

[State -1];千烈脚
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = (p2statetype!=L||p2stateno!=[5110,5120])
trigger1 = (StateType!=A||Var(13)) && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||Var(19)>0) && Power = 1000 && !Var(10) && Var(30) != 1 && RoundState = 2
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,50]
Value = 2000

[State -1];空中投げ
Type = ChangeState
triggerall = var(59)>0
;triggerall = statetype=A&&Pos Y<-59&&Vel Y!=0&&P2BodyDist X<((48+(StateType=A)*5)*Const(Size.XScale))&&(StateNo=[50,51]) &&RoundState=2
triggerall = ctrl
trigger1 = P2BodyDist X < 150
trigger1 = p2statetype=A&&p2stateno!=[5000,5999]
trigger1 = p2statetype = A
trigger1 = p2movetype != H
Value = 510

[State -1];天昇脚
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType!=A
trigger1 = StateType!=A && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&!Var(10) && Var(30) != 1 && RoundState = 2
trigger1 = p2bodydist X < 70
trigger1 = p2statetype = A
trigger1 = random > 500
trigger1 = random<100&&(enemynear,vel X >3||p2stateno=[100,101])&&p2bodydist X - enemynear,vel X*3 = [-17,17]
trigger2 = ctrl
trigger2 = p2movetype = A
trigger2 = p2bodydist X = [0,30]
Value = 1302

;[State -1];百裂脚
;Type = ChangeState
;triggerall = var(59)>0 && roundstate = 2
;triggerall = statetype = S
;trigger1 = (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && Var(30) != 1 && RoundState = 2
;trigger1 = random < 900
;trigger1 = p2bodydist X = [0,60]
;Value = 1005

[State -1];スピニングバードキック
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = (p2statetype!=L||p2stateno!=[5110,5120])
triggerall = p2bodydist X = [110,120]
trigger1 = StateType!=A&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
trigger1 = random  = [900,999]
trigger2 = p2movetype = A
trigger2 = EnemyNear,HitDefAttr = SC,AT
Value = 1102

[State -1];気功拳
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
trigger1 = !NumProjID(1)&&StateType!=A&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
trigger1 = p2bodydist X > 130
trigger1 = random = [900,999]
Value = 1200

[State -1];投げ（虎襲倒）
Type = ChangeState
triggerall = var(59)>0 && ctrl && statetype != A && (p2statetype = S || p2statetype = C)
trigger1 = P2BodyDist X<(40*Const(Size.XScale))||P2BodyDist X<(55*Const(Size.XScale))&&RoundState=2
trigger1 = random < 100
trigger1 = ctrl
trigger1 = P2BodyDist X < 100 
trigger1 = statetype = S
Trigger1 = p2movetype != H && P2BodyDist X<(38*Const(Size.XScale)) &&  RoundState = 2
Trigger2 = p2movetype = A && P2BodyDist X<(38*Const(Size.XScale)) &&  RoundState = 2
Value = 500

;[State -1];近距離立ち強キック
;Type = ChangeState
;triggerall = var(59)>0 && roundstate = 2
;triggerall = StateType != A
;triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
;trigger1 = p2statetype = S
;trigger1 = p2bodydist X = [-10,20]
;trigger1 = random = [700,999]
;Value = 251

[State -1];近距離立ち中パンチ
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [30,50]
trigger1 = random = [700,999]
Value = 211

[State -1];遠距離立ち中パンチ
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [50,70]
trigger1 = random = [700,999]
Value = 210

[State -1];しゃがみ中キック
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [20,50]
trigger1 = random = [700,999]
Value = 340

[State -1];しゃがみ強キック
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [50,70]
trigger1 = random = [700,999]
Value = 350

[State -1];遠距離立ち強パンチ
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [60,80]
trigger1 = random = [700,999]
Value = 220

[State -1];遠距離立ち強キック
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType != A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2statetype = S
trigger1 = p2bodydist X = [80,85]
trigger1 = random = [700,999]
Value = 250

[State -1];空中キック
Type = ChangeState
triggerall = var(59)>0 && roundstate = 2
triggerall = StateType = A
triggerall = (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))
trigger1 = p2bodydist X = [0,80]
Value = 441

