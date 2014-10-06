;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	   Copyright (c) 2010 by Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-B231-7414-99			    |
; |		       NCFTA Canada/Concordia University		    |
; +-------------------------------------------------------------------------+
;
;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	   Copyright (c) 2010 by Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-B231-7414-99			    |
; |		       NCFTA Canada/Concordia University		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	1FD02ED7471DE5451DC146CF105A3341
; Input	CRC32 :	39A29EAA

; File Name   :	c:\Users\farhadi\Desktop\dll4\bugtrap.dll
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	10000000
; Section 1. (virtual address 00001000)
; Virtual size			: 00024AB6 ( 150198.)
; Section size in file		: 00024C00 ( 150528.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
; OS type	  :  MS	Windows
; Application type:  DLL 32bit

		include	uni.inc	; see unicode subdir of	ida for	info on	unicode

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 10001000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __fastcall sub_10001000(HWND hWnd)
sub_10001000	proc near		; CODE XREF: sub_10001081+32p

String		= byte ptr -108h
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 108h
		mov	eax, dword_1002D4A0
		push	esi
		push	edi
		mov	edi, ecx
		xor	eax, ebp
		mov	[ebp+var_4], eax
		push	edi		; hWnd
		call	ds:GetParent
		push	eax		; hWndFrom
		push	edi		; hWnd
		call	sub_100117D4
		mov	esi, ds:GetDlgItem
		pop	ecx
		pop	ecx
		push	2		; nIDDlgItem
		push	edi		; hDlg
		call	esi ; GetDlgItem
		push	eax		; hWnd
		call	ds:SetFocus
		push	3FCh		; nIDDlgItem
		push	edi		; hDlg
		call	esi ; GetDlgItem
		mov	edi, eax
		push	104h		; nMaxCount
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	edi		; hWnd
		call	ds:GetWindowTextA
		lea	eax, [ebp+String]
		mov	esi, offset dword_1002E360
		push	eax		; char *
		mov	ecx, esi
		call	sub_10004B8E
		push	edi		; hWnd
		mov	ecx, esi	; dwNewLong
		call	sub_100052F1
		mov	ecx, [ebp+var_4]
		pop	edi
		xor	ecx, ebp
		xor	eax, eax
		pop	esi
		call	sub_1001B74A
		leave
		retn
sub_10001000	endp


; =============== S U B	R O U T	I N E =======================================


; BOOL __stdcall sub_10001081(HWND, UINT, WPARAM, LPARAM)
sub_10001081	proc near		; DATA XREF: sub_10003042+10o

hWnd		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= word ptr  0Ch

		mov	eax, [esp+arg_4]
		dec	eax
		dec	eax
		jz	short loc_100010BA
		sub	eax, 10Eh
		jz	short loc_100010AF
		dec	eax
		jnz	short loc_100010C4
		movzx	eax, [esp+arg_8]
		test	eax, eax
		jle	short loc_100010C4
		cmp	eax, 2
		jg	short loc_100010C4
		push	0		; nResult
		push	[esp+4+hWnd]	; hDlg
		call	ds:EndDialog
		jmp	short loc_100010C4
; ---------------------------------------------------------------------------

loc_100010AF:				; CODE XREF: sub_10001081+Dj
		mov	ecx, [esp+hWnd]	; hWnd
		call	sub_10001000
		jmp	short locret_100010C6
; ---------------------------------------------------------------------------

loc_100010BA:				; CODE XREF: sub_10001081+6j
		mov	ecx, offset dword_1002E360
		call	sub_10004C0D

loc_100010C4:				; CODE XREF: sub_10001081+10j
					; sub_10001081+19j ...
		xor	eax, eax

locret_100010C6:			; CODE XREF: sub_10001081+37j
		retn	10h
sub_10001081	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame fpd=98h

; int __fastcall sub_100010C9(HWND hWnd)
sub_100010C9	proc near		; CODE XREF: sub_10001254+60p

lpString	= dword	ptr -118h
hDlg		= dword	ptr -10Ch
hWnd		= dword	ptr -108h
String		= byte ptr -104h
var_4		= dword	ptr -4

		push	ebp
		lea	ebp, [esp-98h]
		sub	esp, 118h
		mov	eax, dword_1002D4A0
		xor	eax, ebp
		mov	[ebp+98h+var_4], eax
		mov	eax, dword_1002F834
		mov	eax, [eax+38h]
		test	eax, eax
		push	ebx
		push	esi
		mov	ebx, ecx
		push	edi
		mov	edi, ds:SendMessageA
		mov	[ebp+98h+hDlg],	ebx
		mov	esi, 80h
		jz	short loc_1000110A
		push	eax		; lParam
		push	1		; wParam
		push	esi		; Msg
		push	ebx		; hWnd
		call	edi ; SendMessageA

loc_1000110A:				; CODE XREF: sub_100010C9+38j
		mov	eax, dword_1002F834
		mov	eax, [eax+3Ch]
		test	eax, eax
		jz	short loc_1000111D
		push	eax		; lParam
		push	0		; wParam
		push	esi		; Msg
		push	ebx		; hWnd
		call	edi ; SendMessageA

loc_1000111D:				; CODE XREF: sub_100010C9+4Bj
		push	ebx		; hWnd
		call	ds:GetParent
		push	eax		; hWndFrom
		push	ebx		; hWnd
		call	sub_100117D4
		pop	ecx
		pop	ecx
		push	2000h
		lea	ecx, [ebp+98h+lpString]
		call	sub_10016557
		mov	esi, ds:GetDlgItem
		push	3FFh		; nIDDlgItem
		push	ebx		; hDlg
		call	esi ; GetDlgItem
		mov	ebx, eax
		mov	eax, dword_1002F834
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_1000115D
		push	0		; lParam
		push	eax		; wParam
		push	30h		; Msg
		push	ebx		; hWnd
		call	edi ; SendMessageA

loc_1000115D:				; CODE XREF: sub_100010C9+8Aj
		lea	ecx, [ebp+98h+lpString]
		call	sub_10016642
		lea	eax, [ebp+98h+lpString]
		push	eax
		call	sub_10009A99
		mov	eax, [ebp+98h+lpString]
		test	eax, eax
		pop	ecx
		jnz	short loc_1000117B
		mov	eax, offset byte_100264BC

loc_1000117B:				; CODE XREF: sub_100010C9+ABj
		push	eax		; lpString
		push	ebx		; hWnd
		mov	ebx, ds:SetWindowTextA
		call	ebx ; SetWindowTextA
		push	400h		; nIDDlgItem
		push	[ebp+98h+hDlg]	; hDlg
		call	esi ; GetDlgItem
		mov	[ebp+98h+hWnd],	eax
		mov	eax, dword_1002F834
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_100011A7
		push	0		; lParam
		push	eax		; wParam
		push	30h		; Msg
		push	[ebp+98h+hWnd]	; hWnd
		call	edi ; SendMessageA

loc_100011A7:				; CODE XREF: sub_100010C9+D2j
		lea	eax, [ebp+98h+String]
		push	eax		; char *
		call	sub_10009CE8
		pop	ecx
		lea	eax, [ebp+98h+String]
		push	eax		; lpString
		push	[ebp+98h+hWnd]	; hWnd
		call	ebx ; SetWindowTextA
		push	401h		; nIDDlgItem
		push	[ebp+98h+hDlg]	; hDlg
		call	esi ; GetDlgItem
		mov	[ebp+98h+hWnd],	eax
		mov	eax, dword_1002F834
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_100011DC
		push	0		; lParam
		push	eax		; wParam
		push	30h		; Msg
		push	[ebp+98h+hWnd]	; hWnd
		call	edi ; SendMessageA

loc_100011DC:				; CODE XREF: sub_100010C9+107j
		lea	eax, [ebp+98h+String]
		push	eax		; char *
		call	sub_10009DDA
		pop	ecx
		lea	eax, [ebp+98h+String]
		push	eax		; lpString
		push	[ebp+98h+hWnd]	; hWnd
		call	ebx ; SetWindowTextA
		push	402h		; nIDDlgItem
		push	[ebp+98h+hDlg]	; hDlg
		call	esi ; GetDlgItem
		mov	esi, eax
		mov	eax, dword_1002F834
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_1000120E
		push	0		; lParam
		push	eax		; wParam
		push	30h		; Msg
		push	esi		; hWnd
		call	edi ; SendMessageA

loc_1000120E:				; CODE XREF: sub_100010C9+13Bj
		lea	ecx, [ebp+98h+lpString]
		call	sub_10016642
		lea	eax, [ebp+98h+lpString]
		push	eax
		call	sub_1000A0A4
		mov	eax, [ebp+98h+lpString]
		test	eax, eax
		pop	ecx
		jnz	short loc_1000122C
		mov	eax, offset byte_100264BC

loc_1000122C:				; CODE XREF: sub_100010C9+15Cj
		push	eax		; lpString
		push	esi		; hWnd
		call	ebx ; SetWindowTextA
		push	[ebp+98h+lpString] ; void *
		call	j_j__free
		pop	ecx
		mov	ecx, [ebp+98h+var_4]
		pop	edi
		xor	eax, eax
		pop	esi
		xor	ecx, ebp
		inc	eax
		pop	ebx
		call	sub_1001B74A
		add	ebp, 98h
		leave
		retn
sub_100010C9	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10001254(HWND hDlg,	int, HDC hdc, HWND hWnd)
sub_10001254	proc near		; DATA XREF: sub_10001C7C+40o

hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
hWnd		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_4]
		sub	eax, 110h
		jz	short loc_100012B1
		dec	eax
		jz	short loc_10001295
		sub	eax, 27h
		jnz	short loc_100012AD
		push	[ebp+hWnd]	; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 402h
		jnz	short loc_100012AD
		push	14h		; nIndex
		call	ds:GetSysColor
		push	eax		; color
		push	[ebp+hdc]	; hdc
		call	ds:SetBkColor
		mov	eax, dword_1002F834
		mov	eax, [eax+2Ch]
		jmp	short loc_100012B9
		test	esi, esi
  		jz	short loc_100010B4
    		lea	eax, [esp+181Ch+cbNeeded]
    		lea	ecx, [esp+181Ch+hModule]
    		push	eax		; lpcbNeeded
    		push	4		; cb
    		push	ecx		; lphModule
   		push	esi		; hProcess
   		call	EnumProcessModules
   		test	eax, eax
   		jz	short loc_100010AD
   		mov	eax, [esp+181Ch+hModule]
   		lea	edx, [esp+181Ch+Str1]
   		push	800h		; nSize
   		push	edx		; lpBaseName
   		push	eax		; hModule
   		push	esi		; hProcess
   		call	GetModuleBaseNameW
   		test	eax, eax
   		jz	short loc_100010AD
   		mov	ecx, [esp+181Ch+Str2]
   		lea	edx, [esp+181Ch+Str1]
   		push	ecx		; Str2
   		push	edx		; Str1
   		call	__wcsicmp
   		add	esp, 8
   		test	eax, eax

