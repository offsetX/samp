; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	Z:\sampsrc\02Xu1\saco\game\textdraw.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??0CTextDraw@@QAE@PAU_TEXT_DRAW_TRANSMIT@@PAD@Z	; CTextDraw::CTextDraw
PUBLIC	?SetText@CTextDraw@@QAEXPAD@Z			; CTextDraw::SetText
PUBLIC	?Draw@CTextDraw@@QAEXXZ				; CTextDraw::Draw
PUBLIC	?GetScreenWidth@CGame@@QAEHXZ			; CGame::GetScreenWidth
PUBLIC	?GetScreenHeight@CGame@@QAEHXZ			; CGame::GetScreenHeight
PUBLIC	?GetHudVertScale@CGame@@QAEMXZ			; CGame::GetHudVertScale
PUBLIC	?GetHudHorizScale@CGame@@QAEMXZ			; CGame::GetHudHorizScale
PUBLIC	__real@3f000000
PUBLIC	__real@43e00000
PUBLIC	__real@44200000
EXTRN	_memset:PROC
EXTRN	_strcpy:PROC
EXTRN	_strlen:PROC
EXTRN	_strncpy:PROC
EXTRN	?Font_PrintString@@YAXMMPAD@Z:PROC		; Font_PrintString
EXTRN	?Font_SetColor@@YAXK@Z:PROC			; Font_SetColor
EXTRN	?Font_SetDropColor@@YAXK@Z:PROC			; Font_SetDropColor
EXTRN	?Font_SetOutline@@YAXH@Z:PROC			; Font_SetOutline
EXTRN	?Font_Unk12@@YAXH@Z:PROC			; Font_Unk12
EXTRN	?Font_SetScale@@YAXMM@Z:PROC			; Font_SetScale
EXTRN	?Font_SetJustify@@YAXH@Z:PROC			; Font_SetJustify
EXTRN	?Font_SetFontStyle@@YAXH@Z:PROC			; Font_SetFontStyle
EXTRN	?Font_SetProportional@@YAXH@Z:PROC		; Font_SetProportional
EXTRN	?Font_UseBox@@YAXHH@Z:PROC			; Font_UseBox
EXTRN	?Font_UseBoxColor@@YAXK@Z:PROC			; Font_UseBoxColor
EXTRN	?Font_SetLineWidth@@YAXM@Z:PROC			; Font_SetLineWidth
EXTRN	?Font_SetLineHeight@@YAXM@Z:PROC		; Font_SetLineHeight
EXTRN	?Font_SetShadow@@YAXH@Z:PROC			; Font_SetShadow
EXTRN	?Font_UnkConv@@YAXPADHHHHHH0@Z:PROC		; Font_UnkConv
EXTRN	?Font_UnkConv2@@YAXPAD@Z:PROC			; Font_UnkConv2
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	?pGame@@3PAVCGame@@A:DWORD			; pGame
EXTRN	__fltused:DWORD
;	COMDAT __real@44200000
CONST	SEGMENT
__real@44200000 DD 044200000r			; 640
CONST	ENDS
;	COMDAT __real@43e00000
CONST	SEGMENT
__real@43e00000 DD 043e00000r			; 448
CONST	ENDS
;	COMDAT __real@3f000000
CONST	SEGMENT
__real@3f000000 DD 03f000000r			; 0.5
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\game.h
;	COMDAT ?GetHudHorizScale@CGame@@QAEMXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetHudHorizScale@CGame@@QAEMXZ PROC			; CGame::GetHudHorizScale, COMDAT
; _this$ = ecx

