;===========================================================================
; ちょっとこ丸が追加したステート
;===========================================================================
;---------------------------------------------------------------------------
; ここから下の５つのステートは僕が修正前の和訳ＫＦＭに
; 追加パッチとして入れていたものです。修正と調整も済んでます。
; 本家のカンフーマンには存在しません。
; 見慣れないステートコントローラ・トリガーやテクニックがあるので
; キャラ作りのスキルを上げたい人は参考にしてください。
;
; ただし、作成者自身のスキルアップのためにわざと「不完全な状態」にしてます。
; 試行錯誤考えながら改善して、あなたが今作っているキャラに流用してください。
;===========================================================================
;---------------------------------------------------------------------------
; 単なるパワーゲージを溜めるためのステート。
; 攻撃用のステートじゃないので、movetypeは「I」にしてます。
;
; このステートで「hold_c」のコマンドを入力し続けてる間（押しっぱなし）は、
;「PowerAdd」にてパワーゲージが毎フレーム６ポイント増加するようになってる。
;
; エフェクト画像を消すための命令（RemoveExplod）を
;『常時監視ステート（－２）』にて設定しているので、そちらも参照してね。
;---------------------------------------------------------------------------
;パワー溜め（特殊行動）
;[Statedef 700]
;type     = S
;movetype = I
;physics  = S
;ctrl     = 0
;velset   = 0,0
;anim     = 700
;sprpriority = 1

;[State 700, パワーゲージ増減]
;type = PowerAdd
;trigger1 = 1
;value = 6

;[State 700, 押し判定]
;type = PlayerPush
;trigger1 = 1
;value = 0 ;相手を押さず、すり抜ける事が出来る。

;[State 700, エフェクト];「テンプレート.txt」参照
;type = Explod
;trigger1 = NumExplod(130) = 0 ;ＩＤナンバー「130」のExplodが画面中に１枚も出ていない時
;anim = f130
;facing = -1
;postype = p1
;pos = -5,0
;sprpriority = 3
;ownpal = 1
;removetime = -1 ;「-1」なのでアニメーションが終わらず常に繰り返す
;ID = 130

;[State 700, ステート変更]
;type = ChangeState
;trigger1 = command != "hold_c" ;「hold_c」のコマンドではない時（Ｃボタンが離されたら）
;trigger2 = Power >= 3000       ;パワーゲージがレベル３まで溜まったら
;value = 0
;ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; 同人格闘ゲーム『メルティブラッド』よりボタン１個で出せる、
; 相手の攻撃を受け流す防御システム。初代無印版に近い仕様にしてます。
; 複数のテクニックの組み合わせで再現出来る。
;
; これを応用して、ストリートファイターⅢの『ブロッキング』、
; 餓狼MOTWの『ジャストディフェンス（ＥＦＺのリコイルガード）』も再現出来る。
;---------------------------------------------------------------------------
;シールド（特殊行動）
[Statedef 701] 
type     = U ;前のステートの状態を引き継ぐ
movetype = I
physics  = N
ctrl     = 0
anim     = ifelse(StateType=A,705,ifelse(StateType=C,703,701))

[State 701, 状態変更];自分の状態や体勢などを変えるコントローラ
type = StateTypeSet
trigger1 = StateType = A ;自分が今「空中」の状態なら、
Physics = A              ;「物理的な体勢」を「Ａ」にする。自動で重力が掛かるようになるし、
                         ;「Pos Y」が「0以上」になれば強制的に「着地ステート（[Statedef 52]）」になる。

;こちらは相手のHitDef用
[State 701, 受け止め定義];（※８）
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, AA,AP              ;受け止める相手の攻撃属性を指定
;reversal.attr = SCA, NA,SA,HA,NP,SP,HP ;（↑と意味は同じ）
pausetime     = 0,14
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = -1,0
P1StateNo     = 702

;こちらは相手のProjectile用
[State 701, 食らい上書き];（※９）
type = HitOverRide
trigger1 = Time = [0,13]
time = 1
attr = SCA, AA,AP              ;上書き出来る相手の攻撃属性を指定
;attr = SCA, NA,SA,HA,NP,SP,HP ;（↑と意味は同じ）
;forceair = 1                  ;上書きしたら「空中状態」にするか否か（デフォルトは０）
stateno = 702                  ;上書き先のステート
;slot = 0                      ;このHitOverRideのスロットナンバー（デフォルトは０）
IgnoreHitPause = 1

