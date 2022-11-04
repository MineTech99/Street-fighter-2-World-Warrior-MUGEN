[Command]
Name = "waza1_light"
Command = ~D, F, x
Time = 9
[Command]
Name = "waza1_middle"
Command = ~D, F, y
Time = 9
[Command]
Name = "waza1_hard"
Command = ~D, F, z
Time = 9

[Command]
Name = "waza2_light"
Command = F, ~D, DF, x
Time = 20
[Command]
Name = "waza2_middle"
Command = F, ~D, DF, y
Time = 20
[Command]
Name = "waza2_hard"
Command = F, ~D, DF, z
Time = 20

[Command]
Name = "waza3_light"
Command = ~D, B, a
[Command]
Name = "waza3_middle"
Command = ~D, B, b
[Command]
Name = "waza3_hard"
Command = ~D, B, c

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
[State -1];ó≥ä™ê˘ïóãr
Type = ChangeState
Trigger1 = (Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard") && (StateType!=A||(Var(13)&&!Var(10))) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza3_light", 1200, IFelse(Command="waza3_middle", 1201, 1202))
[State -1];ãÛíÜó≥ä™ê˘ïóãr
Type = ChangeState
Trigger1 = (Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard")&&StateType=A&&(Ctrl||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Pos Y<-55&&Var(10)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza3_light", 1203, IFelse(Command="waza3_middle", 1204, 1205))

[State -1];è∏ó¥åù
Type = ChangeState
Trigger1 = (Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard") && (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza2_light", 1100, IFelse(Command="waza2_middle", 1101, 1102))

[State -1];îgìÆåù
Type = ChangeState
Trigger1=(Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard")&&!NumProjID(1)&&(StateType!=A||Var(13))&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0))&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza1_light", 1000, IFelse(Command="waza1_middle", 1001, 1002))

[State -1];ìäÇ∞
Type = ChangeState
Trigger1 = StateNo = 20 && (Command = "y" || Command = "z" || Command = "b" || Command = "c" || (Var(10) = 2 && Command = "a")) && P2BodyDist X<(65*Const(Size.XScale)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "y", 504, IFelse(Command = "z", 500, IFelse(Command = "b", 510, 514)))

[State -1];óßÇøÉpÉìÉ`ånçUåÇ
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="x", 200+(P2BodyDist X<(35*Const(Size.XScale))), IFelse(Command="y", 210+(P2BodyDist X<(42*Const(Size.XScale))), 220+(P2BodyDist X<(46*Const(Size.XScale)))))
[State -1];óßÇøÉLÉbÉNånçUåÇ
Type = ChangeState
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = S && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(P2BodyDist X>(29*Const(Size.XScale)), IFelse(Command = "a", 230, IFelse(Command = "b", 240, IFelse(P2BodyDist X<(45*Const(Size.XScale)), 251, 250))), IFelse(Command = "a", 231, IFelse(Command = "b", 241, 251)))
[State -1];ÇµÇ·Ç™Ç›çUåÇ
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c") && StateType = C && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 300, IFelse(Command = "y", 310, IFelse(Command = "z", 320, IFelse(Command = "a", 330, IFelse(Command = "b", 340, 350)))))
[State -1];ãÛíÜÉpÉìÉ`
Type = ChangeState
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 400, IFelse(Command = "y", 410, 420))
[State -1];ãÛíÜÉLÉbÉN
Type = ChangeState
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = A && (Ctrl||(Var(12)=-2&&MoveType=H&&HitShakeOver&&Pos Y<=0)) && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X = 0, IFelse(Command = "a", 430, IFelse(Command = "b", 440, 450)), IFelse(Command = "a", 431, IFelse(Command = "b", 441, 451)))
[State -1];ìØéûâüÇµÉXÉyÉVÉÉÉã
Type = ChangeState
Trigger1 = Command = "a" && AnimElem = 2,>1 && (Command="x"||Command="y"||Command="z"||Command="holdup") && ((StateNo=231&&Command="holddown") || (Command!="holddown"&&StateNo=330)) && RoundState = 2
Value=IFelse(Command="holdup",40,IFelse(Command="holddown",IFelse(Command="x",300,IFelse(Command="y",310,320)),IFelse(P2Dist X<60*Const(Size.XScale),IFelse(Command="x",201,IFelse(Command="y",211,221)),IFelse(Command="x",200,IFelse(Command="y",210,220)))))
[State -1];é„çUåÇòAë≈èàóù
Type = ChangeState
Trigger1 = (Command="x"&&((StateNo=[200,201])||StateNo=300)&&AnimElem=2,>1) || ((Command = "holddown" || P2Dist X < 60*Const(Size.XScale)) && Command = "a" && ((StateNo = 231 && AnimElem = 2,>1) || (StateNo = 330 && AnimElem = 2,>1)))&&RoundState=2
Value = IFelse(Command="x", IFelse(Command="holddown", 300, IFelse(P2Dist X>59*Const(Size.XScale),200,201)), IFelse(Command="holddown", 330, IFelse(StateNo=330||P2Dist X<60*Const(Size.XScale), 231, 230)))
