[StateDef 3000];�|�[�Y�w���p�[�ҋ@
Type = S
Ctrl = 0
Anim = 99

[State 3000];��ѓ���q�b�g���̃X���[
Type = VarSet
Trigger1 = Parent,ProjHit1 = 1,16 || Var(11) = 40
V = 10
Value = IFelse(Var(11)=40, 0, 1)
[State 3000]
Type = VarSet
Trigger1 = Var(11) = 40
V = 11
Value = 0
[State 3000]
Type = VarAdd
Trigger1 = Var(10)
V = 11
Value = 1
[State 3000]
Type = Pause
Trigger1 = RoundState = 2 && Var(11) = [1,41]
Persistent = 2
Time = 1
MoveTime = 1