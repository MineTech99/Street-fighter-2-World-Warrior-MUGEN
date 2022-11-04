;#ADD004BASIC PIEs#
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

;[Remap]
;x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
;y = y      ;Ｙボタン　　　　　　　　　〃
;z = z      ;Ｚボタン　　　　　　　　　〃
;a = a      ;Ａボタン　　　　　　　　　〃
;b = b      ;Ｂボタン　　　　　　　　　〃
;c = c      ;Ｃボタン　　　　　　　　　〃
;s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| デフォルト設定 |-----------------------------------------------------------

;[Defaults]
;command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

;command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１〜３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;==============================================================================
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

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
;-| 必殺技 |-------------------------------------------------------------------
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
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 12

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 12

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
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
;-| ボタン単発 |---------------------------------------------------------------

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
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;------------------------------------------------------------------------------
; ■準常時監視ステート（−１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
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
;瞬獄殺
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
;滅殺豪波動
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
;真空波動拳
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
;滅殺豪昇龍
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
;阿修羅閃空
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
;昇龍拳
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
;竜巻斬空脚
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
;ファイヤー波動拳
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
;波動拳
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
;空中竜巻斬空脚
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
;投げ技
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
;鎖骨割り
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
;鳩尾砕き
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
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 近距離立ち弱パンチ]
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
[State -1, 遠距離立ち弱パンチ]
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
[State -1, 近距離立ち中パンチ]
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
[State -1, 遠距離立ち中パンチ]
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
[State -1, 近距離立ち強パンチ]
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
[State -1, 遠距離立ち強パンチ]
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
[State -1, 近距離立ち弱キック]
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
[State -1, 遠距離立ち弱キック]
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
[State -1, 近距離立ち中キック]
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
[State -1, 遠距離立ち中キック]
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
[State -1, 近距離立ち強キック]
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
[State -1, 遠距離立ち強キック]
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

[State -1, 挑発]
type = null ;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, しゃがみ弱パンチ]
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
[State -1, しゃがみ中パンチ]
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
[State -1, しゃがみ強パンチ]
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
[State -1, しゃがみ弱キック]
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
[State -1, しゃがみ中キック]
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
[State -1, しゃがみ強キック]
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
[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 350
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, 斜めジャンプ中パンチ]
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
[State -1, ジャンプ中パンチ]
type = ChangeState
value = 355
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, ジャンプ強パンチ]
type = ChangeState
value = 360
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, 斜めジャンプ弱キック]
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
[State -1, 垂直ジャンプ弱キック]
type = ChangeState
value = 365
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, 斜めジャンプ中キック]
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
[State -1, 垂直ジャンプ中キック]
type = ChangeState
value = 370
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
[State -1, 斜めジャンプ強キック]
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
[State -1, ジャンプ強キック]
type = ChangeState
value = 375
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
ignorehitpause = 0

