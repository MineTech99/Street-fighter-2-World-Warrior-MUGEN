;===========================================================================
; 準常時監視ステート（−３）
;===========================================================================
;---------------------------------------------------------------------------
; こちらは通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
; −１や−２と上手く使い分けて行きましょう。
;---------------------------------------------------------------------------

;-----------------------------------
;ここは「ジャンプ」か「バックステップ」をした後に
;着地する音を鳴らす設定をしています。

[Statedef -3]

[State -3, 音を鳴らす]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52  ;着地ステート
trigger2 = stateno = 106 ;バックステップ後の着地ステート
value = 40, 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ■最後に『コモンステート』について■
; コモンステートとは、全キャラ共通の基本動作のステートです。
; 通常は特に変更しない限り、M.U.G.E.N本体のdataフォルダにある
;「common1.cns（コモンステートファイル）」を使います。
;
; しかし、もしもあなたのキャラのステートファイルでcommon1.cnsと同じ番号の
; 基本動作のステートを作った場合は処理が上書きされ、
; common1.cns側の同じ番号のステートは無効になります。
;
; common1.cnsのプログラム優先度は最低に属しているので、
; ステートの作成には番号に注意しないといけません。
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