; 155  : 	float GetHudHorizScale() { return *(float *)0x859520; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	fld	DWORD PTR ds:8754464
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetHudHorizScale@CGame@@QAEMXZ ENDP			; CGame::GetHudHorizScale
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\game.h
;	COMDAT ?GetHudVertScale@CGame@@QAEMXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetHudVertScale@CGame@@QAEMXZ PROC			; CGame::GetHudVertScale, COMDAT
; _this$ = ecx

; 154  : 	float GetHudVertScale() { return *(float *)0x859524; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	fld	DWORD PTR ds:8754468
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetHudVertScale@CGame@@QAEMXZ ENDP			; CGame::GetHudVertScale
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\game.h
;	COMDAT ?GetScreenHeight@CGame@@QAEHXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetScreenHeight@CGame@@QAEHXZ PROC			; CGame::GetScreenHeight, COMDAT
; _this$ = ecx

; 153  : 	int GetScreenHeight() { return *(int*)0xC17048; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ds:12677192
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetScreenHeight@CGame@@QAEHXZ ENDP			; CGame::GetScreenHeight
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\game.h
;	COMDAT ?GetScreenWidth@CGame@@QAEHXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetScreenWidth@CGame@@QAEHXZ PROC			; CGame::GetScreenWidth, COMDAT
; _this$ = ecx

; 152  : 	int GetScreenWidth() { return *(int*)0xC17044; };

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR ds:12677188
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetScreenWidth@CGame@@QAEHXZ ENDP			; CGame::GetScreenWidth
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\textdraw.cpp
;	COMDAT ?Draw@CTextDraw@@QAEXXZ
_TEXT	SEGMENT
_fUseY$ = -176						; size = 4
_fUseX$ = -164						; size = 4
_fScriptX$ = -152					; size = 4
_fScriptY$ = -140					; size = 4
_fPS2Width$ = -128					; size = 4
_fPS2Height$ = -116					; size = 4
_fLineHeight$ = -104					; size = 4
_fLineWidth$ = -92					; size = 4
_fScaleX$ = -80						; size = 4
_fScaleY$ = -68						; size = 4
_fHorizHudScale$ = -56					; size = 4
_fVertHudScale$ = -44					; size = 4
_iScreenHeight$ = -32					; size = 4
_iScreenWidth$ = -20					; size = 4
_this$ = -8						; size = 4
?Draw@CTextDraw@@QAEXXZ PROC				; CTextDraw::Draw, COMDAT
; _this$ = ecx

; 55   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 372				; 00000174H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-372]
	mov	ecx, 93					; 0000005dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 56   : 	if(!m_szText || !strlen(m_szText)) return;

	cmp	DWORD PTR _this$[ebp], 0
	je	SHORT $LN7@Draw
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN8@Draw
$LN7@Draw:
	jmp	$LN9@Draw
$LN8@Draw:

; 57   : 
; 58   : 	strcpy(m_szString,m_szText);

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 256				; 00000100H
	push	ecx
	call	_strcpy
	add	esp, 8

; 59   : 
; 60   : 	int iScreenWidth, iScreenHeight;
; 61   : 	float fVertHudScale, fHorizHudScale;
; 62   : 
; 63   :     iScreenWidth = pGame->GetScreenWidth();

	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?GetScreenWidth@CGame@@QAEHXZ		; CGame::GetScreenWidth
	mov	DWORD PTR _iScreenWidth$[ebp], eax

; 64   : 	iScreenHeight = pGame->GetScreenHeight();

	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?GetScreenHeight@CGame@@QAEHXZ		; CGame::GetScreenHeight
	mov	DWORD PTR _iScreenHeight$[ebp], eax

; 65   : 	fVertHudScale = pGame->GetHudVertScale();

	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?GetHudVertScale@CGame@@QAEMXZ		; CGame::GetHudVertScale
	fstp	DWORD PTR _fVertHudScale$[ebp]

; 66   : 	fHorizHudScale = pGame->GetHudHorizScale();

	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?GetHudHorizScale@CGame@@QAEMXZ		; CGame::GetHudHorizScale
	fstp	DWORD PTR _fHorizHudScale$[ebp]

; 67   : 
; 68   :     float fScaleY = (float)iScreenHeight * fVertHudScale * m_TextDrawData.fLetterHeight * 0.5f;

	cvtsi2ss xmm0, DWORD PTR _iScreenHeight$[ebp]
	mulss	xmm0, DWORD PTR _fVertHudScale$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mulss	xmm0, DWORD PTR [eax+1284]
	mulss	xmm0, DWORD PTR __real@3f000000
	movss	DWORD PTR _fScaleY$[ebp], xmm0

; 69   : 	float fScaleX = (float)iScreenWidth * fHorizHudScale * m_TextDrawData.fLetterWidth;

	cvtsi2ss xmm0, DWORD PTR _iScreenWidth$[ebp]
	mulss	xmm0, DWORD PTR _fHorizHudScale$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mulss	xmm0, DWORD PTR [eax+1280]
	movss	DWORD PTR _fScaleX$[ebp], xmm0

; 70   : 
; 71   : 	Font_SetScale(fScaleX,fScaleY);

	push	ecx
	movss	xmm0, DWORD PTR _fScaleY$[ebp]
	movss	DWORD PTR [esp], xmm0
	push	ecx
	movss	xmm0, DWORD PTR _fScaleX$[ebp]
	movss	DWORD PTR [esp], xmm0
	call	?Font_SetScale@@YAXMM@Z			; Font_SetScale
	add	esp, 8

; 72   : 	Font_SetColor(m_TextDrawData.dwLetterColor);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+1288]
	push	ecx
	call	?Font_SetColor@@YAXK@Z			; Font_SetColor
	add	esp, 4

; 73   :     Font_Unk12(0);

	push	0
	call	?Font_Unk12@@YAXH@Z			; Font_Unk12
	add	esp, 4

; 74   : 
; 75   : 	if(m_TextDrawData.byteAlignRight) Font_SetJustify(2);

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1316]
	test	ecx, ecx
	je	SHORT $LN6@Draw
	push	2
	call	?Font_SetJustify@@YAXH@Z		; Font_SetJustify
	add	esp, 4
	jmp	SHORT $LN3@Draw
