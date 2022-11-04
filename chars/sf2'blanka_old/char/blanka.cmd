[Command]
Name = "waza1_light"
Command = x, x, x, x, x, x
Time = 60
[Command]
Name = "waza1_middle"
Command = y, y, y, y, y, y
Time = 50
[Command]
Name = "waza1_hard"
Command = z, z, z, z, z, z
Time = 40

[Command]
Name = "waza2_light"
Command = ~60$B, $F, x
[Command]
Name = "waza2_middle"
Command = ~60$B, $F, y
[Command]
Name = "waza2_hard"
Command = ~60$B, $F, z

[Command]
Name = "waza3_light"
Command = ~60$D, $U, a
[Command]
Name = "waza3_middle"
Command = ~60$D, $U, b
[Command]
Name = "waza3_hard"
Command = ~60$D, $U, c

[Command]
Name = "waza2_light2"
Command = ~10$B, $F, x
[Command]
Name = "waza2_middle2"
Command = ~10$B, $F, y
[Command]
Name = "waza2_hard2"
Command = ~10$B, $F, z
[Command]
Name = "waza3_light2"
Command = ~10$D, $U, a
[Command]
Name = "waza3_middle2"
Command = ~10$D, $U, b
[Command]
Name = "waza3_hard2"
Command = ~10$D, $U, c

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
[State -1];バーチカルローリング
Type = ChangeState
Trigger1 = Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard"||((Command="waza3_light2"||Command="waza3_middle2"||Command="waza3_hard2")&&Var(12)=-2)
Trigger1 = (StateType!=A||Var(13))&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Var(10)&&RoundState=2
Value = IFelse(Command="waza3_hard"||Command="waza3_hard2", 1202, IFelse(Command="waza3_middle"||Command="waza3_middle2", 1201, 1200))

[State -1];ロ－リングアタック
Type = ChangeState
Trigger1 = Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard"||((Command="waza2_light2"||Command="waza2_middle2"||Command="waza2_hard2")&&Var(12)=-2)
Trigger1 = (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && RoundState = 2
Value = IFelse(Command="waza2_hard"||Command="waza2_hard2", 1102, IFelse(Command="waza2_middle"||Command="waza2_middle2", 1101, 1100))

[State -1];エレクトリックサンダー
Type = ChangeState
Trigger1=(Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard")&&(StateType!=A||Var(13))&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&RoundState=2
Value = IFelse(Command="waza1_hard", 1002, IFelse(Command="waza1_middle", 1001, 1000))

[State -1];ワイルドファング
Type = ChangeState
Trigger1 = StateNo = 20 && P2BodyDist X < (54*Const(Size.XScale)) && Command = "z" && Var(30) != 1 && RoundState = 2
Value = 500

[State -1];立ちパンチ攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="z",220,IFelse(P2BodyDist X<(52*Const(Size.XScale)),IFelse(Command="x",201,IFelse(Command="holdfwd"||Command="holdback",260,211)), IFelse(Command="x",200,210)))
[State -1];立ちキック攻撃
Type = ChangeState
Trigger1 = (Command="a"||Command="b"||Command="c") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="c",250,IFelse(P2BodyDist X<(56*Const(Size.XScale)),IFelse(Command="a",231,241), IFelse(Command="a",230,240)))
[State -1];しゃがみ攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z"||Command="a"||Command="b"||Command="c") && StateType = C && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x", 300, IFelse(Command="y", 310, IFelse(Command="z", 320, IFelse(Command="a", 330, IFelse(Command="b", 340, 350)))))
[State -1];空中攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z"||Command="a"||Command="b"||Command="c") && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x",400,IFelse(Command="y",410,IFelse(Command="z",420+(Vel X!=0),IFelse(Command="a",430,IFelse(Command="b",440,450)))))