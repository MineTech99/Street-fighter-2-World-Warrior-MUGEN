[Command]
name = "waza1_light"
command = a,a,a
Time = 60
[Command]
name = "waza1_middle"
command = b,b,b
Time = 50
[Command]
name = "waza1_hard"
command = c,c,c
Time = 40

[Command]
name = "waza2_light"
command = ~B,D,F,a
Time = 25
[Command]
name = "waza2_middle"
command = ~B,D,F,b
Time = 25
[Command]
name = "waza2_hard"
command = ~B,D,F,c
Time = 25
[Command]
name = "waza2_light2"
command = ~D,B,a
Time = 10
[Command]
name = "waza2_middle2"
command = ~D,B,b
Time = 10
[Command]
name = "waza2_hard2"
command = ~D,B,c
Time = 10

[Command]
name = "waza3_light"
command = ~D,F,x
time = 10
[Command]
name = "waza3_middle"
command = ~D,F,y
time = 10
[Command]
name = "waza3_hard"
command = ~D,F,z
time = 10

[Command]
Name = "FF"
Command = F, F
[Command]
Name = "BB"
Command = B, B

[Command]
Name = "a"
Command = a
Time = 1
[Command]
Name = "b"
Command = b
Time = 1
[Command]
Name = "c"
Command = c
Time = 1
[Command]
Name = "x"
Command = x
Time = 1
[Command]
Name = "y"
Command = y
Time = 1
[Command]
Name = "z"
Command = z
Time = 1

[Command]
Name = "start"
Command = s
Time = 1

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

[StateDef -1]
[State -1];スピニングバードキック
Type = ChangeState
Trigger1 = (Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")||((Command="waza2_light2"||Command="waza2_middle2"||Command="waza2_hard2")&&Var(12)=-2)
Trigger1 = (StateType!=A||(Var(13)&&!Var(10)))&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard"||Command="waza2_hard2", 1102, IFelse(Command="waza2_middle"||Command="waza2_middle2", 1101, 1100))
[State -1];空中スピニングバードキック
Type = ChangeState
Trigger1 = (Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")||((Command="waza2_light2"||Command="waza2_middle2"||Command="waza2_hard2")&&Var(12)=-2)
Trigger1 = StateType=A&&Vel X>0&&Pos Y<-25&&(Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Var(10)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard"||Command="waza2_hard2", 1106, IFelse(Command="waza2_middle"||Command="waza2_middle2", 1105, 1104))

[State -1];百裂脚
Type = ChangeState
Trigger1 = (Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard") && (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza1_hard", 1004, IFelse(Command="waza1_middle", 1002, 1000))

[State -1];気功拳
Type = ChangeState
Trigger1=(Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard")&&!NumProjID(1)&&(StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Var(10)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza3_hard", 1202, IFelse(Command="waza3_middle", 1201, 1200))

[State -1];投げ
Type = ChangeState
Trigger1=(StateNo=20||((Command="holdfwd"||Command="holddown"||Command="holdback")&&Pos Y<-59&&Vel Y!=0&&P2BodyDist X<((43+(Var(10)&&StateType=S)*10+(StateType=A)*10)*Const(Size.XScale))&&StateNo=[50,51])) && (Command="y"||Command="z")&&RoundState=2
Value = IFelse(StateType=S, IFelse(Command="y",504,500), IFelse(Command="y",514,510))

[State -1];特殊攻撃
Type = ChangeState
Trigger1=(((Command="b"||Command="c")&&(Command="holdfwd"||Command="holdback")&&StateType=S&&P2BodyDist X<(48*Const(Size.XScale)))||(Command="b"&&Command="holddown"&&StateType=A))&& (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver))&&Var(30)!=1&&RoundState=2
Value = IFelse(StateType=A, 460, IFelse(Command="b", 260, 270))

[State -1];立ちパンチ系攻撃
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 200+(P2BodyDist X<(28*Const(Size.XScale))), IFelse(Command = "y", 210+(P2BodyDist X<(43*Const(Size.XScale))), 220+(P2BodyDist X<(55*Const(Size.XScale)))))
[State -1];立ちキック系攻撃
Type = ChangeState
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "a", 230+(P2BodyDist X<(43*Const(Size.XScale))), IFelse(Command = "b", 240+(P2BodyDist X<(48*Const(Size.XScale))), 250+(P2BodyDist X<(48*Const(Size.XScale)))))
[State -1];しゃがみ攻撃
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c") && StateType = C && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 300, IFelse(Command = "y", 310, IFelse(Command = "z", 320, IFelse(Command = "a", 330, IFelse(Command = "b", 340, 350)))))
[State -1];空中パンチ
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X=0,IFelse(Command="x", 400, IFelse(Command="y", 410, 420)),IFelse(Command="x", 401, IFelse(Command="y", 411, 421)))
[State -1];空中キック
Type = ChangeState
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X = 0, IFelse(Command = "a", 430, IFelse(Command = "b", 440, 450)), IFelse(Command = "a", 431, IFelse(Command = "b", 441, 451)))
[State -1];弱攻撃連打処理
Type = ChangeState
Trigger1 = Command = "x" && (StateNo=[200,201]) && AnimElem = 3,>1
Value = 200+(P2BodyDist X<(28*Const(Size.XScale)))

[State -1];壁反蹴
Type = ChangeState
Trigger1 = ((BackEdgeDist<3&&Command="holdfwd"&&Vel X<0)||(FrontEdgeDist<3&&Command="holdback"&&Vel X>0)) && Pos Y < -59 && ((Stateno=[50,51])||StateNo=[400,499])
Value = 51
