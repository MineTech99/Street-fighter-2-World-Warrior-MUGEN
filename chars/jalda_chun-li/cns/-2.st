;===========================================================================
; �펞�Ď��X�e�[�g�i�|�Q�j
;===========================================================================
;---------------------------------------------------------------------------
; �ʏ�̐H�炢��ԁiStatedef 5000�`5199�ԁj�ł��A
; ����Ɂi�uP2StateNo�v��uTargetState�v���Łj�����D���Ă��A
; ��ɓo�^�����X�e�[�g�R���g���[�����L���ɂȂ�܂��B
; �T�u�V�X�e�����𐧌䂷�鎞�ɏd�󂷂�ł��傤�B
;---------------------------------------------------------------------------

[Statedef -2]
[State -2, �ϐ�];�����p
type = VarSet
trigger1 = (StateNo != 1300)
var(5) = 0

;-----------------------------------
;�����́u�p���[���߁v�̃X�e�[�g�Ŕ����������uExplod�v�̃G�t�F�N�g�摜��
;����̏������L���ɂȂ�Ώ����A�Ƃ������������Ă��܂��B

[State -2, �G�t�F�N�g������];�p���[���߃X�e�[�g�p
type = RemoveExplod
triggerall = NumExplod(130) > 0
                          ;���͂h�c�i���o�[�u130�v��Explod�̉�ʒ��̐���0���������A
                          ;�܂�P���ȏ�\������Ă��鎞
trigger1 = StateNo != 700 ;�X�e�[�g���V�O�O�i�p���[���߁j�ȊO�̎�
trigger2 = MoveType != I  ;MoveType���uI�i�������ĂȂ��j�v�ȊO�̎�
ID = 130                  ;����Explod�̓���̂h�c�i���o�[���w��

;-----------------------------------
[State -2, �N���b�v�{�[�h]
type = DisplayToClipboard
trigger1 = 1
text = "Cancel=%d, Throw=%d, Button=%d, Body-Distance X=%d,Y=%d \n"
params = var(1),var(2),var(5),floor(P2BodyDist X),floor(P2BodyDist Y)

[State -2, �N���b�v�{�[�h�i�ǉ���p�j]
type = AppendToClipboard
trigger1 = 1
text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)

[State -2];�d�l�̏����ݒ�B
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 10
;Value = 0;�������̒l��0�Ńm�[�}�����[�h�B1�łw�X�[�p�[���[�h�B
Value = IFelse((PalNo=[9,10]),1,0);������������PalNo��9,10�̎��ɂw�X�[�p�[���[�h�B

[State -2];�C��ہB
Type = VarSet
Trigger1 = RoundState = 0 && Var(30) != 2
V = 5
Value = 1;�������̒l��0�ŋC�₠��B1�ŋC��Ȃ��B

[State -2];�󒆃K�[�h�Ȃ�
Type = AssertSpecial
Trigger1 = 1
Flag = NoAirGuard

[State -2];��炢�n�X�e�[�g�ł̓R���g���[���s��
Type = CtrlSet
Trigger1 = StateNo = [5000,5999]
Value = 0

[State -2];���肪��炢�񕜎��͒ǌ��s��
Type = StateTypeSet
Trigger1 = MoveType = A && (StateNo!=[1300,1399]) && EnemyNear,StateNo = [5020,5099]
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

[State -2];�C�≹����
Type = StopSnd
Trigger1 = RoundState = 3 || ((StateNo=5000||StateNo=5010||StateNo=5020||StateNo=5070||StateNo!=[5000,5120]) && StateNo != [4000,4009])
Channel = 6

[State -2];�C�⏈��
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

[State -2];�L�����Z������
Type = VarSet
Trigger1 = Var(6) = -1 && MoveContact && (((StateNo=220||StateNo=260)&&Var(10))||StateNo=221||StateNo=231||StateNo=241||(StateNo=[300,310])||(StateNo=[330,340])||StateNo=[200,211])
V = 6
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(6) > 0 || (Var(6)=0&&StateNo!=[200,399])
V = 6
Value = -1
[State -2];�X�[�p�[�L�����Z������
Type = VarSet
Trigger1 = Var(19) = -1 && MoveContact && !Var(10) && StateNo = 230
V = 19
Value = 3
[State -2]
Type = VarAdd
Trigger1 = Var(19) > 0 || (Var(19)=0&&StateNo!=[200,499]) && !Var(10)
V = 19
Value = -1

[State -2];�c������
Type = AfterImageTime
Trigger1 = PrevStateNo = 2000 || MoveType = H
Time = 0

[State -2];�����J�n���p���[0
Type = PowerSet
Trigger1 = RoundState = 0 && Power > 0
Value = 0

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