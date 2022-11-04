;#ADD004BASIC PIEs#
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|----------------------------------------

;[Remap]
;x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
;y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
;z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
;a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
;b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
;c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
;s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| �f�t�H���g�ݒ� |-----------------------------------------------------------

;[Defaults]
;command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

;command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;==============================================================================
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;�������̌��܂聡
;
; [Command]         �F���̓R�}���h���P��`����B
; name = "***"      �F�R�}���h�������߂�B�啶���Ə���������ʂ����B
; command = ###     �F���ۂɓ��͂���L�[��g�ݍ��킹��B�ڍׂ͌�q�B
; time = &&&        �F���͎�t���Ԃ�ݒ�i�I�v�V�����j�B
; buffer.time = @@@ �F���͋L�����Ԃ�ݒ�i�I�v�V�����j�B
;
; ���l�^�ł��������Ă���ʂ�A�o�^���\�Ȑ��͍ő�w�P�Q�W�x�܂ŁB
;
;
;���w�K�{�R�}���h���x�Ə����Ă�R�}���h�́A�V�X�e�����ŏ������Ă܂��B
;�@�R�}���h����ς�����A�����Ă͂����܂���B�L�[�̕ύX�͏o���܂��B
;------------------------------------------------------------------------------
;���K�v�ȃA���t�@�x�b�g�ƋL����
;
; ��L�́ucommand = ###�v�́w###�x�ɊY�����镔���ŁA
; �g�ݍ��킹��L�[�ƃ{�^����ݒ肵�Ȃ���΂Ȃ�Ȃ��B
;
; ���ݒ肵���L�[��{�^����M.U.G.E.N�̃I�v�V�������[�h�ɂ���
;  �u�L�[�R���t�B�O�v�ɂĐݒ肵���L�[�ȂǂɑΉ����Ă��܂��B
;
; �������L�[���i�S�ĕK���啶���Łj
;
; �@B �@�F�u����v�ɃL�[������i Backward �j
; �@D �@�F�u�����v�ɃL�[������i Downward �j
; �@F �@�F�u�O���v�ɃL�[������i Forward �j
; �@U �@�F�u����v�ɃL�[������i Upward �j
;
; �@DB�@�F�u���΂߉��v�ɃL�[������i�uD�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@UB�@�F�u���΂ߏ�v�ɃL�[������i�uU�v�ƁuB�v�������ɓ��͂��ꂽ����F���j
; �@DF�@�F�u�O�΂߉��v�ɃL�[������i�uD�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
; �@UF�@�F�u�O�΂ߏ�v�ɃL�[������i�uU�v�ƁuF�v�������ɓ��͂��ꂽ����F���j
;
; ���{�^�����i�S�ĕK���������Łj
;
; �@a �@�F�u�`�{�^���v������
; �@b �@�F�u�a�{�^���v������
; �@c �@�F�u�b�{�^���v������
; �@x �@�F�u�w�{�^���v������
; �@y �@�F�u�x�{�^���v������
; �@z �@�F�u�y�{�^���v������
; �@s �@�F�u�X�^�[�g�{�^���v������
;
; ���L�����i���͌��ʂ�ω������閽�߁j
;
; �@/ �@�F�i�X���b�V���j�L�[��{�^�����u�������ςȂ��v�ɂ��Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@/b       = �a�{�^�����������܂܂ɂ���
; �@�@�@�@�@�@�@/F       = �O�L�[���������܂܂ɂ���
; �@�@�@�@�@�@�@/U,z     = ��L�[���������܂܂y�{�^������͂���
;
;�@�@������������������������������������������������������������
;
; �@~ �@�F�i�`���_�j�L�[��{�^�����u�����ꂽ���v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@~x       = �w�{�^���𗣂�
; �@�@�@�@�@�@�@~DF      =�u�O�΂߉��v�̃L�[�𗣂�
; �@�@�@�@�@�@�@~DB,F,c  =�u���΂߉��v�𗣂�����ɑO�L�[�E�b�{�^���̏��Ԃɓ��͂���
;
; �@�@�@�@�@�@���u�{�^���𗣂��܂ł̎��ԁi���ߎ��ԁj�v���ݒ肷�鎖���o����
;
; �@�@�@�@�@�@�@~30x     = �w�{�^�����������܂܂ɂ��āA�R�O�t���[���ȏ�o�����痣��
; �@�@�@�@�@�@�@~50B,F,a = ���L�[���T�O�t���[���܂ŗ��߂đO�L�[�E�`�{�^���̏��Ԃɓ��͂���
;
;�@�@������������������������������������������������������������
;
; �@$ �@�F�i�h���j�����L�[�́u�����̓��ǂꂩ�����͂���Ă��鎖�v��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@$B       =�u����v�u���΂߉��v�u���΂ߏ�v�̂ǂꂩ�����͂���Ă�����
; �@�@�@�@�@�@�@$UF      =�u�O�v�u��v�u�O�΂ߏ�v�̂ǂꂩ�����͂���Ă�����
;
; �@�@�@�@�@�@�����̋L���́u�����L�[�v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@+ �@�F�i�v���X�j�{�^�����u���������v���Ă��鎖��F������ꍇ�ɒǉ�����
;
; �@�@�i��j�F�@x+y      = �w�{�^���Ƃx�{�^���𓯎���������
; �@�@�@�@�@�@�@a+b+c    = �`�{�^���Ƃa�{�^���Ƃb�{�^���𓯎���������
;
; �@�@�@�@�@�@�����̋L���́u�{�^���v�ł����g���܂���B
;
;�@�@������������������������������������������������������������
;
; �@> �@�F�i�O���[�^�[�U���j��Ȃ�iWin�łŒǉ����ꂽ�L���j
; �@�@�@�@�@�@�@�@�@�@�@�@�u���̃L�[�����͂���Ă��Ȃ������m�F���āA���̃L�[�������v�ꍇ
;
; �@�@�i��j�F�@a,>~a    = �`�{�^���ȊO�����͂���Ă��Ȃ���Ԃł`�{�^���𗣂�
; �@�@�@�@�@�@�@F,>~F,>F = �O�L�[�ȊO�����͂���Ă��Ȃ���ԂőO�L�[�𗣂��A
;�@�@�@�@�@�@�@�@�@�@�@�@�@������x�O�L�[����͂���
;
;-------------------------------------------------------------------------------
; �������̋L���͑S�đg�ݍ��킹�Ďg�������o���遜
;
; �@�@�i��j�F�@~80$DB,DF,F,/a+y+c
; �@�@�@�@�@�@�@
; �@�@�@�@�@�@�u����v�u���v�u���΂߉��v�̂ǂꂩ���W�O�t���[���܂ŗ��߂�
; �@�@�@�@�@�@�u�O�΂߉��v���u�O�v����͂�����A�`�Ƃx�Ƃb�𓯎����������܂܂ɂ���
;
;
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| ���K�E�Z |-----------------------------------------------------------------

[Command]
name = "shungoku"
command = ~x, x, F, a, z
time = 37

[Command]
name = "shungoku"
command = ~x, x, F, a, ~z
time = 37

[Command]
name = "m_hadou1"
command = ~D, DF, F, D, DF, x
time = 23

[Command]
name = "m_hadou1"
command = ~D, DF, F, D, DF, ~x
time = 23

[Command]
name = "m_hadou2"
command = ~D, DF, F, D, DF, y
time = 23

[Command]
name = "m_hadou2"
command = ~D, DF, F, D, DF, ~y
time = 23

[Command]
name = "m_hadou3"
command = ~D, DF, F, D, DF, z
time = 23

[Command]
name = "m_hadou3"
command = ~D, DF, F, D, DF, ~z
time = 23

[Command]
name = "m_syou1"
command = ~D, DF, F, D, DF, a
time = 23

[Command]
name = "m_syou1"
command = ~D, DF, F, D, DF, ~a
time = 23

[Command]
name = "m_syou2"
command = ~D, DF, F, D, DF, b
time = 23

[Command]
name = "m_syou2"
command = ~D, DF, F, D, DF, ~b
time = 23

[Command]
name = "m_syou3"
command = ~D, DF, F, D, DF, c
time = 23

[Command]
name = "m_syou3"
command = ~D, DF, F, D, DF, ~c
time = 23

;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------
[Command]
name = "ashura_P_F"
command = ~F, D, DF, x+y
time = 18

[Command]
name = "ashura_P_F"
command = ~F, D, DF, y+z
time = 18

[Command]
name = "ashura_P_F"
command = ~F, D, DF, z+x
time = 18

[Command]
name = "ashura_P_B"
command = ~B, D, DB, x+y
time = 18

[Command]
name = "ashura_P_B"
command = ~B, D, DB, y+z
time = 18

[Command]
name = "ashura_P_B"
command = ~B, D, DB, z+x
time = 18

[Command]
name = "ashura_K_F"
command = ~F, D, DF, a+b
time = 18

[Command]
name = "ashura_K_F"
command = ~F, D, DF, b+c
time = 18

[Command]
name = "ashura_K_F"
command = ~F, D, DF, c+a
time = 18

[Command]
name = "ashura_K_B"
command = ~B, D, DB, a+b
time = 18

[Command]
name = "ashura_K_B"
command = ~B, D, DB, b+c
time = 18

[Command]
name = "ashura_K_B"
command = ~B, D, DB, c+a
time = 18

[Command]
name = "shakunetsu1"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "shakunetsu1"
command = ~B, DB, D, DF, F, ~x
time = 20

[Command]
name = "shakunetsu2"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "shakunetsu2"
command = ~B, DB, D, DF, F, ~y
time = 20

[Command]
name = "shakunetsu3"
command = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "shakunetsu3"
command = ~B, DB, D, DF, F, ~z
time = 20

[Command]
name = "hadou1"
command = ~D, DF, F, x
time = 12

[Command]
name = "hadou1"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "hadou2"
command = ~D, DF, F, y
time = 12

[Command]
name = "hadou2"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "hadou3"
command = ~D, DF, F, z
time = 12

[Command]
name = "hadou3"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "shoryu1"
command = ~F, D, DF, x
time = 12

[Command]
name = "shoryu1"
command = ~F, D, DF, ~x
time = 12

[Command]
name = "shoryu2"
command = ~F, D, DF, y
time = 12

[Command]
name = "shoryu2"
command = ~F, D, DF, ~y
time = 12

[Command]
name = "shoryu3"
command = ~F, D, DF, z
time = 12

[Command]
name = "shoryu3"
command = ~F, D, DF, ~z
time = 12

[Command]
name = "tatsumaki1"
command = ~D, DB, B, a
time = 12

[Command]
name = "tatsumaki1"
command = ~D, DB, B, ~a
time = 12

[Command]
name = "tatsumaki2"
command = ~D, DB, B, b
time = 12

[Command]
name = "tatsumaki2"
command = ~D, DB, B, ~b
time = 12

[Command]
name = "tatsumaki3"
command = ~D, DB, B, c
time = 12

[Command]
name = "tatsumaki3"
command = ~D, DB, B, ~c
time = 12

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 12

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 12

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+a
time = 11

[Command]
name = "y+b"
command = y+b
time = 11

[Command]
name = "z+c"
command = z+c
time = 11

[Command]
name = "x+y"
command = x+y
time = 11

[Command]
name = "x+z"
command = x+z
time = 11

[Command]
name = "y+z"
command = y+z
time = 11

[Command]
name = "a+b"
command = a+b
time = 11

[Command]
name = "a+c"
command = a+c
time = 11

[Command]
name = "b+c"
command = b+c
time = 11

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time=1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1

;------------------------------------------------------------------------------
; �����펞�Ď��X�e�[�g�i�|�P�j��
; �R�}���h�t�@�C���i�̃X�e�[�g�G���g���[�p�[�g�j�ɕK�v�ȍ��ڂł��B
; ��΂ɏ����Ă͂����Ȃ��̂ŗv���ӁB
;
; �ʏ�̐H�炢��ԈȊO�́uP2StateNo�v��uTargetState�v���Ő��䂳�ꂽ�A
; �쐬�҂��C�ӂɎw�肵�����葤�̐H�炢�X�e�[�g�Ɍ���A
; �o�^�����X�e�[�g�R���g���[�����L���ɂ͂Ȃ�܂���B
;------------------------------------------------------------------------------

[Statedef -1]

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=sysfvar(4)>0 && sysfvar(0)>0 && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && playerid(floor(sysfvar(0))),var(22)=4
	value=190190
	ctrl=0
	ignorehitpause=1
;//==========================
;// add004-1-sctrls-end
;//==========================




[State 100]
type = VarSet
triggerall = time = 2
trigger1 = stateno != 52
trigger1 = stateno != 1605
var(11) = 0

[State 100]
type = VarSet
triggerall = Command = "x" || Command = "y" || Command = "z"
triggerall = Command != "shungoku"
trigger1 = (stateno = [200,330]) || (stateno = [450,460])
trigger1 = animtime = [ifelse((var(3)=[1,2]),-5,-2),0]
trigger2 = stateno = [350,420]
trigger2 = Pos Y >= -55
trigger3 = stateno = 1605
var(11) = ifelse(Command = "x", 4, ifelse(Command = "y", 5, 6))
ignorehitpause = 1

[State 100]
type = VarSet
triggerall = Command = "a" || Command = "b" || Command = "c"
triggerall = Command != "shungoku"
trigger1 = (stateno = [200,330]) || (stateno = [450,460])
trigger1 = animtime = [ifelse((var(3)=[1,2]),-5,-2),0]
trigger2 = stateno = [350,420]
trigger2 = Pos Y >= -55
trigger3 = stateno = 1605
var(11) = ifelse(Command = "a", 1, ifelse(Command = "b", 2, 3))
ignorehitpause = 1

[State 100]
type = VarSet
triggerall = Command = "x"
triggerall = stateno = 300
trigger1 = var(3) = [1,2]
trigger1 = HitPauseTime = [1,6]
var(11) = 4
ignorehitpause = 1

[State 100]
type = VarSet
triggerall = Command = "a"
triggerall = stateno = 320
trigger1 = time > 4
trigger2 = var(3) = [1,2]
trigger2 = HitPauseTime = [1,6]
var(11) = 1
ignorehitpause = 1

[State 100]
type = VarSet
trigger1 = Command = "shungoku"
trigger2 = var(11)
trigger2 = Command = "holdback" && Command != "holdup"
trigger2 = InGuardDist
var(11) = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;�u���E
[State -1]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = Var(53)
triggerall = roundstate = 2
triggerall = power >= 3000 
triggerall = Command = "shungoku" || Command = "z+c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,599]
ignorehitpause = 0

;---------------------------------------------------------------------------
;�ŎE���g��
[State -1]
type = ChangeState
value = 3010
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Var(53)
triggerall = power >= 3000
triggerall = !NumProj
triggerall = (Command = "m_hadou1" || Command = "m_hadou2" || Command = "m_hadou3" ) || Command = "y+b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;�^��g����
[State -1]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = !Var(53)
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = !NumProj
triggerall = (Command ="m_hadou1"||Command ="m_hadou2"||Command = "m_hadou3")||(Command = "recovery"||Command = "y+b"||Command = "z+c")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;�ŎE������
[State -1]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = Var(53)
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = (Command = "m_syou1" || Command = "m_syou2" || Command = "m_syou3") ||Command = "recovery"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;���C���M��
[State -1]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = Var(53)
triggerall = roundstate = 2
triggerall = Command = "ashura_P_F" || Command = "ashura_P_B" || Command = "ashura_K_F" || Command = "ashura_K_B"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;������
[State -1]
type = ChangeState
value = ifelse(var(53),1020,1000)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "shoryu1" || Command = "shoryu2" || Command = "shoryu3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
trigger15 = StateNo = 1105 && time >= 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;�����a��r
[State -1]
type = ChangeState
value = ifelse(var(53),1120,1100)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "tatsumaki1" || Command = "tatsumaki2" || Command = "tatsumaki3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
trigger15 = StateNo = 1105 && time >= 1
ignorehitpause = 0

;---------------------------------------------------------------------------
;�t�@�C���[�g����
[State -1]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "shakunetsu1" || Command = "shakunetsu2" || Command = "shakunetsu3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;�g����
[State -1]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = !NumProj
triggerall = Command = "hadou1" || Command = "hadou2" || Command = "hadou3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && ((var(3) = [1,2])|| time < 1)
trigger3 = StateNo = 205 && ((var(3) = [1,2])|| time < 1)
trigger4 = StateNo = 210 && (var(3) = [1,2]) && animelemtime(5)<0
trigger5 = StateNo = 215 && (var(3) = [1,2]) && animelemtime(3)<2
trigger6 = StateNo = 225 && (var(3) = [1,2]) && animelemtime(4)<2
trigger7 = StateNo = 250 && (var(3) = [1,2]) && animelemtime(4)<2
trigger8 = StateNo = 265 && (var(3) = [1,2]) && animelemtime(3)<2
trigger9 = StateNo = 300 && ((var(3) = [1,2])|| time < 1)
trigger10 = StateNo = 305 && (var(3) = [1,2]) && animelemtime(4)<2
trigger11 = StateNo = 310 && (var(3) = [1,2]) && animelemtime(4)<2
trigger12 = StateNo = 320 && ((var(3) = [1,2])|| time < 1)
trigger13 = StateNo = 325 && (var(3) = [1,2]) && animelemtime(4)<2
trigger14 = StateNo = 330 && (var(3) = [1,2]) && animelemtime(3)<2
ignorehitpause = 0

;---------------------------------------------------------------------------
;�󒆗����a��r
[State -1]
type = ChangeState
value = ifelse(var(53),1520,1500)
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = Command = "tatsumaki1" || Command = "tatsumaki2" || Command = "tatsumaki3"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 420 && (var(3) = [1,2]) && animelemtime(4)<0
ignorehitpause = 0

;------------------------------------------------------------------------------
;�����Z
[State -1]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2bodydist X = [-15,ceil(33*const(size.xscale))]
triggerall = command = "holdfwd" || command = "holdback"
triggerall = ctrl
trigger1 = Command = "y" || Command = "z" || Command = "b" || Command = "c"
trigger2 = (var(11) = [2,3]) || (var(11) = [5,6])

;---------------------------------------------------------------------------
;��������
[State -1]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "y"
trigger2 = var(11) = 5
ignorehitpause = 0

;---------------------------------------------------------------------------
;�����ӂ�
[State -1]
type = ChangeState
value = 460
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "z"
trigger2 = var(11) = 6
ignorehitpause = 0

;==============================================================================
; �ʏ�U���Z
;==============================================================================
;------------------------------------------------------------------------------
[State -1, �ߋ���������p���`]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-28*const(size.xscale)),ceil(28*const(size.xscale))]
triggerall = ctrl
trigger1 = command = "x"
trigger1 = statetype = S
trigger2 = var(11) = 4
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ������������p���`]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "x"
trigger2 = stateno = 200
trigger2 = time > 4
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
trigger3 = var(11) = 4
trigger3 = ctrl
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �ߋ����������p���`]
type = ChangeState
value = 215
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-31*const(size.xscale)),ceil(31*const(size.xscale))]
triggerall = ctrl
trigger1 = command = "y"
trigger1 = statetype = S
trigger2 = var(11) = 5
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �������������p���`]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "y"
trigger1 = statetype = S
trigger2 = var(11) = 5
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �ߋ����������p���`]
type = ChangeState
value = 225
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-33*const(size.xscale)),ceil(33*const(size.xscale))]
triggerall = ctrl
trigger1 = command = "z"
trigger1 = statetype = S
trigger2 = var(11) = 6
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �������������p���`]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "z"
trigger1 = statetype = S
trigger2 = var(11) = 6
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �ߋ���������L�b�N]
type = ChangeState
value = 255
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-13*const(size.xscale)),ceil(13*const(size.xscale))]
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 255
trigger2 = time > 4
trigger3 = var(11) = 1
trigger3 = ctrl
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ������������L�b�N]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "a"
trigger1 = statetype = S
trigger2 = var(11) = 1
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �ߋ����������L�b�N]
type = ChangeState
value = 265
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-13*const(size.xscale)),ceil(13*const(size.xscale))]
triggerall = ctrl
trigger1 = command = "b"
trigger1 = statetype = S
trigger2 = var(11) = 2
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �������������L�b�N]
type = ChangeState
value = 260
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "b"
trigger1 = statetype = S
trigger2 = var(11) = 2
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �ߋ����������L�b�N]
type = ChangeState
value = 275
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [ceil(-56*const(size.xscale)),ceil(56*const(size.xscale))]
triggerall = ctrl
trigger1 = command = "c"
trigger1 = statetype = S
trigger2 = var(11) = 3
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �������������L�b�N]
type = ChangeState
value = 270
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "c"
trigger1 = statetype = S
trigger2 = var(11) = 3
ignorehitpause = 0

;------------------------------------------------------------------------------

[State -1, ����]
type = null ;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݎ�p���`]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(11) = 4 || command = "x"
trigger2 = stateno = 300
trigger2 = animelemtime(3) >= 0;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
trigger3 = command = "x"
trigger3 = stateno = 320
trigger3 = time > 4;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
trigger4 = var(11) = 4
trigger4 = ctrl
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݒ��p���`]
type = ChangeState
value = 305
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "y"
trigger1 = statetype = C
trigger2 = var(11) = 5
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�݋��p���`]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "z"
trigger1 = statetype = C
trigger2 = var(11) = 6
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 300
trigger2 = animelemtime(3) >= 0;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
trigger3 = var(11) = 1 || command = "a"
trigger3 = stateno = 320
trigger3 = time > ifelse(var(12)=20,5,4)
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
trigger4 = var(11) = 1
trigger4 = ctrl
;(var(3) && animelemtime(3) >= 0) || (!var(3) && animelemtime(2) > 1)
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�ݒ��L�b�N]
type = ChangeState
value = 325
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = statetype = C
trigger1 = command = "b"
trigger2 = var(11) = 2
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ���Ⴊ�݋��L�b�N]
type = ChangeState
value = 330
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl
trigger1 = statetype = C
trigger1 = command = "c"
trigger2 = var(11) = 3
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �W�����v��p���`]
type = ChangeState
value = 350
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �΂߃W�����v���p���`]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = Vel X
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �W�����v���p���`]
type = ChangeState
value = 355
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �W�����v���p���`]
type = ChangeState
value = 360
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �΂߃W�����v��L�b�N]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = Vel X
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �����W�����v��L�b�N]
type = ChangeState
value = 365
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �΂߃W�����v���L�b�N]
type = ChangeState
value = 405
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = Vel X
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �����W�����v���L�b�N]
type = ChangeState
value = 370
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �΂߃W�����v���L�b�N]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = Vel X
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, �W�����v���L�b�N]
type = ChangeState
value = 375
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0