$LN6@Draw:

; 76   : 	else if(m_TextDrawData.byteCentered) Font_SetJustify(0);

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1293]
	test	ecx, ecx
	je	SHORT $LN4@Draw
	push	0
	call	?Font_SetJustify@@YAXH@Z		; Font_SetJustify
	add	esp, 4
	jmp	SHORT $LN3@Draw
$LN4@Draw:

; 77   :     else Font_SetJustify(1);

	push	1
	call	?Font_SetJustify@@YAXH@Z		; Font_SetJustify
	add	esp, 4
$LN3@Draw:

; 78   : 
; 79   : 	//Font_SetRightJustifyWrap(0.0f);
; 80   : 
; 81   : 	float fLineWidth = iScreenWidth * fHorizHudScale * m_TextDrawData.fLineWidth;

	cvtsi2ss xmm0, DWORD PTR _iScreenWidth$[ebp]
	mulss	xmm0, DWORD PTR _fHorizHudScale$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mulss	xmm0, DWORD PTR [eax+1296]
	movss	DWORD PTR _fLineWidth$[ebp], xmm0

; 82   : 	Font_SetLineWidth(fLineWidth);

	push	ecx
	movss	xmm0, DWORD PTR _fLineWidth$[ebp]
	movss	DWORD PTR [esp], xmm0
	call	?Font_SetLineWidth@@YAXM@Z		; Font_SetLineWidth
	add	esp, 4

; 83   : 
; 84   : 	float fLineHeight = iScreenWidth * fHorizHudScale * m_TextDrawData.fLineHeight;

	cvtsi2ss xmm0, DWORD PTR _iScreenWidth$[ebp]
	mulss	xmm0, DWORD PTR _fHorizHudScale$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mulss	xmm0, DWORD PTR [eax+1300]
	movss	DWORD PTR _fLineHeight$[ebp], xmm0

