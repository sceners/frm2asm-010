; D:\DEVELOPMENT\release\demo projects\test project1\Form1.frm.asm
; Generated by zConvert FRM2ASM 0.10
; Visit http://KomA.gulli.com for Updates and newer Versions!
; Please send bug reports (with FRM file) to bazik@x-mail.net

        .486
        .model flat, stdcall
        option casemap :none

        include \masm32\include\windows.inc
        include \masm32\include\user32.inc
        include \masm32\include\kernel32.inc
        include \masm32\include\gdi32.inc

        includelib \masm32\lib\user32.lib
        includelib \masm32\lib\kernel32.lib
        includelib \masm32\lib\gdi32.lib



		CHECKBOX1		equ 1
		CHECKBOX2		equ 2
		CHECKBOX3		equ 3
		CHECKBOX4		equ 4
		LISTBOX1		equ 5
		COMBOBOX1		equ 6
		OPTION1		equ 7
		OPTION2		equ 8
		FRAME1		equ 9
		BUTTON1		equ 10
		BUTTON2		equ 11
		TEXTBOX1		equ 12
		TEXTBOX2		equ 13
		TEXTBOX3		equ 14
		LABEL1		equ 15
.data


		szClassName		db "Form1", 0

		wc		WNDCLASSEX <sizeof wc, CS_HREDRAW \
			or CS_VREDRAW or CS_BYTEALIGNWINDOW, \
			offset WndProc, 0, 0, 400000h, \
			0, 0, COLOR_BTNFACE + 1, 0, \
			offset szClassName, 0>

		szCheckBoxClass		db "BUTTON", 0
		szListBoxClass		db "LISTBOX", 0
		szComboBoxClass		db "COMBOBOX", 0
		szOptionClass		db "BUTTON", 0
		szFrameClass		db "BUTTON", 0
		szButtonClass		db "BUTTON", 0
		szTextBoxClass		db "EDIT", 0
		szLabelClass		db "STATIC", 0


		szForm1		db "Test Form", 0
		szCheck1		db ":-)", 0
		szCheck2		db ":-(", 0
		szCheck3		db ":-D", 0
		szCheck4		db ":-p", 0
		szOption2		db "blahblah", 0
		szOption1		db "blah", 0
		szFrame1		db "testframe", 0
		szCommand2		db "This is a button", 0
		szCommand1		db "another button", 0
		szText3		db "Coded by bAZiK [KomA] --> http://KomA.gulli.com", 0
		szText2		db "for FRM2ASM Converter", 0
		szText1		db "This is a sample VB Form", 0
		szLabel1		db "bazik@x-mail.net", 0

