[Command]
Name = "waza2"
Command = ~F, U, B, DB, x
Time = 20
[Command]
Name = "waza2"
Command = ~U, B, D, FD, x
Time = 20
[Command]
Name = "waza2"
Command = ~B, D, F, UF, x
Time = 20
[Command]
Name = "waza2"
Command = ~D, F, U, BU, x
Time = 20
[Command]
Name = "waza2"
Command = ~F, D, B, UB, x
Time = 20
[Command]
Name = "waza2"
Command = ~D, B, U, FU, x
Time = 20
[Command]
Name = "waza2"
Command = ~B, U, F, DF, x
Time = 20
[Command]
Name = "waza2"
Command = ~U, F, D, BD, x
Time = 20
[Command]
Name = "waza2"
Command = ~F, U, B, DB, y
Time = 20
[Command]
Name = "waza2"
Command = ~U, B, D, FD, y
Time = 20
[Command]
Name = "waza2"
Command = ~B, D, F, UF, y
Time = 20
[Command]
Name = "waza2"
Command = ~D, F, U, BU, y
Time = 20
[Command]
Name = "waza2"
Command = ~F, D, B, UB, y
Time = 20
[Command]
Name = "waza2"
Command = ~D, B, U, FU, y
Time = 20
[Command]
Name = "waza2"
Command = ~B, U, F, DF, y
Time = 20
[Command]
Name = "waza2"
Command = ~U, F, D, BD, y
Time = 20
[Command]
Name = "waza2"
Command = ~F, U, B, DB, z
Time = 20
[Command]
Name = "waza2"
Command = ~U, B, D, FD, z
Time = 20
[Command]
Name = "waza2"
Command = ~B, D, F, UF, z
Time = 20
[Command]
Name = "waza2"
Command = ~D, F, U, BU, z
Time = 20
[Command]
Name = "waza2"
Command = ~F, D, B, UB, z
Time = 20
[Command]
Name = "waza2"
Command = ~D, B, U, FU, z
Time = 20
[Command]
Name = "waza2"
Command = ~B, U, F, DF, z
Time = 20
[Command]
Name = "waza2"
Command = ~U, F, D, BD, z
Time = 20

[Command]
Name = "o_waza1_fp"
Command = F, ~D, DF, x+y+z
Time = 20
[Command]
Name = "o_waza1_bp"
Command = B, ~D, DB, x+y+z
Time = 20
[Command]
Name = "o_waza1_fk"
Command = F, ~D, DF, a+b+c
Time = 20
[Command]
Name = "o_waza1_bk"
Command = B, ~D, DB, a+b+c
Time = 20

[Command]
Name = "o_super"
Command = x, x, F, a, z
Time = 20

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
Name = "holdx"
Command = /$x
Time = 1
[Command]
Name = "holdy"
Command = /$y
Time = 1
[Command]
Name = "holdz"
Command = /$z
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
[State -1];瞬獄落
Type = ChangeState
Trigger1 = Command = "o_super" && StateType != A && Var(10) = 2 && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
Value = 1400
[State -1];阿修羅ハラショー
Type = ChangeState
Trigger1 = (Command="o_waza1_fp"||Command="o_waza1_bp"||Command="o_waza1_fk"||Command="o_waza1_bk") && Var(10) = 2
Trigger1 = (StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&RoundState=2
Value = IFelse(Command="o_waza1_fp", 1300, IFelse(Command="o_waza1_bp", 1301, IFelse(Command="o_waza1_fk", 1302, 1303)))
[State -1];コサックキック
Type = ChangeState
Trigger1=Command="a"&&Command="b"&&Command="c"&&(StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(10)=2&&RoundState=2
Value = 1500

[State -1];スクリューパイルドライバー
Type = ChangeState
Trigger1 = Command = "waza2" && (StateType!=A||Var(13)||Var(10)=2) && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0) && P2BodyDist X < (110*Const(Size.XScale))&&RoundState=2
Value = 1100

[State -1];ダブルラリアット
Type = ChangeState
Trigger1=(Command="x"&&Command="y"&&Command="z")&&(StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&RoundState=2
Value = 1000
[State -1];斬空ダブルラリアット
Type = ChangeState
Trigger1=(Command="x"&&Command="y"&&Command="z")&&StateType=A&&Ctrl&&Var(10)=2&&RoundState=2
Value = 1600
[State -1];ハイスピードダブルラリアット
Type = ChangeState
Trigger1=(Command="a"&&Command="b"&&Command="c")&&(StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(10)=1&&RoundState=2
Value = 1200

[State -1];立ち投げ
Type = ChangeState
Trigger1=StateNo=20&&(((Command="b"||Command="c")&&P2BodyDist X<(40*Const(Size.XScale)))||Command="y"||Command="z")&&P2BodyDist X<(55*Const(Size.XScale))&&RoundState=2
Value = IFelse(Command="y"||Command="z", IFelse(P2BodyDist X<(40*Const(Size.XScale)), IFelse(Command="y", 510,530), IFelse(Command="y", 500, 520)), IFelse(Command="b", 540, 550))
[State -1];座り投げ
Type = ChangeState
Trigger1 = (StateNo=10||StateNo=11) && (Command="y"||Command="z") && Command = "holddown" && P2BodyDist X < (55*Const(Size.XScale)) && RoundState = 2
Value = IFelse(P2BodyDist X<(40*Const(Size.XScale)), IFelse(Command="y", 570, 580), IFelse(Command="y", 560, 565))

[State -1];特殊攻撃
Type = ChangeState
Trigger1 = (((Command="z"||(Var(10)=1&&Command="a"))&&Command="holddown"&&Vel X!=0)||((Command="y"||Command="z")&&Command="holdup"&&Vel X=0)) && StateType = A && Ctrl&&Var(30)!=1&&RoundState=2
Value = IFelse(Vel X=0, 460, IFelse(Command="a", 431, 470))

[State -1];立ちパンチ攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x", 200+(P2BodyDist X<(35*Const(Size.XScale))), IFelse(Command="y" ,210, 220))
[State -1];立ちキック攻撃
Type = ChangeState
Trigger1 = (Command="a"||Command="b"||Command="c") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="a",230+(P2BodyDist X<(22*Const(Size.XScale))), IFelse(Command="b",240+(P2BodyDist X<(40*Const(Size.XScale))),250+(P2BodyDist X<(40*Const(Size.XScale)))))
[State -1];しゃがみ攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z"||Command="a"||Command="b"||Command="c") && StateType = C && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x", 300, IFelse(Command="y", 310, IFelse(Command="z", 320, IFelse(Command="a", 330, IFelse(Command="b", 340, 350)))))
[State -1];空中パンチ攻撃
Type = ChangeState
Trigger1 = (Command="x"||Command="y"||Command="z") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x",400,IFelse(Command="y",410,IFelse(Vel X=0,420,421)))
[State -1];空中キック攻撃
Type = ChangeState
Trigger1 = (Command="a"||Command="b"||Command="c") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="a",IFelse(Vel X=0||Var(10)=1,430,431),IFelse(Command="b",440,450))
[State -1];弱攻撃連打処理
Type = ChangeState
Trigger1 = (Command="x"&&(((StateNo=200||StateNo=300)&&AnimElem=2,>1)||(StateNo=201&&AnimElem=3,>0))) && RoundState = 2
Value = IFelse(Command="holddown", 300, 200+(P2BodyDist X<(35*Const(Size.XScale))))