[State 701, 画像の色]
type = PalFX
trigger1 = Time = 0
time = 13
add = 20,70,150
sinadd = 64,32,5,3

[State 701, 軸位置]
type = PosSet
trigger1 = StateType != A
y = 0

[State 701, 移動速度]
type = VelSet
trigger1 = StateType != A
x = 0
y = 0

[State 701, ステート変更]
type = ChangeState
trigger1 = (StateType != A) && (AnimTime = 0)
trigger2 = (StateType = A) && (Time > 19)
value = ifelse(StateType=A,51,ifelse(StateType=C,11,0))
ctrl = 1

;---------------------------------------------------------------------------
; ※８：ReversalDef
;
; 　攻撃判定ボックス（Clsn1）の設置はHitDefを有効にするためだけでなく、
; 　相手の攻撃を受け止める判定を設ける『ReversalDef』にも使う。
;
; 　実際に攻撃を受け止めるには、「attr」の代わりに
;　「reversal.attr」のパラメータを使い、受け止める相手の攻撃属性を指定する。
; 　それ以外はHitDefと設定の仕方が一緒。
;
; 　ReversalDefの設置について二つ注意する事がある。
;
; 　まず、ReversalDefは『Projectileを受け止める事は出来ない』。
; 　あくまでもこのコントローラは「HitDefを受け止めるもの」であるため。
; 
; 　そしてそのHitDefに関係するもう一つの注意点。
;
;　「HitDefを使っている攻撃用ヘルパー」を受け止める場合、
; 　ReversalDefにP2StateNoを設置していたならば
;　『そのヘルパーがそのステートに変わり、相手キャラに分身してしまう』。
; 　波動拳の気弾などにClsn1のあるヘルパーが使われてる場合は明らかにバグになる。
;　「受け止める目標がヘルパーになってしまった場合に、分身するバグを回避する方法」
; 　を自分・相手両方共に駆使する必要がある。コンプリートゲームなら楽だけどね。
;
; 　ちなみに、『MoveReversed』というトリガーは
;　「相手のReversalDef」に「自分のHitDef」が受け止められた時間を計測するトリガー。
; 　逆に「自分のReversalDef」で相手の攻撃を受け止めた事を判断する場合は、
; 　なぜか「MoveHit」が使える。なんでか教えてよエレクバイト先生！（コラ
; 　まぁReversalDefも「攻撃判定を定義する」系統だからなんだろうけどね。
;
;---------------------------------------------------------------------------
; ※９：HitOverRide
;
; 　この命令はその名の如く、攻撃を食らった時
;　『食らい状態を任意のステートで上書きする事が出来る』命令。
; 　これの応用で『ブロッキング』なども作る事が出来る。
;
; 　しかし相手のHitDefに「P2StateNo」がある場合、自分がHitOverRideで
; 　食らい動作を上書き出来る状態なら、
;　『その攻撃を食らわなくなる（相手のHitDefが空振る）』ので注意。
;
;---------------------------------------------------------------------------
;シールド成功
[Statedef 702]
type     = U
movetype = I
physics  = N
ctrl     = 0
velset   = 0,0
anim     = ifelse(StateType=A,706,ifelse(StateType=C,704,702))

[State 702, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = 1, 1

[State 702, 状態変更]
type = StateTypeSet
trigger1 = StateType = A
Physics = A
IgnoreHitPause = 1

[State 702, ライフ増減]
type = LifeAdd
trigger1 = Time = 0
value = 10 ;ライフが１０ポイント回復
IgnoreHitPause = 1

[State 702, 時間停止];自分も相手も制限時間も一時的に止める（ポーズ）
type = Pause
trigger1 = Time = 0
time = 13      ;ポーズする時間（フレーム）
movetime = 13  ;ポーズ中に動ける時間。timeよりも多いとバグる（デフォルトは０）
IgnoreHitPause = 1

[State 702, コントロール]
type = CtrlSet
trigger1 = Time = 14
value = 1

[State 702, 画面全体の色]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255 ;画面全体を塗り潰す色合い（赤,緑,青）
time = 1

[State 702, 軸位置]
type = PosSet
trigger1 = StateType != A
y = 0

[State 702, 移動速度]
type = VelSet
triggerall = StateType = A
trigger1 = Time = [0,13]
x = 0
y = 0

[State 702, ステート変更]
type = ChangeState
trigger1 = (StateType != A) && (AnimTime = 0)
trigger2 = (StateType = A) && (Time > 19)
value = ifelse(StateType=A,51,ifelse(StateType=C,11,0))
ctrl = 1
