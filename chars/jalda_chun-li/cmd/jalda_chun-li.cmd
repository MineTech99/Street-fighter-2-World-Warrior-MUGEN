; �T���v���L�����N�^�[�w�J���t�[�}���x�̃R�}���h�t�@�C���ł��B
; �R�}���h�Ɋւ���ݒ�͂S���\���ɂȂ��Ă��܂��B
;==============================================================================
; Win�Ő�p�p�[�g
;==============================================================================
;------------------------------------------------------------------------------
; ������Win�ł���i���m�ɂ�Linux�ł���j�ǉ����ꂽ�v�f�̓�B
; �R�}���h�֘A�̏����ݒ��C�ӂɎw��o����悤�ɂȂ���(`�E�ցE�L)
;
;�w�{�^�����}�b�v�x�̓{�^���z�u�ύX�p�̍��ځB
; ��`�p�[�g�ł��������ύX���Ȃ��Ă��ǂ��悤�ɂȂ���������B
; �ʓ|�L���l�p���ȁI�i�ú�
;
;�w�f�t�H���g�ݒ�x�ł͊e[Command]�ŏȗ������ꍇ��
; ���͎�t���ԂƓ��͋L�����Ԃ�\�ߌ��߂Ă������ځB
;
;
; ���̂Q���ڂ͏ȗ��\�B
;------------------------------------------------------------------------------
;-| �{�^�����}�b�v�i�{�^���R���t�B�O�j|---------------------------------------- ��P��

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^���@�@�@�@�@�@�@�@�@�V
z = z      ;�y�{�^���@�@�@�@�@�@�@�@�@�V
a = a      ;�`�{�^���@�@�@�@�@�@�@�@�@�V
b = b      ;�a�{�^���@�@�@�@�@�@�@�@�@�V
c = c      ;�b�{�^���@�@�@�@�@�@�@�@�@�V
s = s      ;�X�^�[�g�{�^���@�@�@�@�@�@�V

;------------------------------------------------------------------------------
; �Ⴆ�΁u�{���w�{�^���ŏo����p���`���a�{�^���ɕς������ꍇ�v�Ȃ�A
;
; x = b
;
; �ŊȒP�ɏo����B�g��Ȃ��{�^�����g���Ă���{�^���Ɋ��蓖�Ă鎖���\�B
;------------------------------------------------------------------------------
;-| �f�t�H���g�ݒ� |----------------------------------------------------------- ��Q��

[Defaults]
command.time = 15  ;�W���̃R�}���h���͎�t���ԁB
                   ;�e�R�}���h�ŏȗ����Ă���ꍇ�ɗL���B
                   ;���̃p�����[�^���������ꍇ�A�f�t�H���g�͂P�t���[���ɂȂ�B
                   ;�i�@M.U.G.E.N�ł̂P�t���[���@���@�P�^�U�O�b�@�j

command.buffer.time = 1  ;�W���̃R�}���h���͋L�����ԁB
                         ;���͂�������ɃR�}���h���L�����A
                         ;�w�𗣂��Ă��R�}���h���������Ă����Ԃ�
                         ;�����Őݒ肵�����Ԃ̕��ێ�����B
                         ;�P�`�R�O�t���[���܂ł̊ԂŐݒ�\�B
                         ;�f�t�H���g�͂P�t���[���B

;============================================================================== ��R��
; �R�}���h��`�p�[�g�i���̓L�[��ݒ肷��j
;==============================================================================
;------------------------------------------------------------------------------
; �������L�[�ƃ{�^���̑g�ݍ��킹�Ŋi���Q�[���ɂ�����
;�w���̓R�}���h�x�𒼐ڐݒ�E�ҏW����p�[�g�B
;
; ����R�}���h�ɖ��O��t���ē��̓L�[��g�ݍ��킹��P���ȍ�ƂɂȂ邯�ǁA
; �g�ݍ��킹���Ɠ�������o����͓̂�Փx�����������B
;
; ���L�Łu�����̌��܂�v�Ɓu�g�ݍ��킹�ɕK�v�ȃA���t�@�x�b�g�ƋL���v��
; �S�Đ������܂��傤�B
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
;------------------------------------------------------------------------------

;---|AI Commands|-----------------------------------------------------------
[Command]
Name = "AI_00"
Command = a, a
Time = 0
[Command]
Name = "AI_01"
Command = a, b
Time = 0
[Command]
Name = "AI_02"
Command = a, c
Time = 0
[Command]
Name = "AI_03"
Command = a, x
Time = 0
[Command]
Name = "AI_04"
Command = a, y
Time = 0
[Command]
Name = "AI_05"
Command = a, z
Time = 0
[Command]
Name = "AI_06"
Command = a, s
Time = 0
[Command]
Name = "AI_07"
Command = b, a
Time = 0
[Command]
Name = "AI_08"
Command = b, b
Time = 0
[Command]
Name = "AI_09"
Command = b, c
Time = 0
[Command]
Name = "AI_10"
Command = b, x
Time = 0
[Command]
Name = "AI_11"
Command = b, y
Time = 0
[Command]
Name = "AI_12"
Command = b, z
Time = 0
[Command]
Name = "AI_13"
Command = b, s
Time = 0
[Command]
Name = "AI_14"
Command = c, a
Time = 0
[Command]
Name = "AI_15"
Command = c, b
Time = 0
[Command]
Name = "AI_16"
Command = c, c
Time = 0
[Command]
Name = "AI_17"
Command = c, x
Time = 0
[Command]
Name = "AI_18"
Command = c, y
Time = 0
[Command]
Name = "AI_19"
Command = c, z
Time = 0
[Command]
Name = "AI_20"
Command = c, s
Time = 0
[Command]
Name = "AI_21"
Command = x, a
Time = 0
[Command]
Name = "AI_22"
Command = x, b
Time = 0
[Command]
Name = "AI_23"
Command = x, c
Time = 0
[Command]
Name = "AI_24"
Command = x, x
Time = 0
[Command]
Name = "AI_25"
Command = x, y
Time = 0
[Command]
Name = "AI_26"
Command = x, z
Time = 0
[Command]
Name = "AI_27"
Command = x, s
Time = 0
[Command]
Name = "AI_28"
Command = y, a
Time = 0
[Command]
Name = "AI_29"
Command = y, b
Time = 0
[Command]
Name = "AI_30"
Command = y, c
Time = 0
[Command]
Name = "AI_31"
Command = y, x
Time = 0
[Command]
Name = "AI_32"
Command = y, y
Time = 0
[Command]
Name = "AI_33"
Command = y, z
Time = 0
[Command]
Name = "AI_34"
Command = y, s
Time = 0
[Command]
Name = "AI_35"
Command = s, a
Time = 0
[Command]
Name = "AI_36"
Command = s, b
Time = 0
[Command]
Name = "AI_37"
Command = s, c
Time = 0
[Command]
Name = "AI_38"
Command = s, x
Time = 0
[Command]
Name = "AI_39"
Command = s, y
Time = 0
[Command]
Name = "AI_40"
Command = s, z
Time = 0
[Command]
Name = "AI_41"
Command = s, s
Time = 0
[Command]
Name = "AI_42"
Command = U, U
Time = 0
[Command]
Name = "AI_43"
Command = U, F
Time = 0
[Command]
Name = "AI_44"
Command = U, D
Time = 0
[Command]
Name = "AI_45"
Command = U, B
Time = 0
[Command]
Name = "AI_46"
Command = F, U
Time = 0
[Command]
Name = "AI_47"
Command = F, F
Time = 0
[Command]
Name = "AI_48"
Command = F, D
Time = 0
[Command]
Name = "AI_49"
Command = F, B
Time = 0

;------------------------------------------------------------------------

;-| ���K�E�Z |-----------------------------------------------------------------

;�����O�������Ȃ�΁A�Ⴄ�R�}���h�ł������X�e�[�g�̋Z���o�������\�B

[Command]
Name = "waza1_light"
Command = a, a, a, a, a, a
Time = 60
[Command]
Name = "waza1_middle"
Command = b, b, b, b, b, b
Time = 50
[Command]
Name = "waza1_hard"
Command = c, c, c, c, c, c
Time = 40

[Command]
Name = "waza2_light"
Command = ~60$B, $F, a
Time = 8
[Command]
Name = "waza2_middle"
Command = ~60$B, $F, b
Time = 8
[Command]
Name = "waza2_hard"
Command = ~60$B, $F, c
Time = 8

[Command]
Name = "waza3_light"
Command = ~60$B, $F, x
[Command]
Name = "waza3_middle"
Command = ~60$B, $F, y
[Command]
Name = "waza3_hard"
Command = ~60$B, $F, z

[Command]
Name = "waza4_light"
Command = ~60$D, $U, a
Time = 8
[Command]
Name = "waza4_middle"
Command = ~60$D, $U, b
Time = 8
[Command]
Name = "waza4_hard"
Command = ~60$D, $U, c
Time = 8

[Command]
Name = "super"
Command = ~60$B, F, B, F, a
Time = 20
[Command]
Name = "super"
Command = ~60$B, F, B, F, b
Time = 20
[Command]
Name = "super"
Command = ~60$B, F, B, F, c
Time = 20

[Command]
Name = "waza3_light2"
Command = ~D, F, x
[Command]
Name = "waza3_middle2"
Command = ~D, F, y
[Command]
Name = "waza3_hard2"
Command = ~D, F, z
[Command]
Name = "waza4_light2"
Command = F, ~D, DF, a
Time = 20
[Command]
Name = "waza4_middle2"
Command = F, ~D, DF, b
Time = 20
[Command]
Name = "waza4_hard2"
Command = F, ~D, DF, c
Time = 20

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

;[Command]
;name = "recovery" ;�K�{�R�}���h��
;command = x+y
;time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

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

;---------------------------
;(�u�p���[���߁v�p�ɃR�}���h��ǉ����Ă܂�)
;[Command]
;name = "hold_c"
;command = /c

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

[Command]
Name = "fwd"
Command = F
Time = 1
[Command]
Name = "back"
Command = B
Time = 1
[Command]
Name = "up" 
Command = U
Time = 1
[Command]
Name = "down"
Command = D
Time = 1

[Command]
Name = "holda"
Command = /$a
Time = 1
[Command]
Name = "holdb"
Command = /$b
Time = 1
[Command]
Name = "holdc"
Command = /$c
Time = 1

[Command]
Name = "holdfwd"
Command = /$F
Time = 1
[Command]
Name = "holdback"
Command = /$B
Time = 1
[Command]
Name = "holdup" 
Command = /$U
Time = 1
[Command]
Name = "holddown"
Command = /$D
Time = 1

[Command]
Name = "recovery"
Command = a+b+c+x+y+z+s
Time = 0

;============================================================================== ��S��
; �X�e�[�g�G���g���[�p�[�g�i�Z�Ȃǂ��o����悤�ɂ��邽�߂̏�����ݒ�j
;==============================================================================
;------------------------------------------------------------------------------
; �R�}���h���Ɠ��͂���R�}���h��ݒ肵����������Ӗ��������̂ŁA��������
;�u���ۂɓ��͂����R�}���h�łǂ̔ԍ��̃X�e�[�g���ǂ����������ŏo���邩�v
; �����߂Ȃ���΂Ȃ�Ȃ��B
;
; �X�e�[�g�R���g���[���uChangeState�v�����g��Ȃ����ǁA
; ����Ȃɓ���Ȃ��̂Ńg���K�[���o���Ă��炷���o����B
;
; ���������������Ă����ΊȒP�ȃg���K�[�ݒ�̗���͊o�����邩�ƁB
;
; �G���g���[�̏��Ԃɂ͂�����x�̖@�������邯�ǁA
; ���܂��t�H���_�́u���l�^.txt�v���Q�ƁB�i�g�������\�����׶��ׁj
;
; ChangeState�ȂǃX�e�[�g�R���g���[���̊�{�I�Ȑݒu���
; ���܂��t�H���_�́u�e���v���[�g.txt�v���Q�ƁB
;------------------------------------------------------------------------------
; �����펞�Ď��X�e�[�g�i�|�P�j��
; �R�}���h�t�@�C���i�̃X�e�[�g�G���g���[�p�[�g�j�ɕK�v�ȍ��ڂł��B
; ��΂ɏ����Ă͂����Ȃ��̂ŗv���ӁB
;
; �ʏ�̐H�炢��ԈȊO�́uP2StateNo�v��uTargetState�v���Ő��䂳�ꂽ�A
; �쐬�҂��C�ӂɎw�肵�����葤�̐H�炢�X�e�[�g�Ɍ���A
; �o�^�����X�e�[�g�R���g���[�����L���ɂ͂Ȃ�܂���B
;------------------------------------------------------------------------------

[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B
[State -1];REVERSAL ATTACK����
Type = VarSet
Trigger1 = Var(18) > 0 && StateNo != 0 && StateNo != [5000,5999]
V = 18
Value = 0
[State -1]
Type = VarSet
triggerall = var(59)<=0
TriggerAll = Var(1) < 401 && (((StateNo=5001||StateNo=5011)&&Time>(GetHitVar(HitTime))-3)||(StateNo=5120&&AnimTime>-3))
Trigger1 = (Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard")
Trigger2 = (((Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard")&&!Var(13)) || ((Command="waza3_light2"||Command="waza3_middle2"||Command="waza3_hard2")&&Var(13))) && !NumProjID(1)
V = 18
Value = IFelse(Command="waza1_light",1,IFelse(Command="waza1_middle",2,IFelse(Command="waza1_hard",3,IFelse(Command="waza3_light"||Command="waza3_light2",4,IFelse(Command="waza3_middle"||Command="waza3_middle2",5,6)))))
[State -1]
Type = VarSet
triggerall = var(59)<=0
TriggerAll = Var(1) < 401 && (((StateNo=5001||StateNo=5011)&&Time>(GetHitVar(HitTime))-3)||(StateNo=5120&&AnimTime>-3)) && !Var(10)
Trigger1 = ((Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")&&!Var(13)) || ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&Var(13))
V = 18
Value = IFelse(Time=0,0,IFelse(Command="waza2_light"||Command="waza4_light",7,IFelse(Command="waza2_middle"||Command="waza4_middle",8,9)))
[State -1]
Type = VarSet
triggerall = var(59)<=0
TriggerAll = Var(1) < 401 && (((StateNo=5001||StateNo=5011)&&Time>(GetHitVar(HitTime))-3)||(StateNo=5120&&AnimTime>-3)) && !Var(10)
Trigger1 = (((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&!Var(13)) || ((Command="waza4_light2"||Command="waza4_middle2"||Command="waza4_hard2")&&Var(13))) && !Var(10)
Trigger2 = Command="super" && Power=1000 && !Var(10)
V = 18
Value = IFelse(Time=0,0,IFelse(Command="super",13,IFelse(Command="waza4_light"||Command="waza4_light2",10,IFelse(Command="waza4_middle"||Command="waza4_middle2",11,12))))

[State -1];���r
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = Command="super" && (StateType!=A||Var(13)) && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||Var(19)>0) && Power = 1000 && !Var(10) && Var(30) != 1 && RoundState = 2
Value = 2000

[State -1];�V���r
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&!Var(13)) || ((Command="waza4_light2"||Command="waza4_middle2"||Command="waza4_hard2")&&Var(13))
Trigger1 = StateType!=A && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&!Var(10) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza4_hard"||Command="waza4_hard2", 1302, IFelse(Command="waza4_middle"||Command="waza4_middle2", 1301, 1300))

[State -1];�X�s�j���O�o�[�h�L�b�N
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")&&!Var(13)&&!Var(10)) || ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&(Var(13)||Var(10)))
Trigger1 = StateType!=A&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard"||Command="waza4_hard", 1102, IFelse(Command="waza2_middle"||Command="waza4_middle", 1101, 1100))
[State -1];�󒆃X�s�j���O�o�[�h�L�b�N
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")&&!Var(13)&&!Var(10)) || ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&(Var(13)||Var(10)))
Trigger1 = StateType=A&&Pos Y<-25&&Ctrl&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard", 1106, IFelse(Command="waza2_middle", 1105, 1104))

[State -1];�S��r
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard") && (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza1_hard", 1004, IFelse(Command="waza1_middle", 1002, 1000))

[State -1];�C����
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard")&&!Var(13)) || ((Command="waza3_light2"||Command="waza3_middle2"||Command="waza3_hard2")&&Var(13))
Trigger1 = !NumProjID(1)&&StateType!=A&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza3_hard"||Command="waza3_hard2", 1202, IFelse(Command="waza3_middle"||Command="waza3_middle2", 1201, 1200))

[State -1];����
Type = ChangeState
triggerall = var(59)<=0
Trigger1=(StateNo=20||((Command="holdfwd"||Command="holddown"||Command="holdback")&&Pos Y<-59&&Vel Y!=0&&P2BodyDist X<((48+(StateType=A)*5)*Const(Size.XScale))&&StateNo=[50,51])) && (Command="y"||Command="z")&&RoundState=2
Value = IFelse(StateType=S, IFelse(Command="y",504,500), IFelse(Command="y",514,510))

[State -1];����U��
Type = ChangeState
triggerall = var(59)<=0
Trigger1=(((Command="b"||Command="c")&&Command="holdfwd"&&Command="holddown"&&StateType!=A)||(Command="b"&&Command="holddown"&&Command!="holdfwd"&&Command!="holdback"&&StateType=A))&& Ctrl&&Var(30)!=1&&RoundState=2
Value = IFelse(StateType=A, 460, IFelse(Command="b", 260, 270))

[State -1];�����p���`�n�U��
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 200+(P2BodyDist X<(28*Const(Size.XScale))), IFelse(Command = "y", 210+(P2BodyDist X<(43*Const(Size.XScale))), 220+(P2BodyDist X<(55*Const(Size.XScale)))))
[State -1];�����L�b�N�n�U��
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "a", 230+(P2BodyDist X<(43*Const(Size.XScale))), IFelse(Command = "b", 240+(P2BodyDist X<(48*Const(Size.XScale))), 250+(P2BodyDist X<(48*Const(Size.XScale)))))
[State -1];���Ⴊ�ݍU��
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c") && StateType = C && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 300, IFelse(Command = "y", 310, IFelse(Command = "z", 320, IFelse(Command = "a", 330, IFelse(Command = "b", 340, 350)))))
[State -1];�󒆃p���`
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X=0,IFelse(Command="x", 400, IFelse(Command="y", 410, 420)),IFelse(Command="x", 401, IFelse(Command="y", 411, 421)))
[State -1];�󒆃L�b�N
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X = 0, IFelse(Command = "a", 430, IFelse(Command = "b", 440, 450)), IFelse(Command = "a", 431, IFelse(Command = "b", 441, 451)))
[State -1];��U���A�ŏ���
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = Command = "x" && (StateNo=[200,201]) && AnimElem = 3,>1
Value = 200+(P2BodyDist X<(28*Const(Size.XScale)))

[State -1];�ǔ��R
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((BackEdgeDist<3&&Command="holdfwd"&&Vel X<0)||(FrontEdgeDist<3&&Command="holdback"&&Vel X>0)) && Pos Y < -59 && ((Stateno=[50,51])||StateNo=[400,499])
Value = 51



;------------------------------------------------------------------------------

;[State -1, �p���[����];������Ƃ��ۂ��ǉ������Z
;type = ChangeState
;value = 700
;triggerall = command = "hold_c"
;triggerall = power < 3000 ;�Q�[�W�����^���̎��͏o���Ȃ�
;trigger1 = statetype != A && ctrl

;AI--------------------------------------------------------------------------