; ---------------------------------------------------------------------------

loc_10001295:				; CODE XREF: sub_10001254+Ej
		movzx	eax, word ptr [ebp+hdc]
		test	eax, eax
		jle	short loc_100012AD
		cmp	eax, 2
		jg	short loc_100012AD
		push	0		; nResult
		push	[ebp+hDlg]	; hDlg
		call	ds:EndDialog

loc_100012AD:				; CODE XREF: sub_10001254+13j
					; sub_10001254+23j ...
		xor	eax, eax
		jmp	short loc_100012B9
; ---------------------------------------------------------------------------

loc_100012B1:				; CODE XREF: sub_10001254+Bj
		mov	ecx, [ebp+hDlg]	; hWnd
		call	sub_100010C9

loc_100012B9:				; CODE XREF: sub_10001254+3Fj
					; sub_10001254+5Bj
		pop	ebp
		retn	10h
sub_10001254	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame fpd=198h

; int __fastcall sub_100012BD(HWND hWnd)
sub_100012BD	proc near		; CODE XREF: sub_10001840+4Bp

var_218		= byte ptr -218h
var_210		= dword	ptr -210h
var_204		= dword	ptr -204h
var_1F0		= dword	ptr -1F0h
var_1EC		= dword	ptr -1ECh
var_1DC		= dword	ptr -1DCh
var_1D0		= dword	ptr -1D0h
lParam		= dword	ptr -1C8h
var_1C0		= dword	ptr -1C0h
var_1BC		= dword	ptr -1BCh
Rect		= tagRECT ptr -1A8h
hWnd		= dword	ptr -198h
hDlg		= dword	ptr -194h
pszPath		= byte ptr -190h
var_8C		= dword	ptr -8Ch
var_84		= byte ptr -84h
Buffer		= byte ptr -44h
var_4		= dword	ptr -4

		push	ebp
		lea	ebp, [esp-198h]
		sub	esp, 218h
		mov	eax, dword_1002D4A0
		xor	eax, ebp
		push	ebx
		mov	[ebp+198h+var_4], eax
		mov	eax, dword_1002F834
		mov	eax, [eax+38h]
		test	eax, eax
		push	esi
		mov	esi, ds:SendMessageA
		push	edi
		mov	edi, ecx
		mov	[ebp+198h+hDlg], edi
		mov	ebx, 80h
		jz	short loc_100012FE
		push	eax		; lParam
		push	1		; wParam
		push	ebx		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA

