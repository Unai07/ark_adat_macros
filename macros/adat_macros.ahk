;-INSTALL AUTOHOTKEY TO USE THIS MACRO


;F1- AUTOCLIKER
;F2- WALK
;F3- DROP ALL YOUR INVENTORY
;F4- BABY MEET
;F5- DROP ALL OTHERS INVENTORY
;F6- DROP DINO STONE, TATCH, BERRY, FLINT AND STONE
;F7- AUTO O
;F8- AUTO E
;F9 ----TRANSFER OTHERS INVENTORY(change your mouse button 5 keyword to F9 with x-mouse button control )
;F10 ----TRANSFER YOUR INVENTORY(change your mouse button 4 keyword to F10 with x-mouse button control )
;F11- AUTO A
;F12- BABY BERRY

;----mouse-----

;-MIDDLE BUTTON----AUTO SPRINT 





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

------your inventory transfer---------

F10::
MouseClick, left,  348,  184
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

------------other inventory transfer-------------------

F9::
MouseClick, left,  1417,  183


return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

------your inventory drop---------

F3::
MouseClick, left,  404,  180
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

------other inventory drop---------

F5::
MouseClick, left,  1470,  186

return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Global variables for toggles
toggle_attack := 0
toggle_e := 0
toggle_run := 0
toggle_a := 0
toggle_o := 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autoattack macro
;; Press F1 to toggle on/off
 
arkAutoAttack:
  IfWinActive ARK: Survival Evolved 
  {
    SendEvent {Click} 
  } 
  else 
  {
    SetTimer, arkAutoAttack, off
  }
return
 
F1::
  if toggle_attack = 0
  { 
    toggle_attack = 1
    SetTimer, arkAutoAttack, 100
    ToolTip, AUTO ATTACK, 10, 10, 1
  }
  else
  {
    toggle_attack = 0
    SetTimer, arkAutoAttack, off
    Tooltip, , , , 1
  }
return

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto E macro
;; Press F8 to toggle on/off
 
arkAutoE:
  IfWinActive ARK: Survival Evolved
  {
    Send, e
  }
  else
  {
    SetTimer, arkAutoE, off
  }
return
 
F8::
  if toggle_e = 0
  {
    toggle_e = 1
    SetTimer, arkAutoE, 100
    ToolTip, AUTO E, 10, 30, 2
  }
  else
  {
    toggle_e = 0
    SetTimer, arkAutoE, off
    Tooltip, , , , 2
  }
return

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autorun macro
;; Press F2 to toggle on/off
 
arkAutoRun:
  IfWinNotActive ARK: Survival Evolved
  {
    SendInput {w up}
    SetTimer, arkAutoRun, off
    toggle_run = 0
  }
return

F2::
  IfWinNotActive ARK: Survival Evolved
    return
  if toggle_run = 0
  {
    SendInput {w down}
    SetTimer, arkAutoRun, 200
    toggle_run = 1
    ToolTip, AUTO RUN, 10, 50, 3
  }
  else
  {
    toggle_run = 0
    SendInput {w up}
    SetTimer, arkAutoRun, off
    Tooltip, , , , 3
  }
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

--------SPRINT-------------

*MButton::
SprintToggle := !SprintToggle
If (SprintToggle)
{ Send, {lshift Down}
  Send, {Blind}{w Down}
  ToolTip, AUTO SPRINT, 10, 30, 2
}
else
{ Send, {lshift up}
  Send, {w up}
      Tooltip, , , , 2
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Auto A macro
;; Press F11 to toggle on/off
 
arkAutoA:
  IfWinActive ARK: Survival Evolved
  {
    Send, a
  }
  else
  {
    SetTimer, arkAutoA, off
  }
return
 
F11::
  if toggle_a = 0
  {
    toggle_a = 1
    SetTimer, arkAutoA, 100
    ToolTip, AUTO A, 10, 30, 2
  }
  else
  {
    toggle_a = 0
    SetTimer, arkAutoA, off
    Tooltip, , , , 2
  }
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ----------------Auto O macro------------------
;; Press F7 to toggle on/off
 
arkAutoO:
  IfWinActive ARK: Survival Evolved
  {
    Send, o
  }
  else
  {
    SetTimer, arkAutoO, off
  }
return
 
F7::
  if toggle_o = 0
  {
    toggle_o = 1
    SetTimer, arkAutoO, 100
    ToolTip, AUTO O, 10, 30, 2
  }
  else
  {
    toggle_o = 0
    SetTimer, arkAutoO, off
    Tooltip, , , , 2
  }
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;----------------DROP DINO STONE, TATCH, BERRY, FLINT AND WOOD---------------



F6::
ToolTip, DROP FARM, 10, 30, 2

;(CHANGE ALL "SEND F" WITH THE KEY YOU OPEN THE DINO INVENTORY)--------------------------------------------------------------------------------------------------
Send f


sleep 250

Sleep 250
MouseClick, left,  1474,  180
Send {Click}
Sleep 250
MouseClick, left,  1268,  183
Send {Click}
Send, thatch
Sleep 100
MouseClick, left,  1472,  180
Send {Click}
Sleep 250
MouseClick, left,  1268,  183
Send {Click}
Send, berry
Sleep 100
MouseClick, left,  1472,  180
Send {Click}
Sleep 250
MouseClick, left,  1268,  183
Send {Click}
Send, stone
Sleep 100
MouseClick, left,  1472,  180
Send {Click}
Sleep 250
MouseClick, left,  1268,  183
Send {Click}
Send, flint
Sleep 100
MouseClick, left,  1472,  180
Send {Click}
Sleep 250
MouseClick, left,  1268,  183
Send {Click}
Send, wood
Sleep 100
MouseClick, left,  1472,  180
Send {Click}

Sleep 250
send f

Tooltip, , , , 2
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;PUT RAW ON DINOS INVENTORY AND THROW SPOILED MEAT, YOU HAVE TO PUT IN FRONT OF THE DINO YOU WANT TO FILL

;(CHANGE ALL "SEND F" WITH THE KEY YOU OPEN THE DINO INVENTORY)--------------------------------------------------------------------------------------------------

F4::

ToolTip, BABY MEAT, 10, 30, 2
Send f
sleep 250

sleep 250
MouseClick, left,  1268,  183
Send, spoiled
sleep 125
MouseClick, left,  1472,  180
sleep 125

MouseClick, left,  132,  183
Send, raw

MouseClick, left,  362,  180
send f

Tooltip, , , , 2
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;PUT BERRYS ON DINOS INVENTORY, YOU HAVE TO PUT IN FRONT OF THE DINO YOU WANT TO FILL
;(CHANGE ALL "SEND F" WITH THE KEY YOU OPEN THE DINO INVENTORY)--------------------------------------------------------------------------------------------------


F12::

ToolTip, BABY BERRY, 10, 30, 2
Send f
sleep 250

sleep 250

MouseClick, left,  132,  183
Send, berry

MouseClick, left,  362,  180
send f


Tooltip, , , , 2
return



;CREATED BY: BATTLEGENIUS