; 85   : 	Font_SetLineHeight(fLineHeight);

	push	ecx
	movss	xmm0, DWORD PTR _fLineHeight$[ebp]
	movss	DWORD PTR [esp], xmm0
	call	?Font_SetLineHeight@@YAXM@Z		; Font_SetLineHeight
	add	esp, 4

; 86   : 
; 87   : 	Font_UseBox(m_TextDrawData.byteBox,0);

	push	0
	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1294]
	push	ecx
	call	?Font_UseBox@@YAXHH@Z			; Font_UseBox
	add	esp, 8

; 88   : 	Font_UseBoxColor(m_TextDrawData.dwBoxColor);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+1304]
	push	ecx
	call	?Font_UseBoxColor@@YAXK@Z		; Font_UseBoxColor
	add	esp, 4

; 89   : 	Font_SetProportional(m_TextDrawData.byteProportional);

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1308]
	push	ecx
	call	?Font_SetProportional@@YAXH@Z		; Font_SetProportional
	add	esp, 4

; 90   : 	Font_SetDropColor(m_TextDrawData.dwBackgroundColor);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+1309]
	push	ecx
	call	?Font_SetDropColor@@YAXK@Z		; Font_SetDropColor
	add	esp, 4

; 91   : 
; 92   : 	if(m_TextDrawData.byteOutline) {

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1314]
	test	ecx, ecx
	je	SHORT $LN2@Draw

; 93   : 		Font_SetOutline(m_TextDrawData.byteOutline);

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1314]
	push	ecx
	call	?Font_SetOutline@@YAXH@Z		; Font_SetOutline
	add	esp, 4

; 94   : 	} else {

	jmp	SHORT $LN1@Draw
$LN2@Draw:

; 95   : 		Font_SetShadow(m_TextDrawData.byteShadow);

	mov	eax, DWORD PTR _this$[ebp]
	movzx	ecx, BYTE PTR [eax+1313]
	push	ecx
	call	?Font_SetShadow@@YAXH@Z			; Font_SetShadow
	add	esp, 4
$LN1@Draw:

; 96   : 	}
; 97   : 
; 98   : 	Font_SetFontStyle(m_TextDrawData.dwStyle);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+1320]
	push	ecx
	call	?Font_SetFontStyle@@YAXH@Z		; Font_SetFontStyle
	add	esp, 4

; 99   : 
; 100  : 	Font_UnkConv(m_szString,-1,-1,-1,-1,-1,-1,m_szString);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 256				; 00000100H
	push	eax
	push	-1
	push	-1
	push	-1
	push	-1
	push	-1
	push	-1
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 256				; 00000100H
	push	ecx
	call	?Font_UnkConv@@YAXPADHHHHHH0@Z		; Font_UnkConv
	add	esp, 32					; 00000020H

; 101  : 	Font_UnkConv2(m_szString);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 256				; 00000100H
	push	eax
	call	?Font_UnkConv2@@YAXPAD@Z		; Font_UnkConv2
	add	esp, 4

; 102  : 
; 103  : 	float fPS2Height = 448.0f;

	movss	xmm0, DWORD PTR __real@43e00000
	movss	DWORD PTR _fPS2Height$[ebp], xmm0

; 104  : 	float fPS2Width = 640.0f;

	movss	xmm0, DWORD PTR __real@44200000
	movss	DWORD PTR _fPS2Width$[ebp], xmm0

; 105  : 	float fScriptY =  m_TextDrawData.fY;

	mov	eax, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [eax+1328]
	movss	DWORD PTR _fScriptY$[ebp], xmm0

; 106  : 	float fScriptX =  m_TextDrawData.fX;

	mov	eax, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [eax+1324]
	movss	DWORD PTR _fScriptX$[ebp], xmm0

