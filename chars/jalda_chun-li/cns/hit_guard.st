;===========================================================================
; ������Ƃ��ۂ��ǉ������X�e�[�g
;===========================================================================
;---------------------------------------------------------------------------
; �������牺�̂T�̃X�e�[�g�͖l���C���O�̘a��j�e�l��
; �ǉ��p�b�`�Ƃ��ē���Ă������̂ł��B�C���ƒ������ς�ł܂��B
; �{�Ƃ̃J���t�[�}���ɂ͑��݂��܂���B
; ������Ȃ��X�e�[�g�R���g���[���E�g���K�[��e�N�j�b�N������̂�
; �L�������̃X�L�����グ�����l�͎Q�l�ɂ��Ă��������B
;
; �������A�쐬�Ҏ��g�̃X�L���A�b�v�̂��߂ɂ킴�Ɓu�s���S�ȏ�ԁv�ɂ��Ă܂��B
; ���s����l���Ȃ�����P���āA���Ȃ���������Ă���L�����ɗ��p���Ă��������B
;===========================================================================
;---------------------------------------------------------------------------
; �P�Ȃ�p���[�Q�[�W�𗭂߂邽�߂̃X�e�[�g�B
; �U���p�̃X�e�[�g����Ȃ��̂ŁAmovetype�́uI�v�ɂ��Ă܂��B
;
; ���̃X�e�[�g�Łuhold_c�v�̃R�}���h����͂������Ă�ԁi�������ςȂ��j�́A
;�uPowerAdd�v�ɂăp���[�Q�[�W�����t���[���U�|�C���g��������悤�ɂȂ��Ă�B
;
; �G�t�F�N�g�摜���������߂̖��߁iRemoveExplod�j��
;�w�펞�Ď��X�e�[�g�i�|�Q�j�x�ɂĐݒ肵�Ă���̂ŁA��������Q�Ƃ��ĂˁB
;---------------------------------------------------------------------------
;�p���[���߁i����s���j
;[Statedef 700]
;type     = S
;movetype = I
;physics  = S
;ctrl     = 0
;velset   = 0,0
;anim     = 700
;sprpriority = 1

;[State 700, �p���[�Q�[�W����]
;type = PowerAdd
;trigger1 = 1
;value = 6

;[State 700, ��������]
;type = PlayerPush
;trigger1 = 1
;value = 0 ;������������A���蔲���鎖���o����B

;[State 700, �G�t�F�N�g];�u�e���v���[�g.txt�v�Q��
;type = Explod
;trigger1 = NumExplod(130) = 0 ;�h�c�i���o�[�u130�v��Explod����ʒ��ɂP�����o�Ă��Ȃ���
;anim = f130
;facing = -1
;postype = p1
;pos = -5,0
;sprpriority = 3
;ownpal = 1
;removetime = -1 ;�u-1�v�Ȃ̂ŃA�j���[�V�������I��炸��ɌJ��Ԃ�
;ID = 130

;[State 700, �X�e�[�g�ύX]
;type = ChangeState
;trigger1 = command != "hold_c" ;�uhold_c�v�̃R�}���h�ł͂Ȃ����i�b�{�^���������ꂽ��j
;trigger2 = Power >= 3000       ;�p���[�Q�[�W�����x���R�܂ŗ��܂�����
;value = 0
;ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; ���l�i���Q�[���w�����e�B�u���b�h�x���{�^���P�ŏo����A
; ����̍U�����󂯗����h��V�X�e���B���㖳��łɋ߂��d�l�ɂ��Ă܂��B
; �����̃e�N�j�b�N�̑g�ݍ��킹�ōČ��o����B
;
; ��������p���āA�X�g���[�g�t�@�C�^�[�V�́w�u���b�L���O�x�A
; ��TMOTW�́w�W���X�g�f�B�t�F���X�i�d�e�y�̃��R�C���K�[�h�j�x���Č��o����B
;---------------------------------------------------------------------------
;�V�[���h�i����s���j
[Statedef 701] 
type     = U ;�O�̃X�e�[�g�̏�Ԃ������p��
movetype = I
physics  = N
ctrl     = 0
anim     = ifelse(StateType=A,705,ifelse(StateType=C,703,701))

[State 701, ��ԕύX];�����̏�Ԃ�̐��Ȃǂ�ς���R���g���[��
type = StateTypeSet
trigger1 = StateType = A ;���������u�󒆁v�̏�ԂȂ�A
Physics = A              ;�u�����I�ȑ̐��v���u�`�v�ɂ���B�����ŏd�͂��|����悤�ɂȂ邵�A
                         ;�uPos Y�v���u0�ȏ�v�ɂȂ�΋����I�Ɂu���n�X�e�[�g�i[Statedef 52]�j�v�ɂȂ�B

;������͑����HitDef�p
[State 701, �󂯎~�ߒ�`];�i���W�j
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, AA,AP              ;�󂯎~�߂鑊��̍U���������w��
;reversal.attr = SCA, NA,SA,HA,NP,SP,HP ;�i���ƈӖ��͓����j
pausetime     = 0,14
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = -1,0
P1StateNo     = 702

;������͑����Projectile�p
[State 701, �H�炢�㏑��];�i���X�j
type = HitOverRide
trigger1 = Time = [0,13]
time = 1
attr = SCA, AA,AP              ;�㏑���o���鑊��̍U���������w��
;attr = SCA, NA,SA,HA,NP,SP,HP ;�i���ƈӖ��͓����j
;forceair = 1                  ;�㏑��������u�󒆏�ԁv�ɂ��邩�ۂ��i�f�t�H���g�͂O�j
stateno = 702                  ;�㏑����̃X�e�[�g
;slot = 0                      ;����HitOverRide�̃X���b�g�i���o�[�i�f�t�H���g�͂O�j
IgnoreHitPause = 1

[State 701, �摜�̐F]
type = PalFX
trigger1 = Time = 0
time = 13
add = 20,70,150
sinadd = 64,32,5,3

[State 701, ���ʒu]
type = PosSet
trigger1 = StateType != A
y = 0

[State 701, �ړ����x]
type = VelSet
trigger1 = StateType != A
x = 0
y = 0

[State 701, �X�e�[�g�ύX]
type = ChangeState
trigger1 = (StateType != A) && (AnimTime = 0)
trigger2 = (StateType = A) && (Time > 19)
value = ifelse(StateType=A,51,ifelse(StateType=C,11,0))
ctrl = 1

;---------------------------------------------------------------------------
; ���W�FReversalDef
;
; �@�U������{�b�N�X�iClsn1�j�̐ݒu��HitDef��L���ɂ��邽�߂����łȂ��A
; �@����̍U�����󂯎~�߂锻���݂���wReversalDef�x�ɂ��g���B
;
; �@���ۂɍU�����󂯎~�߂�ɂ́A�uattr�v�̑����
;�@�ureversal.attr�v�̃p�����[�^���g���A�󂯎~�߂鑊��̍U���������w�肷��B
; �@����ȊO��HitDef�Ɛݒ�̎d�����ꏏ�B
;
; �@ReversalDef�̐ݒu�ɂ��ē���ӂ��鎖������B
;
; �@�܂��AReversalDef�́wProjectile���󂯎~�߂鎖�͏o���Ȃ��x�B
; �@�����܂ł����̃R���g���[���́uHitDef���󂯎~�߂���́v�ł��邽�߁B
; 
; �@�����Ă���HitDef�Ɋ֌W���������̒��ӓ_�B
;
;�@�uHitDef���g���Ă���U���p�w���p�[�v���󂯎~�߂�ꍇ�A
; �@ReversalDef��P2StateNo��ݒu���Ă����Ȃ��
;�@�w���̃w���p�[�����̃X�e�[�g�ɕς��A����L�����ɕ��g���Ă��܂��x�B
; �@�g�����̋C�e�Ȃǂ�Clsn1�̂���w���p�[���g���Ă�ꍇ�͖��炩�Ƀo�O�ɂȂ�B
;�@�u�󂯎~�߂�ڕW���w���p�[�ɂȂ��Ă��܂����ꍇ�ɁA���g����o�O�����������@�v
; �@�������E���藼�����ɋ�g����K�v������B�R���v���[�g�Q�[���Ȃ�y�����ǂˁB
;
; �@���Ȃ݂ɁA�wMoveReversed�x�Ƃ����g���K�[��
;�@�u�����ReversalDef�v�Ɂu������HitDef�v���󂯎~�߂�ꂽ���Ԃ��v������g���K�[�B
; �@�t�Ɂu������ReversalDef�v�ő���̍U�����󂯎~�߂����𔻒f����ꍇ�́A
; �@�Ȃ����uMoveHit�v���g����B�Ȃ�ł������Ă�G���N�o�C�g�搶�I�i�R��
; �@�܂�ReversalDef���u�U��������`����v�n��������Ȃ񂾂낤���ǂˁB
;
;---------------------------------------------------------------------------
; ���X�FHitOverRide
;
; �@���̖��߂͂��̖��̔@���A�U����H�������
;�@�w�H�炢��Ԃ�C�ӂ̃X�e�[�g�ŏ㏑�����鎖���o����x���߁B
; �@����̉��p�Łw�u���b�L���O�x�Ȃǂ���鎖���o����B
;
; �@�����������HitDef�ɁuP2StateNo�v������ꍇ�A������HitOverRide��
; �@�H�炢������㏑���o�����ԂȂ�A
;�@�w���̍U����H���Ȃ��Ȃ�i�����HitDef����U��j�x�̂Œ��ӁB
;
;---------------------------------------------------------------------------
;�V�[���h����
[Statedef 702]
type     = U
movetype = I
physics  = N
ctrl     = 0
velset   = 0,0
anim     = ifelse(StateType=A,706,ifelse(StateType=C,704,702))

[State 702, ����炷]
type = PlaySnd
trigger1 = Time = 0
value = 1, 1

[State 702, ��ԕύX]
type = StateTypeSet
trigger1 = StateType = A
Physics = A
IgnoreHitPause = 1

[State 702, ���C�t����]
type = LifeAdd
trigger1 = Time = 0
value = 10 ;���C�t���P�O�|�C���g��
IgnoreHitPause = 1

[State 702, ���Ԓ�~];������������������Ԃ��ꎞ�I�Ɏ~�߂�i�|�[�Y�j
type = Pause
trigger1 = Time = 0
time = 13      ;�|�[�Y���鎞�ԁi�t���[���j
movetime = 13  ;�|�[�Y���ɓ����鎞�ԁBtime���������ƃo�O��i�f�t�H���g�͂O�j
IgnoreHitPause = 1

[State 702, �R���g���[��]
type = CtrlSet
trigger1 = Time = 14
value = 1

[State 702, ��ʑS�̂̐F]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255 ;��ʑS�̂�h��ׂ��F�����i��,��,�j
time = 1

[State 702, ���ʒu]
type = PosSet
trigger1 = StateType != A
y = 0

[State 702, �ړ����x]
type = VelSet
triggerall = StateType = A
trigger1 = Time = [0,13]
x = 0
y = 0

[State 702, �X�e�[�g�ύX]
type = ChangeState
trigger1 = (StateType != A) && (AnimTime = 0)
trigger2 = (StateType = A) && (Time > 19)
value = ifelse(StateType=A,51,ifelse(StateType=C,11,0))
ctrl = 1