loc_100012FE:				; CODE XREF: sub_100012BD+38j
		mov	eax, dword_1002F834
		mov	eax, [eax+3Ch]
		test	eax, eax
		jz	short loc_10001311
		push	eax		; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA

loc_10001311:				; CODE XREF: sub_100012BD+4Bj
		push	edi		; hWnd
		call	ds:GetParent
		push	eax		; hWndFrom
		push	edi		; hWnd
		call	sub_100117D4
		pop	ecx
		pop	ecx
		push	1		; char
		push	5		; int
		push	offset dword_1002E498 ;	int
		push	edi		; hWndParent
		mov	ecx, offset dword_1002E478
		call	sub_10005E42
		push	3F1h		; nIDDlgItem
		push	edi		; hDlg
		mov	edi, ds:GetDlgItem
		call	edi ; GetDlgItem
		push	4020h		; lParam
		push	0		; wParam
		mov	ebx, 1036h
		push	ebx		; Msg
		push	eax		; hWnd
		mov	[ebp+198h+hWnd], eax
		call	esi ; SendMessageA
		push	3F2h		; nIDDlgItem
		push	[ebp+198h+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	4020h		; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	eax		; hWnd
		mov	[ebp+198h+hDlg], eax
		call	esi ; SendMessageA
		lea	eax, [ebp+198h+Rect]
		push	eax		; lpRect
		push	[ebp+198h+hWnd]	; hWnd
		call	ds:GetClientRect
		push	15h		; nIndex
		call	ds:GetSystemMetrics
		sub	[ebp+198h+Rect.right], eax
		push	20h		; size_t
		lea	eax, [ebp+198h+lParam]
		push	0		; int
		push	eax		; void *
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp+198h+Buffer]
		mov	[ebp+198h+var_1BC], eax
		mov	eax, [ebp+198h+Rect.right]
		push	5
		pop	ecx
		cdq
		idiv	ecx
		mov	edi, ds:LoadStringA
		push	40h		; cchBufferMax
		mov	[ebp+198h+lParam], 6
		mov	[ebp+198h+var_1C0], eax
		lea	eax, [ebp+198h+Buffer]
		push	eax		; lpBuffer
		push	8Ah		; uID
		push	hInstance	; hInstance
		call	edi ; LoadStringA
		lea	eax, [ebp+198h+lParam]
		push	eax		; lParam
		push	0		; wParam
		add	ebx, 0FFFFFFE5h
		push	ebx		; Msg
		push	[ebp+198h+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	eax, [ebp+198h+Rect.right]
		push	5
		shl	eax, 2
		pop	ecx
		cdq
		idiv	ecx
		push	40h		; cchBufferMax
		mov	[ebp+198h+var_1C0], eax
		lea	eax, [ebp+198h+Buffer]
		push	eax		; lpBuffer
		push	8Bh		; uID
		push	hInstance	; hInstance
		call	edi ; LoadStringA
		lea	eax, [ebp+198h+lParam]
		push	eax		; lParam
		push	1		; wParam
		push	ebx		; Msg
		push	[ebp+198h+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	eax, [ebp+198h+Rect.right]
		cdq
		sub	eax, edx
		sar	eax, 1
		push	40h		; cchBufferMax
		mov	[ebp+198h+var_1C0], eax
		lea	eax, [ebp+198h+Buffer]
		push	eax		; lpBuffer
		push	89h		; uID
		push	hInstance	; hInstance
		call	edi ; LoadStringA
		lea	eax, [ebp+198h+lParam]
		push	eax		; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	[ebp+198h+hDlg]	; hWnd
		call	esi ; SendMessageA
		mov	eax, [ebp+198h+Rect.right]
		push	4
		pop	ecx
		cdq
		idiv	ecx
		push	40h		; cchBufferMax
		mov	[ebp+198h+var_1C0], eax
		lea	eax, [ebp+198h+Buffer]
		push	eax		; lpBuffer
		push	8Ch		; uID
		push	hInstance	; hInstance
		call	edi ; LoadStringA
		lea	eax, [ebp+198h+lParam]
		push	eax		; lParam
		push	1		; wParam
		push	ebx		; Msg
		push	[ebp+198h+hDlg]	; hWnd
		call	esi ; SendMessageA
		mov	eax, [ebp+198h+Rect.right]
		push	4
		pop	ecx
		cdq
		idiv	ecx
		push	40h		; cchBufferMax
		mov	[ebp+198h+var_1C0], eax
		lea	eax, [ebp+198h+Buffer]
		push	eax		; lpBuffer
		push	8Dh		; uID
		push	hInstance	; hInstance
		call	edi ; LoadStringA
		lea	eax, [ebp+198h+lParam]
		push	eax		; lParam
		push	2		; wParam
		push	ebx		; Msg
		push	[ebp+198h+hDlg]	; hWnd
		call	esi ; SendMessageA
		lea	ecx, [ebp+198h+pszPath]
		call	sub_10008057
		mov	ecx, dword_1002F840
		lea	eax, [ebp+198h+pszPath]
		push	eax		; pszPath
		call	sub_100083B8
		test	eax, eax
		jz	loc_1000153B
		push	28h		; size_t
		lea	eax, [ebp+198h+var_1F0]
		push	0		; int
		push	eax		; void *
		call	_memset
		add	esp, 0Ch
		mov	[ebp+198h+var_1F0], 5
		xor	edi, edi

loc_100014CF:				; CODE XREF: sub_100012BD+27Cj
		push	0Ah		; int
		lea	eax, [ebp+198h+var_84]
		push	eax		; char *
		push	[ebp+198h+var_8C] ; unsigned __int32
		call	__ultoa
		lea	eax, [ebp+198h+var_84]
		mov	[ebp+198h+var_1DC], eax
		mov	eax, [ebp+198h+var_8C]
		add	esp, 0Ch
		mov	[ebp+198h+var_1D0], eax
		lea	eax, [ebp+198h+var_1F0]
		push	eax		; lParam
		push	0		; wParam
		push	1007h		; Msg
		push	[ebp+198h+hWnd]	; hWnd
		mov	[ebp+198h+var_1EC], edi
		call	esi ; SendMessageA
		lea	eax, [ebp+198h+pszPath]
		mov	[ebp+198h+var_204], eax
		lea	eax, [ebp+198h+var_218]
		push	eax		; lParam
		push	edi		; wParam
		push	102Eh		; Msg
		push	[ebp+198h+hWnd]	; hWnd
		mov	[ebp+198h+var_210], 1
		call	esi ; SendMessageA
		mov	ecx, dword_1002F840
		lea	eax, [ebp+198h+pszPath]
		push	eax		; pszPath
		inc	edi
		call	sub_100084BC
		test	eax, eax
		jnz	short loc_100014CF

loc_1000153B:				; CODE XREF: sub_100012BD+1F3j
		push	[ebp+198h+hWnd]	; hWnd
		mov	ecx, offset dword_1002D0B0
		call	sub_10011EAE
		push	[ebp+198h+hDlg]	; hWnd
		mov	ecx, offset dword_1002D0B8
		call	sub_10011EAE
		mov	ecx, [ebp+198h+var_4]
		pop	edi
		xor	eax, eax
		pop	esi
		xor	ecx, ebp
		inc	eax
		pop	ebx
		call	sub_1001B74A
		add	ebp, 198h
		leave
		retn
sub_100012BD	endp