; 107  : 	float fUseX,fUseY;
; 108  : 
; 109  : 	fUseY = iScreenHeight - ((fPS2Height - fScriptY) * (iScreenHeight * fVertHudScale));

	cvtsi2ss xmm0, DWORD PTR _iScreenHeight$[ebp]
	movss	xmm1, DWORD PTR _fPS2Height$[ebp]
	subss	xmm1, DWORD PTR _fScriptY$[ebp]
	cvtsi2ss xmm2, DWORD PTR _iScreenHeight$[ebp]
	mulss	xmm2, DWORD PTR _fVertHudScale$[ebp]
	mulss	xmm1, xmm2
	subss	xmm0, xmm1
	movss	DWORD PTR _fUseY$[ebp], xmm0

; 110  :     fUseX = iScreenWidth - ((fPS2Width - fScriptX) * (iScreenWidth * fHorizHudScale));

	cvtsi2ss xmm0, DWORD PTR _iScreenWidth$[ebp]
	movss	xmm1, DWORD PTR _fPS2Width$[ebp]
	subss	xmm1, DWORD PTR _fScriptX$[ebp]
	cvtsi2ss xmm2, DWORD PTR _iScreenWidth$[ebp]
	mulss	xmm2, DWORD PTR _fHorizHudScale$[ebp]
	mulss	xmm1, xmm2
	subss	xmm0, xmm1
	movss	DWORD PTR _fUseX$[ebp], xmm0

; 111  :     
; 112  :     Font_PrintString(fUseX,fUseY,m_szString);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 256				; 00000100H
	push	eax
	push	ecx
	movss	xmm0, DWORD PTR _fUseY$[ebp]
	movss	DWORD PTR [esp], xmm0
	push	ecx
	movss	xmm0, DWORD PTR _fUseX$[ebp]
	movss	DWORD PTR [esp], xmm0
	call	?Font_PrintString@@YAXMMPAD@Z		; Font_PrintString
	add	esp, 12					; 0000000cH

; 113  : 	Font_SetOutline(0);

	push	0
	call	?Font_SetOutline@@YAXH@Z		; Font_SetOutline
	add	esp, 4
$LN9@Draw:

; 114  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 372				; 00000174H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Draw@CTextDraw@@QAEXXZ ENDP				; CTextDraw::Draw
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\textdraw.cpp
;	COMDAT ?SetText@CTextDraw@@QAEXPAD@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_szText$ = 8						; size = 4
?SetText@CTextDraw@@QAEXPAD@Z PROC			; CTextDraw::SetText, COMDAT
; _this$ = ecx

; 47   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 48   : 	memset(m_szText,0,MAX_TEXT_DRAW_LINE);

	push	256					; 00000100H
	push	0
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 49   : 	strncpy(m_szText, szText, MAX_TEXT_DRAW_LINE);

	push	256					; 00000100H
	mov	eax, DWORD PTR _szText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_strncpy
	add	esp, 12					; 0000000cH

; 50   : 	m_szText[MAX_TEXT_DRAW_LINE-1] = 0;

	mov	eax, 1
	imul	ecx, eax, 255
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+ecx], 0

; 51   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?SetText@CTextDraw@@QAEXPAD@Z ENDP			; CTextDraw::SetText
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\game\textdraw.cpp
;	COMDAT ??0CTextDraw@@QAE@PAU_TEXT_DRAW_TRANSMIT@@PAD@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_TextDrawTransmit$ = 8					; size = 4
_szText$ = 12						; size = 4
??0CTextDraw@@QAE@PAU_TEXT_DRAW_TRANSMIT@@PAD@Z PROC	; CTextDraw::CTextDraw, COMDAT
; _this$ = ecx

; 17   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 18   : 	memset(&m_TextDrawData,0,sizeof(TEXT_DRAW_DATA));

	push	68					; 00000044H
	push	0
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 1280				; 00000500H
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 19   : 
; 20   : 	// Set standard parameters
; 21   : 	m_TextDrawData.fLetterWidth = TextDrawTransmit->fLetterWidth;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax+1280], edx

