[StateDef -2]
[State -2];�d�l�̏����ݒ�B
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 10
Value = 0;�������̒l��0�Ń_�b�V�����[�h�B1�ŃA�����W���[�h�B2�ő҂��K�C�����[�h�i�񐄏��j�B
;Value = IFelse(PalNo=3,1,0);��	����������C�{�^���J���[�̎��ɃA�����W���[�h�B

[State -2];�C��ہB
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 5
Value = 0;�������̒l��0�ŋC�₠��B1�ŋC��Ȃ��B

[State -2];���F��
Type = PalFx
Trigger1 = Var(12) = -2 && RoundState = 2
IgnoreHitPause = 1
Time = 6
Color = 0
Add = 160,80,0
Mul = 255, 255, 255

[State -2];�󒆃K�[�h�Ȃ�
Type = AssertSpecial
Trigger1 = 1
Flag = NoAirGuard

[State -2];�d�͒���
Type = VelAdd
Trigger1 = StateType = A && MoveType != H
Y = (Var(9)=1)*.21 + (Var(9)=2)*.5 + (Var(9)=3)*.79 - (Var(9)=-1)*.015 - (Var(9)=-2)*.09 - (Var(9)=-3)*.1

[State -2];����͒���
Type = DefenceMulSet
Trigger1 = 1
Value = 1 + (Var(12)=-1)*.3 + (Var(12)=-2)*.6 + (Var(12)=-3)*.9 - (Var(12)=1)*.3 - (Var(12)=2)*.6 - (Var(12)=3)*.9

[State -2];��炢�n�X�e�[�g�ł̓R���g���[���s��
Type = CtrlSet
Trigger1 = StateNo = [5000,5999]
Value = 0

[State -2];���肪��炢�񕜎��͒ǌ��s��
Type = StateTypeSet
Trigger1 = MoveType = A && EnemyNear,StateNo = [5020,5099]
IgnoreHitPause = 1
MoveType = I
[State -2]
Type = StateTypeSet
Trigger1 = MoveType = I && (StateNo = [200,2000]) && EnemyNear,StateNo != [5020,5099]
MoveType = A

[State -2];��ʒ[�œ]�|����Ɖ����Ɉ����|����
Type = ChangeState
Trigger1 = !Var(21) && Time > 0 && BackEdgeDist < 2 && ((StateNo = [5030, 5050]) || StateNo = 5071 || StateNo = 4000)
Value = 5042
[State -2]
Type = VarSet
Trigger1 = Var(21) && MoveType != H && StateNo != [5040,5049]
V = 21
Value = 0

[State -2];�_�E�����̉��ƃG�t�F�N�g
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

[State -2];�������U����炢�G�t�F�N�g
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
[State -2];�U����炢���o�G�t�F�N�g����
Type = RemoveExplod
Trigger1 = NumExplod(1) = 1 && (MoveType!=H&&StateNo!=[5040,5041])
IgnoreHitPause = 0
ID = 1
[State -2];�U����炢���̚�
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

[State -2];�C�⏈��
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

[State -2];�L�����Z������
Type = VarSet
Trigger1 = Var(6) = -1 && MoveContact && ((StateNo=[200,211])||StateNo=221||StateNo=[300,310])
V = 6
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(6) > 0 || (Var(6)=0&&StateNo!=[200,399])
V = 6
Value = -1

[State -2];�Z�\
Type = Helper
Trigger1 = NumHelper(3000) = 0
Name = "Pause"
ID = 3000
Pos = 0, -600
PosType = Back
StateNo = 3000
KeyCtrl = 1
OwnPal = 1

[State -2];�U������Ή�
Type = AssertSpecial
Trigger1 = P2Name = "madgear" || P4Name = "madgear" || P2Name = "BONUS AREA" || P4Name = "BONUS AREA"
Flag = NoAutoTurn
[State -2]
Type = Turn
Trigger1=Command="holdback"&&RoundState=2&&Ctrl&&StateType=S&&(P2Name="madgear"||P4Name="madgear"||P2Name="BONUS AREA"||P4Name="BONUS AREA")

;�������牺�͂��񂿂��v���O�����B
[State -2];���񂿂��v���O�����J�n�p�w���p�[�o��
Type = Helper
Trigger1 = NumHelper(30) = 0 && Var(30) < 2
ID = 30
StateNo = 990
KeyCtrl = 1

[State -2];�G�Ƌ���������Ă鎞�̓\�j�b�N�u�[�������܂ɁB
Type = ChangeState
Trigger1 = StateType != A && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && NumProjID(1) = 0 && P2Dist X > 130 && Random < 20 && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<100, 1000, IFelse(Random<600, 1001, 1002))

[State -1];�T�}�\�b�I
Type = ChangeState
Trigger1 = StateType != A && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && P2Dist X < 60 && ((P2StateType=A&&P2Dist Y=[10,80])||(P2StateType=S&&P2MoveType=A)) && Random < 80 && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<500, 1100, IFelse(Random<700, 1101, 1102))

[State -2];�G�����Ⴊ�ݍU�����o���Ă鎞�̓W�����v���Ղ��B
Type = ChangeState
Trigger1 = StateType = S && Ctrl && P2Dist X > 40 && EnemyNear,MoveType = A && EnemyNear,StateType = C && Random < 10 && Var(30) = 1 && RoundState = 2
Value = 40
[State -2];�O��W�����v���󋵂ɍ��킹��
Type = VarSet
Trigger1 = Time = 1 && StateNo = 40 && Var(30) = 1 && RoundState = 2
sysvar(1) = IFelse(P2Dist X>120||Random<333||EnemyNear,NumProjID(0)!=0, 1, IFelse(P2Dist X<80||Random<666, -1, 0))

[State -2];�G���߂��Ŕ�ѓ������������W�����v�B
Type = ChangeState
Trigger1 = StateType != A && Ctrl && P2Dist X < 70 && EnemyNear,NumProjID(0) != 0 && Random < 100 && Var(30) = 1 && RoundState = 2
Value = 40

[State -2];�G�������Ŕ�ѓ�����������瑊�E�̂��߁A���\�j�u�B
Type = ChangeState
Trigger1 = StateType != A && Ctrl && !NumProjID(1) && P2Dist X > 120 && EnemyNear,NumProjID(0) != 0 && Random < 100 && Var(30) = 1 && RoundState = 2
Value = 1001

[State -2];�߂��Ɋ�����瓊���Ă݂悤�B���܂ɁB
Type = ChangeState
Trigger1 = P2Dist X < 20 && Ctrl && Random < 40 && StateType != A && Var(30) = 1 && RoundState = 2
Value = 500 + (Random>500)*10
[State -2];�󒆓��������܂ɁB
Type = ChangeState
Trigger1 = P2Dist X < 20 && (P2Dist Y=[-20,20]) && Ctrl && Random < 40 && StateType = A && Var(30) = 1 && RoundState = 2
Value = 520 + (P2Dist Y>0)*10

[State -2];�ʏ�Z�L�����Z���K�E�Z�B�n��B
Type = ChangeState
Trigger1 = Var(6) > 0 && StateType != A && Random < 100 && Var(30) = 1
Value = IFelse(Random<500, 1002, 1102)

[State -1];�A�����W������U��
Type = ChangeState
Trigger1=Random<50&&P2Dist X<100&&StateType=S&&(Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))&&Var(10)=1&Var(30)=1&RoundState=2
Value = IFelse(Random<250,201,IFelse(Random<500,IFelse(P2Dist X<(85*Const(Size.XScale)),260,252),253))
[State -1]
Type = ChangeState
Trigger1=Random<50&&P2Dist X<100&&StateType=S&&(Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))&&Var(10)=1&Var(30)=1&RoundState=2
Value = IFelse(P2Dist X>(84*Const(Size.XScale)),222,240)
[State -1]
Type = ChangeState
Trigger1=Random<50&&P2Dist X<100&&StateType=S&&(Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))&&Var(10)=1&Var(30)=1&RoundState=2
Value = IFelse(Random>500,242,251)

[State -1];����U��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))&&Var(30)=1&&RoundState=2
Value = IFelse(Random<500||P2Dist X>(84*Const(Size.XScale)),270,260)

[State -1];�����p���`�U��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<333,200,IFelse(Random<666,210+(P2BodyDist X<(38*Const(Size.XScale))),220+(P2BodyDist X<(60*Const(Size.XScale)))))
[State -1];�����L�b�N�U��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<333,230,IFelse(Random<666,240+(P2BodyDist X<(38*Const(Size.XScale))),250+(P2BodyDist X<(38*Const(Size.XScale)))))
[State -1];���Ⴊ�ݍU��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = C && (Ctrl||(Var(10)=2&&StateNo=1)||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<150, 300, IFelse(Random<300, 310, IFelse(Random<450, 320, IFelse(Random<600, 330, IFelse(Random<750, 340, 350)))))
[State -1];�󒆃p���`�U��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<333,IFelse(Vel X=0,400,401),IFelse(Random<333,IFelse(Vel X=0,410,411),IFelse(Vel X=0,420,421)))
[State -1];�󒆃L�b�N�U��
Type = ChangeState
Trigger1 = Random<50&&P2Dist X<100 && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) = 1 && RoundState = 2
Value = IFelse(Random<333,IFelse(Vel X=0,430,431),IFelse(Random<666,IFelse(Vel X=0,440,441),450))

[StateDef 990];���񂿂��Ղ낮��ޔ����w���p�[
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