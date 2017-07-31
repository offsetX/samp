; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	Z:\sampsrc\02Xu1\saco\net\gangzonepool.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_BSS	SEGMENT
?iLastTick@?1??Draw@CGangZonePool@@QAEXXZ@4HA DD 01H DUP (?) ; `CGangZonePool::Draw'::`2'::iLastTick
?alt@?1??Draw@CGangZonePool@@QAEXXZ@4EA DB 01H DUP (?)	; `CGangZonePool::Draw'::`2'::alt
_BSS	ENDS
PUBLIC	??0CGangZonePool@@QAE@XZ			; CGangZonePool::CGangZonePool
PUBLIC	??1CGangZonePool@@QAE@XZ			; CGangZonePool::~CGangZonePool
PUBLIC	?New@CGangZonePool@@QAEXGMMMMK@Z		; CGangZonePool::New
PUBLIC	?Flash@CGangZonePool@@QAEXGK@Z			; CGangZonePool::Flash
PUBLIC	?StopFlash@CGangZonePool@@QAEXG@Z		; CGangZonePool::StopFlash
PUBLIC	?Delete@CGangZonePool@@QAEXG@Z			; CGangZonePool::Delete
PUBLIC	?Draw@CGangZonePool@@QAEXXZ			; CGangZonePool::Draw
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	__imp__GetTickCount@0:PROC
EXTRN	_malloc:PROC
EXTRN	?DrawGangZone@CGame@@QAEXPAMK@Z:PROC		; CGame::DrawGangZone
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	?pGame@@3PAVCGame@@A:DWORD			; pGame
EXTRN	__fltused:DWORD
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ?Draw@CGangZonePool@@QAEXXZ
_TEXT	SEGMENT
tv91 = -232						; size = 4
_wZone$1 = -32						; size = 2
_iTick$ = -20						; size = 4
_this$ = -8						; size = 4
?Draw@CGangZonePool@@QAEXXZ PROC			; CGangZonePool::Draw, COMDAT
; _this$ = ecx

; 89   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-232]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 90   : 	static int iLastTick = 0;
; 91   : 	int iTick = GetTickCount();

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _iTick$[ebp], eax

; 92   : 	static BYTE alt = 0;
; 93   : 	if (iTick - iLastTick >= 500)

	mov	eax, DWORD PTR _iTick$[ebp]
	sub	eax, DWORD PTR ?iLastTick@?1??Draw@CGangZonePool@@QAEXXZ@4HA
	cmp	eax, 500				; 000001f4H
	jl	SHORT $LN5@Draw

; 94   : 	{
; 95   : 		// All zones flash, it's easier to have non flashers flash the same color
; 96   : 		alt = ~alt;

	movzx	eax, BYTE PTR ?alt@?1??Draw@CGangZonePool@@QAEXXZ@4EA
	not	eax
	mov	BYTE PTR ?alt@?1??Draw@CGangZonePool@@QAEXXZ@4EA, al

; 97   : 		iLastTick = iTick;

	mov	eax, DWORD PTR _iTick$[ebp]
	mov	DWORD PTR ?iLastTick@?1??Draw@CGangZonePool@@QAEXXZ@4HA, eax
$LN5@Draw:

; 98   : 	}
; 99   : 	for (WORD wZone = 0; wZone < MAX_GANG_ZONES; wZone++)

	xor	eax, eax
	mov	WORD PTR _wZone$1[ebp], ax
	jmp	SHORT $LN4@Draw
$LN3@Draw:
	mov	ax, WORD PTR _wZone$1[ebp]
	add	ax, 1
	mov	WORD PTR _wZone$1[ebp], ax
$LN4@Draw:
	movzx	eax, WORD PTR _wZone$1[ebp]
	cmp	eax, 1024				; 00000400H
	jge	SHORT $LN6@Draw

