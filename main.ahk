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
kill_line()
{
  Send {ShiftDown}{END}{SHIFTUP}
  Sleep 50 ;[ms] this value depends on your environment
  Send ^x
  global is_pre_spc = 0
  Return
}

; keyconfig
#UseHook
vk1D & 0::Reload

; 変換
vk1D::IME_SET(0)
vk1c::IME_SET(1)
; wasd移動
; vk1D & w::Send,{Blind}{Up}
; vk1D & s::Send,{Blind}{Down}
; vk1D & a::Send,{Blind}{left}
; vk1D & d::Send,{Blind}{right}
; 行末、行頭への移動
vk1D & a::Send,{Blind}{HOME}
vk1D & e::Send,{Blind}{END}
vk7C & a::Send,{Blind}{HOME}
vk7C & e::Send,{Blind}{END}

; 基本の操作を無変換に適用
vk1D & z::Send, ^z
vk1D & x::Send, ^x
vk1D & c::Send, ^c
vk1D & v::Send, ^v
vk1D & s::Send, ^s
vk1D & /::Send, ^/

; emacsの移動
vk1D & n::Send,{Blind}{down}
vk1D & f::Send,{Blind}{right}
vk1D & b::Send,{Blind}{left}
vk1D & p::Send,{Blind}{up}
vk1D & k::Send,{LShift Down}{End}{Del}{LShift Up}
vk1D & d::Send,{BackSpace}
vk7C & n::Send,{Blind}{down}
vk7C & f::Send,{Blind}{right}
vk7C & b::Send,{Blind}{left}
vk7C & p::Send,{Blind}{up}
vk7C & k::Send,{LShift Down}{End}{Del}{LShift Up}
vk7C & d::Send,{BackSpace}

; ctr
^k::Send,{LShift Down}{End}{Del}{LShift Up}	
; capslockの設定

; vimの設定の適用
vk1D & w::Send,{Blind}^{Right}
vk1D & j::Send,{Blind}^{Left}

; original
vk1D & q::Send,^{BackSpace}

; 無変換+@でahkを切る
vk1D & @::
  Suspend, Toggle
  Return

; 半角全角をescに
vkF3::Send,{Esc}
vkF4::Send,{Esc}