; 22   : 	m_TextDrawData.fLetterHeight = TextDrawTransmit->fLetterHeight;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR [eax+1284], edx

; 23   : 	m_TextDrawData.dwLetterColor = TextDrawTransmit->dwLetterColor;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [eax+1288], edx

; 24   : 	m_TextDrawData.byteUnk12 = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+1292], 0

; 25   : 	m_TextDrawData.byteCentered = TextDrawTransmit->byteCenter;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	mov	cl, BYTE PTR [eax+24]
	shr	cl, 3
	and	cl, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+1293], cl

; 26   : 	m_TextDrawData.byteBox = TextDrawTransmit->byteBox;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	mov	cl, BYTE PTR [eax+24]
	and	cl, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+1294], cl

; 27   : 	m_TextDrawData.fLineWidth = TextDrawTransmit->fLineWidth;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+12]
	mov	DWORD PTR [eax+1296], edx

; 28   : 	m_TextDrawData.fLineHeight = TextDrawTransmit->fLineHeight;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	mov	DWORD PTR [eax+1300], edx

; 29   : 	m_TextDrawData.dwBoxColor = TextDrawTransmit->dwBoxColor;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	DWORD PTR [eax+1304], edx

; 30   : 	m_TextDrawData.byteProportional = TextDrawTransmit->byteProportional;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	mov	cl, BYTE PTR [eax+24]
	shr	cl, 4
	and	cl, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+1308], cl

; 31   : 	m_TextDrawData.dwBackgroundColor = TextDrawTransmit->dwBackgroundColor;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+27]
	mov	DWORD PTR [eax+1309], edx

; 32   : 	m_TextDrawData.byteShadow = TextDrawTransmit->byteShadow;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	dl, BYTE PTR [ecx+25]
	mov	BYTE PTR [eax+1313], dl

; 33   : 	m_TextDrawData.byteOutline = TextDrawTransmit->byteOutline;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	dl, BYTE PTR [ecx+26]
	mov	BYTE PTR [eax+1314], dl

; 34   : 	m_TextDrawData.byteAlignLeft = TextDrawTransmit->byteLeft;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	mov	cl, BYTE PTR [eax+24]
	shr	cl, 1
	and	cl, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+1315], cl

; 35   : 	m_TextDrawData.byteAlignRight = TextDrawTransmit->byteRight;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	mov	cl, BYTE PTR [eax+24]
	shr	cl, 2
	and	cl, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+1316], cl

; 36   : 	m_TextDrawData.dwStyle = TextDrawTransmit->byteStyle;

	mov	eax, DWORD PTR _TextDrawTransmit$[ebp]
	movzx	ecx, BYTE PTR [eax+31]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+1320], ecx

; 37   : 	m_TextDrawData.fX = TextDrawTransmit->fX;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+32]
	mov	DWORD PTR [eax+1324], edx

; 38   : 	m_TextDrawData.fY = TextDrawTransmit->fY;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _TextDrawTransmit$[ebp]
	mov	edx, DWORD PTR [ecx+36]
	mov	DWORD PTR [eax+1328], edx

; 39   : 	m_TextDrawData.dwParam1 = 0xFFFFFFFF;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+1340], -1

; 40   : 	m_TextDrawData.dwParam2 = 0xFFFFFFFF;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+1344], -1

; 41   : 	
; 42   : 	strncpy(m_szText, szText, MAX_TEXT_DRAW_LINE);

	push	256					; 00000100H
	mov	eax, DWORD PTR _szText$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	_strncpy
	add	esp, 12					; 0000000cH

; 43   : 	m_szText[MAX_TEXT_DRAW_LINE - 1] = '\0';

	mov	eax, 1
	imul	ecx, eax, 255
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+ecx], 0

; 44   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
??0CTextDraw@@QAE@PAU_TEXT_DRAW_TRANSMIT@@PAD@Z ENDP	; CTextDraw::CTextDraw
_TEXT	ENDS
END