; 100  : 	{
; 101  : 		if (m_bSlotState[wZone])

	movzx	eax, WORD PTR _wZone$1[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+4096], 0
	je	SHORT $LN1@Draw

; 102  : 		{
; 103  : 			pGame->DrawGangZone(m_pGangZone[wZone]->fPos, alt ? m_pGangZone[wZone]->dwAltColor : m_pGangZone[wZone]->dwColor);

	movzx	eax, BYTE PTR ?alt@?1??Draw@CGangZonePool@@QAEXXZ@4EA
	test	eax, eax
	je	SHORT $LN8@Draw
	movzx	ecx, WORD PTR _wZone$1[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR tv91[ebp], ecx
	jmp	SHORT $LN9@Draw
$LN8@Draw:
	movzx	edx, WORD PTR _wZone$1[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+edx*4]
	mov	edx, DWORD PTR [ecx+16]
	mov	DWORD PTR tv91[ebp], edx
$LN9@Draw:
	mov	eax, DWORD PTR tv91[ebp]
	push	eax
	movzx	ecx, WORD PTR _wZone$1[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	mov	ecx, DWORD PTR ?pGame@@3PAVCGame@@A	; pGame
	call	?DrawGangZone@CGame@@QAEXPAMK@Z		; CGame::DrawGangZone
$LN1@Draw:

; 104  : 		}
; 105  : 	}

	jmp	SHORT $LN3@Draw
$LN6@Draw:

; 106  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Draw@CGangZonePool@@QAEXXZ ENDP			; CGangZonePool::Draw
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ?Delete@CGangZonePool@@QAEXG@Z
_TEXT	SEGMENT
$T1 = -212						; size = 4
_this$ = -8						; size = 4
_wZone$ = 8						; size = 2
?Delete@CGangZonePool@@QAEXG@Z PROC			; CGangZonePool::Delete, COMDAT
; _this$ = ecx

; 79   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 80   : 	if (m_pGangZone[wZone])

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN2@Delete

; 81   : 	{
; 82   : 		delete m_pGangZone[wZone];

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR $T1[ebp], edx
	mov	eax, DWORD PTR $T1[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 83   : 		m_pGangZone[wZone] = NULL;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 84   : 		m_bSlotState[wZone] = FALSE;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+4096], 0
$LN2@Delete:

; 85   : 	}
; 86   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?Delete@CGangZonePool@@QAEXG@Z ENDP			; CGangZonePool::Delete
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ?StopFlash@CGangZonePool@@QAEXG@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_wZone$ = 8						; size = 2
?StopFlash@CGangZonePool@@QAEXG@Z PROC			; CGangZonePool::StopFlash, COMDAT
; _this$ = ecx

; 71   : {

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

; 72   : 	if (m_pGangZone[wZone])

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN2@StopFlash

; 73   : 	{
; 74   : 		m_pGangZone[wZone]->dwAltColor = m_pGangZone[wZone]->dwColor;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
	mov	ecx, DWORD PTR [edx+16]
	mov	DWORD PTR [eax+20], ecx
$LN2@StopFlash:

; 75   : 	}
; 76   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?StopFlash@CGangZonePool@@QAEXG@Z ENDP			; CGangZonePool::StopFlash
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ?Flash@CGangZonePool@@QAEXGK@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_wZone$ = 8						; size = 2
_dwColor$ = 12						; size = 4
?Flash@CGangZonePool@@QAEXGK@Z PROC			; CGangZonePool::Flash, COMDAT
; _this$ = ecx

; 63   : {

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

; 64   : 	if (m_pGangZone[wZone])

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN2@Flash

; 65   : 	{
; 66   : 		m_pGangZone[wZone]->dwAltColor = dwColor;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _dwColor$[ebp]
	mov	DWORD PTR [edx+20], eax
$LN2@Flash:

; 67   : 	}
; 68   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	8
?Flash@CGangZonePool@@QAEXGK@Z ENDP			; CGangZonePool::Flash
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ?New@CGangZonePool@@QAEXGMMMMK@Z
_TEXT	SEGMENT
$T1 = -224						; size = 4
_pGangZone$ = -20					; size = 4
_this$ = -8						; size = 4
_wZone$ = 8						; size = 2
_fMinX$ = 12						; size = 4
_fMinY$ = 16						; size = 4
_fMaxX$ = 20						; size = 4
_fMaxY$ = 24						; size = 4
_dwColor$ = 28						; size = 4
?New@CGangZonePool@@QAEXGMMMMK@Z PROC			; CGangZonePool::New, COMDAT
; _this$ = ecx

; 40   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 41   : 	if (m_pGangZone[wZone])

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN2@New

; 42   : 	{
; 43   : 		delete m_pGangZone[wZone];

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR $T1[ebp], edx
	mov	eax, DWORD PTR $T1[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 44   : 		m_pGangZone[wZone] = NULL;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 45   : 		m_bSlotState[wZone] = FALSE;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+4096], 0
$LN2@New:

; 46   : 	}
; 47   : 	GANG_ZONE* pGangZone = (GANG_ZONE*)malloc(sizeof (GANG_ZONE));

	push	24					; 00000018H
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _pGangZone$[ebp], eax

; 48   : 	if (pGangZone)

	cmp	DWORD PTR _pGangZone$[ebp], 0
	je	$LN1@New

; 49   : 	{
; 50   : 		// Odd order but it is right
; 51   : 		pGangZone->fPos[0] = fMinX;

	mov	eax, 4
	imul	ecx, eax, 0
	mov	edx, DWORD PTR _pGangZone$[ebp]
	movss	xmm0, DWORD PTR _fMinX$[ebp]
	movss	DWORD PTR [edx+ecx], xmm0

; 52   : 		pGangZone->fPos[1] = fMaxY;

	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _pGangZone$[ebp]
	movss	xmm0, DWORD PTR _fMaxY$[ebp]
	movss	DWORD PTR [ecx+eax], xmm0

; 53   : 		pGangZone->fPos[2] = fMaxX;

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _pGangZone$[ebp]
	movss	xmm0, DWORD PTR _fMaxX$[ebp]
	movss	DWORD PTR [ecx+eax], xmm0

; 54   : 		pGangZone->fPos[3] = fMinY;

	mov	eax, 4
	imul	ecx, eax, 3
	mov	edx, DWORD PTR _pGangZone$[ebp]
	movss	xmm0, DWORD PTR _fMinY$[ebp]
	movss	DWORD PTR [edx+ecx], xmm0

; 55   : 		pGangZone->dwColor = dwColor;

	mov	eax, DWORD PTR _pGangZone$[ebp]
	mov	ecx, DWORD PTR _dwColor$[ebp]
	mov	DWORD PTR [eax+16], ecx

; 56   : 		pGangZone->dwAltColor = dwColor;

	mov	eax, DWORD PTR _pGangZone$[ebp]
	mov	ecx, DWORD PTR _dwColor$[ebp]
	mov	DWORD PTR [eax+20], ecx

; 57   : 		m_pGangZone[wZone] = pGangZone;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pGangZone$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx

; 58   : 		m_bSlotState[wZone] = TRUE;

	movzx	eax, WORD PTR _wZone$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+4096], 1
$LN1@New:

; 59   : 	}
; 60   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	24					; 00000018H
?New@CGangZonePool@@QAEXGMMMMK@Z ENDP			; CGangZonePool::New
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ??1CGangZonePool@@QAE@XZ
_TEXT	SEGMENT
$T1 = -224						; size = 4
_wZone$2 = -20						; size = 2
_this$ = -8						; size = 4
??1CGangZonePool@@QAE@XZ PROC				; CGangZonePool::~CGangZonePool, COMDAT
; _this$ = ecx

; 28   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 29   : 	for (WORD wZone = 0; wZone < MAX_GANG_ZONES; wZone++)

	xor	eax, eax
	mov	WORD PTR _wZone$2[ebp], ax
	jmp	SHORT $LN4@CGangZoneP
$LN3@CGangZoneP:
	mov	ax, WORD PTR _wZone$2[ebp]
	add	ax, 1
	mov	WORD PTR _wZone$2[ebp], ax
$LN4@CGangZoneP:
	movzx	eax, WORD PTR _wZone$2[ebp]
	cmp	eax, 1024				; 00000400H
	jge	SHORT $LN5@CGangZoneP

; 30   : 	{
; 31   : 		if (m_pGangZone[wZone])

	movzx	eax, WORD PTR _wZone$2[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN1@CGangZoneP

; 32   : 		{
; 33   : 			delete m_pGangZone[wZone];

	movzx	eax, WORD PTR _wZone$2[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR $T1[ebp], edx
	mov	eax, DWORD PTR $T1[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 34   : 			m_pGangZone[wZone] = NULL;

	movzx	eax, WORD PTR _wZone$2[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0
$LN1@CGangZoneP:

; 35   : 		}
; 36   : 	}

	jmp	SHORT $LN3@CGangZoneP
$LN5@CGangZoneP:

; 37   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CGangZonePool@@QAE@XZ ENDP				; CGangZonePool::~CGangZonePool
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\net\gangzonepool.cpp
;	COMDAT ??0CGangZonePool@@QAE@XZ
_TEXT	SEGMENT
_wZone$1 = -20						; size = 2
_this$ = -8						; size = 4
??0CGangZonePool@@QAE@XZ PROC				; CGangZonePool::CGangZonePool, COMDAT
; _this$ = ecx

; 19   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 20   : 	for (WORD wZone = 0; wZone < MAX_GANG_ZONES; wZone++)

	xor	eax, eax
	mov	WORD PTR _wZone$1[ebp], ax
	jmp	SHORT $LN3@CGangZoneP
$LN2@CGangZoneP:
	mov	ax, WORD PTR _wZone$1[ebp]
	add	ax, 1
	mov	WORD PTR _wZone$1[ebp], ax
$LN3@CGangZoneP:
	movzx	eax, WORD PTR _wZone$1[ebp]
	cmp	eax, 1024				; 00000400H
	jge	SHORT $LN4@CGangZoneP

; 21   : 	{
; 22   : 		m_pGangZone[wZone] = NULL;

	movzx	eax, WORD PTR _wZone$1[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 23   : 		m_bSlotState[wZone] = FALSE;

	movzx	eax, WORD PTR _wZone$1[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+4096], 0

; 24   : 	}

	jmp	SHORT $LN2@CGangZoneP
$LN4@CGangZoneP:

; 25   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0CGangZonePool@@QAE@XZ ENDP				; CGangZonePool::CGangZonePool
_TEXT	ENDS
END
