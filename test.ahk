; capslock:vk7C
; 変換:vk1D
; 無変換:vk1C

#Include %A_ScriptDir%/IME.ahk


; 変換,無変換を行えるようにする
; vk1D::
;  Send, {vk1D}
;   Return
; vk1C::
;   Send, {vk1C}
;   Return

; functions

; keyconfig
#UseHook
vk1D & 0::Reload

; 変換
vk1D::IME_SET(0)
vk1c::IME_SET(1)
; wasd移動
vk1D & w::Send,{Blind}{Up}
vk1D & a::Send,{Blind}{left}
vk1D & s::Send,{Blind}{down}
vk1D & d::Send,{Blind}{right}
; 行末、行頭への移動
vk1D & q::Send,{HOME}
vk1D & e::Send,{END}

; capslockの設定

