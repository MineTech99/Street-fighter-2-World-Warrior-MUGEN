; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
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

;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

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
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

;[Command]
;name = "recovery" ;必須コマンド名
;command = x+y
;time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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
;(「パワー溜め」用にコマンドを追加してます)
;[Command]
;name = "hold_c"
;command = /c

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

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。
[State -1];REVERSAL ATTACK準備
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

[State -1];千烈脚
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = Command="super" && (StateType!=A||Var(13)) && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0||Var(19)>0) && Power = 1000 && !Var(10) && Var(30) != 1 && RoundState = 2
Value = 2000

[State -1];天昇脚
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&!Var(13)) || ((Command="waza4_light2"||Command="waza4_middle2"||Command="waza4_hard2")&&Var(13))
Trigger1 = StateType!=A && (Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&!Var(10) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza4_hard"||Command="waza4_hard2", 1302, IFelse(Command="waza4_middle"||Command="waza4_middle2", 1301, 1300))

[State -1];スピニングバードキック
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")&&!Var(13)&&!Var(10)) || ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&(Var(13)||Var(10)))
Trigger1 = StateType!=A&&(Ctrl||StateNo=40||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard"||Command="waza4_hard", 1102, IFelse(Command="waza2_middle"||Command="waza4_middle", 1101, 1100))
[State -1];空中スピニングバードキック
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza2_light"||Command="waza2_middle"||Command="waza2_hard")&&!Var(13)&&!Var(10)) || ((Command="waza4_light"||Command="waza4_middle"||Command="waza4_hard")&&(Var(13)||Var(10)))
Trigger1 = StateType=A&&Pos Y<-25&&Ctrl&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza2_hard", 1106, IFelse(Command="waza2_middle", 1105, 1104))

[State -1];百裂脚
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command="waza1_light"||Command="waza1_middle"||Command="waza1_hard") && (StateType!=A||Var(13)) && (Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0) && Var(30) != 1 && RoundState = 2
Value = IFelse(Command="waza1_hard", 1004, IFelse(Command="waza1_middle", 1002, 1000))

[State -1];気功拳
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((Command="waza3_light"||Command="waza3_middle"||Command="waza3_hard")&&!Var(13)) || ((Command="waza3_light2"||Command="waza3_middle2"||Command="waza3_hard2")&&Var(13))
Trigger1 = !NumProjID(1)&&StateType!=A&&(Ctrl||(Time<2&&StateNo=[200,399])||Var(6)>0)&&Var(30)!=1&&RoundState=2
Value = IFelse(Command="waza3_hard"||Command="waza3_hard2", 1202, IFelse(Command="waza3_middle"||Command="waza3_middle2", 1201, 1200))

[State -1];投げ
Type = ChangeState
triggerall = var(59)<=0
Trigger1=(StateNo=20||((Command="holdfwd"||Command="holddown"||Command="holdback")&&Pos Y<-59&&Vel Y!=0&&P2BodyDist X<((48+(StateType=A)*5)*Const(Size.XScale))&&StateNo=[50,51])) && (Command="y"||Command="z")&&RoundState=2
Value = IFelse(StateType=S, IFelse(Command="y",504,500), IFelse(Command="y",514,510))

[State -1];特殊攻撃
Type = ChangeState
triggerall = var(59)<=0
Trigger1=(((Command="b"||Command="c")&&Command="holdfwd"&&Command="holddown"&&StateType!=A)||(Command="b"&&Command="holddown"&&Command!="holdfwd"&&Command!="holdback"&&StateType=A))&& Ctrl&&Var(30)!=1&&RoundState=2
Value = IFelse(StateType=A, 460, IFelse(Command="b", 260, 270))

[State -1];立ちパンチ系攻撃
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 200+(P2BodyDist X<(28*Const(Size.XScale))), IFelse(Command = "y", 210+(P2BodyDist X<(43*Const(Size.XScale))), 220+(P2BodyDist X<(55*Const(Size.XScale)))))
[State -1];立ちキック系攻撃
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = S && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "a", 230+(P2BodyDist X<(43*Const(Size.XScale))), IFelse(Command = "b", 240+(P2BodyDist X<(48*Const(Size.XScale))), 250+(P2BodyDist X<(48*Const(Size.XScale)))))
[State -1];しゃがみ攻撃
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c") && StateType = C && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Command = "x", 300, IFelse(Command = "y", 310, IFelse(Command = "z", 320, IFelse(Command = "a", 330, IFelse(Command = "b", 340, 350)))))
[State -1];空中パンチ
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "x" || Command = "y" || Command = "z") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X=0,IFelse(Command="x", 400, IFelse(Command="y", 410, 420)),IFelse(Command="x", 401, IFelse(Command="y", 411, 421)))
[State -1];空中キック
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = (Command = "a" || Command = "b" || Command = "c") && StateType = A && Ctrl && Var(30) != 1 && RoundState = 2
Value = IFelse(Vel X = 0, IFelse(Command = "a", 430, IFelse(Command = "b", 440, 450)), IFelse(Command = "a", 431, IFelse(Command = "b", 441, 451)))
[State -1];弱攻撃連打処理
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = Command = "x" && (StateNo=[200,201]) && AnimElem = 3,>1
Value = 200+(P2BodyDist X<(28*Const(Size.XScale)))

[State -1];壁反蹴
Type = ChangeState
triggerall = var(59)<=0
Trigger1 = ((BackEdgeDist<3&&Command="holdfwd"&&Vel X<0)||(FrontEdgeDist<3&&Command="holdback"&&Vel X>0)) && Pos Y < -59 && ((Stateno=[50,51])||StateNo=[400,499])
Value = 51



;------------------------------------------------------------------------------

;[State -1, パワー溜め];ちょっとこ丸が追加した技
;type = ChangeState
;value = 700
;triggerall = command = "hold_c"
;triggerall = power < 3000 ;ゲージが満タンの時は出せない
;trigger1 = statetype != A && ctrl

;AI--------------------------------------------------------------------------

