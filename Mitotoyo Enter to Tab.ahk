#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

c:= 0
Loop
{
	if (c = 3)
	{
		Input, waste, L1 T0.1
		if (ErrorLevel != "Timeout") 
		{
			SendInput {Tab}
		}
		c := 0
	}
	Input, temp, L1 V T0.2
	if (ErrorLevel = "Timeout")
	{
		c := 0
	}
	else if (temp = 0) or (temp = 1) or (temp = 2) or  (temp = 3) or  (temp = 4) or  (temp = 5) or  (temp = 6) or  (temp = 7) or (temp = 8) or  (temp = 9)   
	{
		c := c + 1
	}
	else
	{
		c := 0
	}
}

return