.data?
		hWnd0001		 dd ?
		msg		MSG <?>
		hFont		dd ?
		hCheckBox0001		 dd ?
		hCheckBox0002		 dd ?
		hCheckBox0003		 dd ?
		hCheckBox0004		 dd ?
		hListBox0001		 dd ?
		hComboBox0001		 dd ?
		hOption0001		 dd ?
		hOption0002		 dd ?
		hFrame0001		 dd ?
		hButton0001		 dd ?
		hButton0002		 dd ?
		hTextBox0001		 dd ?
		hTextBox0002		 dd ?
		hTextBox0003		 dd ?
		hLabel0001		 dd ?


      .code

  start:

      call WinMain
      invoke ExitProcess, eax

  WinMain proc
      mov wc.hIcon, 0
      invoke LoadCursor, 0, IDC_ARROW
      mov wc.hCursor, eax
      invoke RegisterClassEx, addr wc
      invoke GetSystemMetrics, SM_CXSCREEN
      mov esi,eax
      invoke GetSystemMetrics, SM_CYSCREEN
      shr esi, 1
      shr eax, 1
      sub eax, 466/2
      sub esi, 260/2

      invoke CreateWindowEx, WS_EX_TOPMOST,
                             addr szClassName,
                             addr szForm1,
                             WS_CAPTION or WS_MINIMIZEBOX or WS_SYSMENU or WS_VISIBLE,
                             esi, eax, 466, 260, 0, 0, 400000h, 0
      mov hWnd0001, eax
      invoke ShowWindow, hWnd0001, SW_SHOWNORMAL
      invoke UpdateWindow, hWnd0001
      mov esi, offset msg
   @@:
      invoke GetMessage, esi, 0, 0, 0
      or eax, eax
      je @F
      invoke TranslateMessage, esi
      invoke DispatchMessage, esi
      jmp @B
   @@:
      mov eax, msg.wParam
      ret
  WinMain endp

  WndProc proc hWin :DWORD,uMsg :DWORD, wParam :DWORD, lParam :DWORD

     .if uMsg == WM_CREATE
        invoke GetStockObject, DEFAULT_GUI_FONT
        mov hFont, eax

		invoke CreateWindowEx, 0, addr szCheckBoxClass, addr szCheck1, WS_CHILD or WS_VISIBLE or BS_AUTOCHECKBOX, 8, 88, 97, 17, hWin, CHECKBOX1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szCheckBoxClass, addr szCheck2, WS_CHILD or WS_VISIBLE or BS_AUTOCHECKBOX, 8, 112, 97, 17, hWin, CHECKBOX2, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szCheckBoxClass, addr szCheck3, WS_CHILD or WS_VISIBLE or BS_AUTOCHECKBOX, 8, 136, 97, 17, hWin, CHECKBOX3, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szCheckBoxClass, addr szCheck4, WS_CHILD or WS_VISIBLE or BS_AUTOCHECKBOX, 8, 160, 97, 17, hWin, CHECKBOX4, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, WS_EX_CLIENTEDGE, addr szListBoxClass, 0, WS_CHILD or WS_VISIBLE, 136, 152, 121, 69, hWin, LISTBOX1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szComboBoxClass, 0, WS_CHILD or WS_VISIBLE or CBS_DROPDOWNLIST, 8, 200, 121, 21, hWin, COMBOBOX1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szOptionClass, addr szOption2, WS_CHILD or WS_VISIBLE or BS_AUTORADIOBUTTON, 136, 120, 121, 25, hWin, OPTION1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szOptionClass, addr szOption1, WS_CHILD or WS_VISIBLE or BS_AUTORADIOBUTTON, 136, 88, 121, 25, hWin, OPTION2, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szFrameClass, addr szFrame1, WS_CHILD or WS_VISIBLE or BS_GROUPBOX, 328, 160, 121, 25, hWin, FRAME1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szButtonClass, addr szCommand2, WS_CHILD or WS_VISIBLE, 312, 80, 145, 33, hWin, BUTTON1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szButtonClass, addr szCommand1, WS_CHILD or WS_VISIBLE, 312, 120, 145, 33, hWin, BUTTON2, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, WS_EX_CLIENTEDGE, addr szTextBoxClass, addr szText3, WS_CHILD or WS_VISIBLE, 8, 56, 449, 19, hWin, TEXTBOX1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, WS_EX_CLIENTEDGE, addr szTextBoxClass, addr szText2, WS_CHILD or WS_VISIBLE, 8, 32, 449, 19, hWin, TEXTBOX2, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, WS_EX_CLIENTEDGE, addr szTextBoxClass, addr szText1, WS_CHILD or WS_VISIBLE, 8, 8, 449, 19, hWin, TEXTBOX3, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0
		invoke CreateWindowEx, 0, addr szLabelClass, addr szLabel1, WS_CHILD or WS_VISIBLE, 264, 192, 193, 25, hWin, LABEL1, 400000h, 0
		invoke SendMessage, eax, WM_SETFONT, hFont, 0

    .elseif uMsg == WM_DESTROY

        invoke PostQuitMessage, 0
        xor eax, eax
        ret

    .endif

    invoke DefWindowProc, hWin, uMsg, wParam, lParam

    ret

WndProc endp

end start
