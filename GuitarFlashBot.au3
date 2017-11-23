HotKeySet("{ESC}","_Exit")

$defaultColor = 1315860


Global $xcoord[5]
$xcoord[0] = 512; x coord green
$xcoord[1] = 611; x coord red
$xcoord[2] = 709; x coord yellow
$xcoord[3] = 807; x coord blue
$xcoord[4] = 903; x coord orange
$ycoord = 744; y coord

Global $xcoordbkcp[5]
Global $colors[5]
$xcoordbkcp[0] = 488; x coordbkcp green
$xcoordbkcp[1] = 588; x coordbkcp red
$xcoordbkcp[2] = 688; x coordbkcp yellow
$xcoordbkcp[3] = 788; x coordbkcp blue
$xcoordbkcp[4] = 888; x coordbkcp orange
$ycoordbkcp = 735; y coord backup

$colors[0] = 38912;color green
$colors[1] = 16711680; color red
$colors[2] = 16053250; color yellow
$colors[3] = 39167; color blue
$colors[4] = 16737536; color orange

$ycheck = 753
While (PixelGetColor($xcoordbkcp[0], $ycheck) <> $colors[0])
	MsgBox(4096,"Bot","Posicione a musica e clique em ok")
WEnd


Send("{a down}")
Send("{s down}")
Send("{j down}")
Send("{k down}")
Send("{l down}")

While 1
	If(PixelGetColor($xcoord[0], $ycoordbkcp) <> $colors[0]) Then
		Send("{a}")
		Send("{a down}")
	EndIf

	If(PixelGetColor($xcoord[0], $ycoordbkcp) <> $colors[1]) Then
		Send("{s}")
		Send("{s down}")
	EndIf

	If(PixelGetColor($xcoord[0], $ycoordbkcp) <> $colors[2]) Then
		Send("{j}")
		Send("{j down}")
	EndIf

	If(PixelGetColor($xcoord[0], $ycoordbkcp) <> $colors[3]) Then
		Send("{k}")
		Send("{k down}")
	EndIf

	If(PixelGetColor($xcoord[0], $ycoordbkcp) <> $colors[4]) Then
		Send("{l}")
		Send("{l down}")
	EndIf
WEnd

Func _Exit()
	Exit
EndFunc