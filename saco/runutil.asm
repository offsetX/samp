; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	Z:\sampsrc\02Xu1\saco\runutil.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?Base64Encoding@@3PADA				; Base64Encoding
PUBLIC	??_C@_0EC@KFIHCEIG@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef@ ; `string'
;	COMDAT ??_C@_0EC@KFIHCEIG@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef@
CONST	SEGMENT
??_C@_0EC@KFIHCEIG@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef@ DB 'ABCDEFGHIJKLMNOP'
	DB	'QRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=', 00H ; `string'
CONST	ENDS
_DATA	SEGMENT
?Base64Encoding@@3PADA DD FLAT:??_C@_0EC@KFIHCEIG@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef@ ; Base64Encoding
_DATA	ENDS
PUBLIC	?Util_UrlUnencode@@YAXPAD@Z			; Util_UrlUnencode
PUBLIC	?Util_toupper@@YADD@Z				; Util_toupper
PUBLIC	?Util_stristr@@YAPADPBD0@Z			; Util_stristr
PUBLIC	?Util_strupr@@YAXPAD@Z				; Util_strupr
PUBLIC	?Util_wildcmp@@YAHPAD0@Z			; Util_wildcmp
PUBLIC	?Util_strnicmp@@YAHPBD0I@Z			; Util_strnicmp
PUBLIC	?Util_strrev@@YAPADPAD@Z			; Util_strrev
PUBLIC	?Util_itoa@@YAPADHPADH@Z			; Util_itoa
PUBLIC	?Util_Base64Encode@@YAXPAD0@Z			; Util_Base64Encode
PUBLIC	?K_EncodeString@@YAXPAD0@Z			; K_EncodeString
PUBLIC	?K_DecodeString@@YAPADPAE@Z			; K_DecodeString
EXTRN	_strlen:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_UninitUse:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?K_DecodeString@@YAPADPAE@Z
_TEXT	SEGMENT
_st$ = -20						; size = 4
_b$ = -5						; size = 1
_szInput$ = 8						; size = 4
?K_DecodeString@@YAPADPAE@Z PROC			; K_DecodeString, COMDAT

; 271  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 272  : 	char b;
; 273  : 	char *st = (char *)szInput;

	mov	eax, DWORD PTR _szInput$[ebp]
	mov	DWORD PTR _st$[ebp], eax
$LN2@K_DecodeSt:

; 274  :     
; 275  : 	while(*szInput) {

	mov	eax, DWORD PTR _szInput$[ebp]
	movzx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN1@K_DecodeSt

; 276  : 		b = *szInput;

	mov	eax, DWORD PTR _szInput$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _b$[ebp], cl

; 277  : 		_asm mov bl, b

	mov	bl, BYTE PTR _b$[ebp]

; 278  : 		_asm rol bl, 3

	rol	bl, 3

; 279  : 		_asm mov b, bl

	mov	BYTE PTR _b$[ebp], bl

; 280  : 		*szInput = b;

	mov	eax, DWORD PTR _szInput$[ebp]
	mov	cl, BYTE PTR _b$[ebp]
	mov	BYTE PTR [eax], cl

; 281  : 		szInput++;

	mov	eax, DWORD PTR _szInput$[ebp]
	add	eax, 1
	mov	DWORD PTR _szInput$[ebp], eax

; 282  : 	}

	jmp	SHORT $LN2@K_DecodeSt
$LN1@K_DecodeSt:

; 283  : 
; 284  : 	return st;

	mov	eax, DWORD PTR _st$[ebp]

; 285  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?K_DecodeString@@YAPADPAE@Z ENDP			; K_DecodeString
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?K_EncodeString@@YAXPAD0@Z
_TEXT	SEGMENT
_b$ = -5						; size = 1
_szInput$ = 8						; size = 4
_szOutput$ = 12						; size = 4
?K_EncodeString@@YAXPAD0@Z PROC				; K_EncodeString, COMDAT

; 253  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
$LN2@K_EncodeSt:

; 254  : 	char b;
; 255  : 
; 256  : 	while(*szInput) {

	mov	eax, DWORD PTR _szInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN1@K_EncodeSt

; 257  : 		b = *szInput;

	mov	eax, DWORD PTR _szInput$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _b$[ebp], cl

; 258  : 		_asm mov bl, b

	mov	bl, BYTE PTR _b$[ebp]

; 259  : 		_asm ror bl, 3

	ror	bl, 3

; 260  : 		_asm mov b, bl

	mov	BYTE PTR _b$[ebp], bl

; 261  : 		*szOutput = b;

	mov	eax, DWORD PTR _szOutput$[ebp]
	mov	cl, BYTE PTR _b$[ebp]
	mov	BYTE PTR [eax], cl

; 262  : 		szInput++;

	mov	eax, DWORD PTR _szInput$[ebp]
	add	eax, 1
	mov	DWORD PTR _szInput$[ebp], eax

; 263  : 		szOutput++;

	mov	eax, DWORD PTR _szOutput$[ebp]
	add	eax, 1
	mov	DWORD PTR _szOutput$[ebp], eax

; 264  : 	}

	jmp	SHORT $LN2@K_EncodeSt
$LN1@K_EncodeSt:

; 265  : 	*szOutput = 0;

	mov	eax, DWORD PTR _szOutput$[ebp]
	mov	BYTE PTR [eax], 0

; 266  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?K_EncodeString@@YAXPAD0@Z ENDP				; K_EncodeString
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_Base64Encode@@YAXPAD0@Z
_TEXT	SEGMENT
_nIdx$ = -24						; size = 16
__$ArrayPad$ = -4					; size = 4
_cpInput$ = 8						; size = 4
_cpOutput$ = 12						; size = 4
?Util_Base64Encode@@YAXPAD0@Z PROC			; Util_Base64Encode, COMDAT

; 209  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
$LN6@Util_Base6:

; 210  : int nIdx[ 4 ];  
; 211  : while ( '\0' != *cpInput )

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN5@Util_Base6

; 212  : {
; 213  :   nIdx[0] = ((*cpInput) & 0xFC)>>2;

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	and	ecx, 252				; 000000fcH
	sar	ecx, 2
	mov	edx, 4
	imul	eax, edx, 0
	mov	DWORD PTR _nIdx$[ebp+eax], ecx

; 214  :   nIdx[1] = ((*cpInput) & 0x03)<<4;

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	and	ecx, 3
	shl	ecx, 4
	mov	edx, 4
	shl	edx, 0
	mov	DWORD PTR _nIdx$[ebp+edx], ecx

; 215  :   cpInput++;

	mov	eax, DWORD PTR _cpInput$[ebp]
	add	eax, 1
	mov	DWORD PTR _cpInput$[ebp], eax

; 216  :   if ( '\0' != *cpInput )

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN4@Util_Base6

; 217  :   {
; 218  :     nIdx[1] |= ((*cpInput) & 0xF0)>>4;

	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _cpInput$[ebp]
	movsx	edx, BYTE PTR [ecx]
	and	edx, 240				; 000000f0H
	sar	edx, 4
	or	edx, DWORD PTR _nIdx$[ebp+eax]
	mov	eax, 4
	shl	eax, 0
	mov	DWORD PTR _nIdx$[ebp+eax], edx

; 219  :     nIdx[2]  = ((*cpInput) & 0x0F)<<2;

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	and	ecx, 15					; 0000000fH
	shl	ecx, 2
	mov	edx, 4
	shl	edx, 1
	mov	DWORD PTR _nIdx$[ebp+edx], ecx

; 220  :     cpInput++;

	mov	eax, DWORD PTR _cpInput$[ebp]
	add	eax, 1
	mov	DWORD PTR _cpInput$[ebp], eax

; 221  :     if ( '\0' != (*cpInput) )

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN3@Util_Base6

; 222  :     {
; 223  :       nIdx[2] |= ((*cpInput) & 0xC0) >> 6;

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _cpInput$[ebp]
	movsx	edx, BYTE PTR [ecx]
	and	edx, 192				; 000000c0H
	sar	edx, 6
	or	edx, DWORD PTR _nIdx$[ebp+eax]
	mov	eax, 4
	shl	eax, 1
	mov	DWORD PTR _nIdx$[ebp+eax], edx

; 224  :       nIdx[3]  = (*cpInput) & 0x3F;

	mov	eax, DWORD PTR _cpInput$[ebp]
	movsx	ecx, BYTE PTR [eax]
	and	ecx, 63					; 0000003fH
	mov	edx, 4
	imul	eax, edx, 3
	mov	DWORD PTR _nIdx$[ebp+eax], ecx

; 225  :       cpInput++;

	mov	eax, DWORD PTR _cpInput$[ebp]
	add	eax, 1
	mov	DWORD PTR _cpInput$[ebp], eax

; 226  :     }
; 227  :     else

	jmp	SHORT $LN2@Util_Base6
$LN3@Util_Base6:

; 228  :       nIdx[3] = 64;

	mov	eax, 4
	imul	ecx, eax, 3
	mov	DWORD PTR _nIdx$[ebp+ecx], 64		; 00000040H
$LN2@Util_Base6:

; 229  :   }
; 230  :   else

	jmp	SHORT $LN1@Util_Base6
$LN4@Util_Base6:

; 231  :   {
; 232  :     nIdx[2] = 64;

	mov	eax, 4
	shl	eax, 1
	mov	DWORD PTR _nIdx$[ebp+eax], 64		; 00000040H

; 233  :     nIdx[3] = 64;

	mov	eax, 4
	imul	ecx, eax, 3
	mov	DWORD PTR _nIdx$[ebp+ecx], 64		; 00000040H
$LN1@Util_Base6:

; 234  :   }
; 235  : 
; 236  :   *(cpOutput+0) = *(Base64Encoding + nIdx[0]);

	mov	eax, 4
	imul	ecx, eax, 0
	mov	edx, DWORD PTR _nIdx$[ebp+ecx]
	mov	eax, DWORD PTR _cpOutput$[ebp]
	mov	ecx, DWORD PTR ?Base64Encoding@@3PADA	; Base64Encoding
	mov	dl, BYTE PTR [ecx+edx]
	mov	BYTE PTR [eax], dl

; 237  :   *(cpOutput+1) = *(Base64Encoding + nIdx[1]);

	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _nIdx$[ebp+eax]
	mov	edx, DWORD PTR _cpOutput$[ebp]
	mov	eax, DWORD PTR ?Base64Encoding@@3PADA	; Base64Encoding
	mov	cl, BYTE PTR [eax+ecx]
	mov	BYTE PTR [edx+1], cl

; 238  :   *(cpOutput+2) = *(Base64Encoding + nIdx[2]);

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _nIdx$[ebp+eax]
	mov	edx, DWORD PTR _cpOutput$[ebp]
	mov	eax, DWORD PTR ?Base64Encoding@@3PADA	; Base64Encoding
	mov	cl, BYTE PTR [eax+ecx]
	mov	BYTE PTR [edx+2], cl

; 239  :   *(cpOutput+3) = *(Base64Encoding + nIdx[3]);

	mov	eax, 4
	imul	ecx, eax, 3
	mov	edx, DWORD PTR _nIdx$[ebp+ecx]
	mov	eax, DWORD PTR _cpOutput$[ebp]
	mov	ecx, DWORD PTR ?Base64Encoding@@3PADA	; Base64Encoding
	mov	dl, BYTE PTR [ecx+edx]
	mov	BYTE PTR [eax+3], dl

; 240  :   cpOutput += 4;

	mov	eax, DWORD PTR _cpOutput$[ebp]
	add	eax, 4
	mov	DWORD PTR _cpOutput$[ebp], eax

; 241  : }

	jmp	$LN6@Util_Base6
$LN5@Util_Base6:

; 242  : 
; 243  : *cpOutput = '\0';

	mov	eax, DWORD PTR _cpOutput$[ebp]
	mov	BYTE PTR [eax], 0

; 244  : 
; 245  : return;
; 246  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN11@Util_Base6
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN11@Util_Base6:
	DD	1
	DD	$LN10@Util_Base6
$LN10@Util_Base6:
	DD	-24					; ffffffe8H
	DD	16					; 00000010H
	DD	$LN9@Util_Base6
$LN9@Util_Base6:
	DB	110					; 0000006eH
	DB	73					; 00000049H
	DB	100					; 00000064H
	DB	120					; 00000078H
	DB	0
?Util_Base64Encode@@YAXPAD0@Z ENDP			; Util_Base64Encode
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_itoa@@YAPADHPADH@Z
_TEXT	SEGMENT
_q$ = -44						; size = 4
_p$ = -32						; size = 4
_neg$ = -20						; size = 4
_i$ = -8						; size = 4
_v$ = 8							; size = 4
_s$ = 12						; size = 4
_r$ = 16						; size = 4
?Util_itoa@@YAPADHPADH@Z PROC				; Util_itoa, COMDAT

; 168  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 60					; 0000003cH
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 169  : 	int i,neg = 0;

	mov	DWORD PTR _neg$[ebp], 0

; 170  : 	char *p = s;

	mov	eax, DWORD PTR _s$[ebp]
	mov	DWORD PTR _p$[ebp], eax

; 171  : 	char *q = s;

	mov	eax, DWORD PTR _s$[ebp]
	mov	DWORD PTR _q$[ebp], eax

; 172  : 
; 173  : 	if (r < 0 || r > 35) {

	cmp	DWORD PTR _r$[ebp], 0
	jl	SHORT $LN10@Util_itoa
	cmp	DWORD PTR _r$[ebp], 35			; 00000023H
	jle	SHORT $LN11@Util_itoa
$LN10@Util_itoa:

; 174  : 		*s = 0;

	mov	eax, DWORD PTR _s$[ebp]
	mov	BYTE PTR [eax], 0

; 175  : 		return (s);

	mov	eax, DWORD PTR _s$[ebp]
	jmp	$LN12@Util_itoa
$LN11@Util_itoa:

; 176  : 		}
; 177  : 	if (r == 0) r = 10;

	cmp	DWORD PTR _r$[ebp], 0
	jne	SHORT $LN9@Util_itoa
	mov	DWORD PTR _r$[ebp], 10			; 0000000aH
$LN9@Util_itoa:

; 178  : 	if (v == 0) {

	cmp	DWORD PTR _v$[ebp], 0
	jne	SHORT $LN8@Util_itoa

; 179  : 		*p++ = '0';

	mov	eax, DWORD PTR _p$[ebp]
	mov	BYTE PTR [eax], 48			; 00000030H
	mov	ecx, DWORD PTR _p$[ebp]
	add	ecx, 1
	mov	DWORD PTR _p$[ebp], ecx

; 180  : 		*p = 0;

	mov	eax, DWORD PTR _p$[ebp]
	mov	BYTE PTR [eax], 0

; 181  : 		return (s);

	mov	eax, DWORD PTR _s$[ebp]
	jmp	$LN12@Util_itoa
$LN8@Util_itoa:

; 182  : 		}
; 183  : 	if (v < 0) {

	cmp	DWORD PTR _v$[ebp], 0
	jge	SHORT $LN6@Util_itoa

; 184  : 		neg = 1;

	mov	DWORD PTR _neg$[ebp], 1

; 185  : 		v = -v;

	mov	eax, DWORD PTR _v$[ebp]
	neg	eax
	mov	DWORD PTR _v$[ebp], eax
$LN6@Util_itoa:

; 186  : 		}
; 187  : 	while (v > 0) {

	cmp	DWORD PTR _v$[ebp], 0
	jle	SHORT $LN5@Util_itoa

; 188  : 		i = v % r;

	mov	eax, DWORD PTR _v$[ebp]
	cdq
	idiv	DWORD PTR _r$[ebp]
	mov	DWORD PTR _i$[ebp], edx

; 189  : 		if (i > 9) i += 7;

	cmp	DWORD PTR _i$[ebp], 9
	jle	SHORT $LN4@Util_itoa
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 7
	mov	DWORD PTR _i$[ebp], eax
$LN4@Util_itoa:

; 190  : 		*p++ = '0' + i;

	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 48					; 00000030H
	mov	ecx, DWORD PTR _p$[ebp]
	mov	BYTE PTR [ecx], al
	mov	edx, DWORD PTR _p$[ebp]
	add	edx, 1
	mov	DWORD PTR _p$[ebp], edx

; 191  : 		v /= r;

	mov	eax, DWORD PTR _v$[ebp]
	cdq
	idiv	DWORD PTR _r$[ebp]
	mov	DWORD PTR _v$[ebp], eax

; 192  : 		}

	jmp	SHORT $LN6@Util_itoa
$LN5@Util_itoa:

; 193  : 	if (neg) *p++ = '-';

	cmp	DWORD PTR _neg$[ebp], 0
	je	SHORT $LN3@Util_itoa
	mov	eax, DWORD PTR _p$[ebp]
	mov	BYTE PTR [eax], 45			; 0000002dH
	mov	ecx, DWORD PTR _p$[ebp]
	add	ecx, 1
	mov	DWORD PTR _p$[ebp], ecx
$LN3@Util_itoa:

; 194  : 	*p-- = 0;

	mov	eax, DWORD PTR _p$[ebp]
	mov	BYTE PTR [eax], 0
	mov	ecx, DWORD PTR _p$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _p$[ebp], ecx

; 195  : 	q = s;

	mov	eax, DWORD PTR _s$[ebp]
	mov	DWORD PTR _q$[ebp], eax
$LN2@Util_itoa:

; 196  : 	while (p > q) {

	mov	eax, DWORD PTR _p$[ebp]
	cmp	eax, DWORD PTR _q$[ebp]
	jbe	SHORT $LN1@Util_itoa

; 197  : 		i = *q;

	mov	eax, DWORD PTR _q$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _i$[ebp], ecx

; 198  : 		*q++ = *p;

	mov	eax, DWORD PTR _q$[ebp]
	mov	ecx, DWORD PTR _p$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR _q$[ebp]
	add	eax, 1
	mov	DWORD PTR _q$[ebp], eax

; 199  : 		*p-- = i;

	mov	eax, DWORD PTR _p$[ebp]
	mov	cl, BYTE PTR _i$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _p$[ebp]
	sub	edx, 1
	mov	DWORD PTR _p$[ebp], edx

; 200  : 		}

	jmp	SHORT $LN2@Util_itoa
$LN1@Util_itoa:

; 201  : 	return (s);

	mov	eax, DWORD PTR _s$[ebp]
$LN12@Util_itoa:

; 202  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_itoa@@YAPADHPADH@Z ENDP				; Util_itoa
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_strrev@@YAPADPAD@Z
_TEXT	SEGMENT
_p2$ = -20						; size = 4
_p1$ = -8						; size = 4
_str$ = 8						; size = 4
?Util_strrev@@YAPADPAD@Z PROC				; Util_strrev, COMDAT

; 151  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 152  :       char *p1, *p2;
; 153  : 
; 154  :       if (! str || ! *str)

	cmp	DWORD PTR _str$[ebp], 0
	je	SHORT $LN4@Util_strre
	mov	eax, DWORD PTR _str$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $LN5@Util_strre
$LN4@Util_strre:

; 155  :             return str;

	mov	eax, DWORD PTR _str$[ebp]
	jmp	SHORT $LN6@Util_strre
$LN5@Util_strre:

; 156  :       for (p1 = str, p2 = str + strlen(str) - 1; p2 > p1; ++p1, --p2)

	mov	eax, DWORD PTR _str$[ebp]
	mov	DWORD PTR _p1$[ebp], eax
	mov	ecx, DWORD PTR _str$[ebp]
	push	ecx
	call	_strlen
	add	esp, 4
	mov	edx, DWORD PTR _str$[ebp]
	lea	eax, DWORD PTR [edx+eax-1]
	mov	DWORD PTR _p2$[ebp], eax
	jmp	SHORT $LN3@Util_strre
$LN2@Util_strre:
	mov	eax, DWORD PTR _p1$[ebp]
	add	eax, 1
	mov	DWORD PTR _p1$[ebp], eax
	mov	ecx, DWORD PTR _p2$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _p2$[ebp], ecx
$LN3@Util_strre:
	mov	eax, DWORD PTR _p2$[ebp]
	cmp	eax, DWORD PTR _p1$[ebp]
	jbe	SHORT $LN1@Util_strre

; 157  :       {
; 158  :             *p1 ^= *p2;

	mov	eax, DWORD PTR _p2$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _p1$[ebp]
	movsx	eax, BYTE PTR [edx]
	xor	eax, ecx
	mov	ecx, DWORD PTR _p1$[ebp]
	mov	BYTE PTR [ecx], al

; 159  :             *p2 ^= *p1;

	mov	eax, DWORD PTR _p1$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _p2$[ebp]
	movsx	eax, BYTE PTR [edx]
	xor	eax, ecx
	mov	ecx, DWORD PTR _p2$[ebp]
	mov	BYTE PTR [ecx], al

; 160  :             *p1 ^= *p2;

	mov	eax, DWORD PTR _p2$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _p1$[ebp]
	movsx	eax, BYTE PTR [edx]
	xor	eax, ecx
	mov	ecx, DWORD PTR _p1$[ebp]
	mov	BYTE PTR [ecx], al

; 161  :       }

	jmp	SHORT $LN2@Util_strre
$LN1@Util_strre:

; 162  :       return str;

	mov	eax, DWORD PTR _str$[ebp]
$LN6@Util_strre:

; 163  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_strrev@@YAPADPAD@Z ENDP				; Util_strrev
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_strnicmp@@YAHPBD0I@Z
_TEXT	SEGMENT
tv86 = -200						; size = 4
tv85 = -196						; size = 4
tv70 = -193						; size = 1
_s1$ = 8						; size = 4
_s2$ = 12						; size = 4
_n$ = 16						; size = 4
?Util_strnicmp@@YAHPBD0I@Z PROC				; Util_strnicmp, COMDAT

; 132  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 200				; 000000c8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-200]
	mov	ecx, 50					; 00000032H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 133  : 
; 134  :   if (n == 0) return 0;

	cmp	DWORD PTR _n$[ebp], 0
	jne	SHORT $LN5@Util_strni
	xor	eax, eax
	jmp	$LN7@Util_strni
$LN5@Util_strni:

; 135  : 
; 136  :   do
; 137  :   {
; 138  :     if (Util_toupper((unsigned char)*s1) != Util_toupper((unsigned char)*s2++))

	mov	eax, DWORD PTR _s2$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR tv70[ebp], cl
	mov	edx, DWORD PTR _s2$[ebp]
	add	edx, 1
	mov	DWORD PTR _s2$[ebp], edx
	movzx	eax, BYTE PTR tv70[ebp]
	push	eax
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	esi, al
	mov	ecx, DWORD PTR _s1$[ebp]
	movzx	edx, BYTE PTR [ecx]
	push	edx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	eax, al
	cmp	eax, esi
	je	SHORT $LN2@Util_strni

; 139  :       return (int)Util_toupper((unsigned char)*s1) - (int)Util_toupper((unsigned char)*--s2);

	mov	eax, DWORD PTR _s2$[ebp]
	sub	eax, 1
	mov	DWORD PTR _s2$[ebp], eax
	mov	ecx, DWORD PTR _s2$[ebp]
	movzx	edx, BYTE PTR [ecx]
	push	edx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	esi, al
	mov	eax, DWORD PTR _s1$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	eax, al
	sub	eax, esi
	jmp	SHORT $LN7@Util_strni
$LN2@Util_strni:

; 140  :     if (*s1++ == 0)

	mov	eax, DWORD PTR _s1$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR tv85[ebp], ecx
	mov	edx, DWORD PTR _s1$[ebp]
	add	edx, 1
	mov	DWORD PTR _s1$[ebp], edx
	cmp	DWORD PTR tv85[ebp], 0
	jne	SHORT $LN9@Util_strni
	mov	DWORD PTR tv86[ebp], 1
	jmp	SHORT $LN10@Util_strni
$LN9@Util_strni:
	mov	DWORD PTR tv86[ebp], 0
$LN10@Util_strni:
	cmp	DWORD PTR tv86[ebp], 0
	je	SHORT $LN4@Util_strni

; 141  :       break;

	jmp	SHORT $LN3@Util_strni
$LN4@Util_strni:

; 142  : 
; 143  :   } while (--n != 0);

	mov	eax, DWORD PTR _n$[ebp]
	sub	eax, 1
	mov	DWORD PTR _n$[ebp], eax
	jne	$LN5@Util_strni
$LN3@Util_strni:

; 144  : 
; 145  :   return 0;

	xor	eax, eax
$LN7@Util_strni:

; 146  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 200				; 000000c8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_strnicmp@@YAHPBD0I@Z ENDP				; Util_strnicmp
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_wildcmp@@YAHPAD0@Z
_TEXT	SEGMENT
tv128 = -244						; size = 4
$T1 = -233						; size = 1
$T2 = -221						; size = 1
_mp$ = -20						; size = 4
_cp$ = -8						; size = 4
_wild$ = 8						; size = 4
_string$ = 12						; size = 4
?Util_wildcmp@@YAHPAD0@Z PROC				; Util_wildcmp, COMDAT

; 85   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	BYTE PTR $T2[ebp], 0
	mov	BYTE PTR $T1[ebp], 0
$LN13@Util_wildc:

; 86   : 	char *cp, *mp;
; 87   : 	
; 88   : 	while((*string) && (*wild != '*'))

	mov	eax, DWORD PTR _string$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN10@Util_wildc
	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 42					; 0000002aH
	je	SHORT $LN10@Util_wildc

; 89   : 	{
; 90   : 		if((*wild != *string) && (*wild != '?'))

	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _string$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	je	SHORT $LN11@Util_wildc
	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 63					; 0000003fH
	je	SHORT $LN11@Util_wildc

; 91   : 		{
; 92   : 			return 0;

	xor	eax, eax
	jmp	$LN14@Util_wildc
$LN11@Util_wildc:

; 93   : 		}
; 94   : 		wild++;

	mov	eax, DWORD PTR _wild$[ebp]
	add	eax, 1
	mov	DWORD PTR _wild$[ebp], eax

; 95   : 		string++;

	mov	eax, DWORD PTR _string$[ebp]
	add	eax, 1
	mov	DWORD PTR _string$[ebp], eax

; 96   : 	}

	jmp	SHORT $LN13@Util_wildc
$LN10@Util_wildc:

; 97   : 		
; 98   : 	while (*string)

	mov	eax, DWORD PTR _string$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN2@Util_wildc

; 99   : 	{
; 100  : 		if (*wild == '*')

	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 42					; 0000002aH
	jne	SHORT $LN8@Util_wildc

; 101  : 		{
; 102  : 			if (!*++wild)

	mov	eax, DWORD PTR _wild$[ebp]
	add	eax, 1
	mov	DWORD PTR _wild$[ebp], eax
	mov	ecx, DWORD PTR _wild$[ebp]
	movsx	edx, BYTE PTR [ecx]
	test	edx, edx
	jne	SHORT $LN7@Util_wildc

; 103  : 			{
; 104  : 				return 1;

	mov	eax, 1
	jmp	$LN14@Util_wildc
$LN7@Util_wildc:

; 105  : 			}
; 106  : 			mp = wild;

	mov	BYTE PTR $T1[ebp], 1
	mov	eax, DWORD PTR _wild$[ebp]
	mov	DWORD PTR _mp$[ebp], eax

; 107  : 			cp = string+1;

	mov	eax, DWORD PTR _string$[ebp]
	add	eax, 1
	mov	BYTE PTR $T2[ebp], 1
	mov	DWORD PTR _cp$[ebp], eax
	jmp	$LN6@Util_wildc
$LN8@Util_wildc:

; 108  : 		}
; 109  : 		else if ((*wild == *string) || (*wild == '?'))

	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _string$[ebp]
	movsx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	je	SHORT $LN4@Util_wildc
	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 63					; 0000003fH
	jne	SHORT $LN5@Util_wildc
$LN4@Util_wildc:

; 110  : 		{
; 111  : 			wild++;

	mov	eax, DWORD PTR _wild$[ebp]
	add	eax, 1
	mov	DWORD PTR _wild$[ebp], eax

; 112  : 			string++;

	mov	eax, DWORD PTR _string$[ebp]
	add	eax, 1
	mov	DWORD PTR _string$[ebp], eax

; 113  : 		}
; 114  : 		else

	jmp	SHORT $LN6@Util_wildc
$LN5@Util_wildc:

; 115  : 		{
; 116  : 			wild = mp;

	cmp	BYTE PTR $T1[ebp], 0
	jne	SHORT $LN18@Util_wildc
	push	OFFSET $LN19@Util_wildc
	call	__RTC_UninitUse
	add	esp, 4
$LN18@Util_wildc:
	mov	eax, DWORD PTR _mp$[ebp]
	mov	DWORD PTR _wild$[ebp], eax

; 117  : 			string = cp++;

	cmp	BYTE PTR $T2[ebp], 0
	jne	SHORT $LN20@Util_wildc
	push	OFFSET $LN21@Util_wildc
	call	__RTC_UninitUse
	add	esp, 4
$LN20@Util_wildc:
	mov	eax, DWORD PTR _cp$[ebp]
	mov	DWORD PTR _string$[ebp], eax
	cmp	BYTE PTR $T2[ebp], 0
	jne	SHORT $LN22@Util_wildc
	push	OFFSET $LN21@Util_wildc
	call	__RTC_UninitUse
	add	esp, 4
$LN22@Util_wildc:
	mov	ecx, DWORD PTR _cp$[ebp]
	add	ecx, 1
	mov	BYTE PTR $T2[ebp], 1
	mov	DWORD PTR _cp$[ebp], ecx
$LN6@Util_wildc:

; 118  : 		}
; 119  : 	}

	jmp	$LN10@Util_wildc
$LN2@Util_wildc:

; 120  : 		
; 121  : 	while (*wild == '*')

	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 42					; 0000002aH
	jne	SHORT $LN1@Util_wildc

; 122  : 	{
; 123  : 		wild++;

	mov	eax, DWORD PTR _wild$[ebp]
	add	eax, 1
	mov	DWORD PTR _wild$[ebp], eax

; 124  : 	}

	jmp	SHORT $LN2@Util_wildc
$LN1@Util_wildc:

; 125  : 
; 126  : 	return !*wild;

	mov	eax, DWORD PTR _wild$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $LN16@Util_wildc
	mov	DWORD PTR tv128[ebp], 1
	jmp	SHORT $LN17@Util_wildc
$LN16@Util_wildc:
	mov	DWORD PTR tv128[ebp], 0
$LN17@Util_wildc:
	mov	eax, DWORD PTR tv128[ebp]
$LN14@Util_wildc:

; 127  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN23@Util_wildc:
$LN21@Util_wildc:
	DB	99					; 00000063H
	DB	112					; 00000070H
	DB	0
$LN19@Util_wildc:
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
?Util_wildcmp@@YAHPAD0@Z ENDP				; Util_wildcmp
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_strupr@@YAXPAD@Z
_TEXT	SEGMENT
_p$ = -8						; size = 4
_string$ = 8						; size = 4
?Util_strupr@@YAXPAD@Z PROC				; Util_strupr, COMDAT

; 73   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 74   : 	char *p = string;

	mov	eax, DWORD PTR _string$[ebp]
	mov	DWORD PTR _p$[ebp], eax
$LN2@Util_strup:

; 75   : 
; 76   : 	while(*p) {

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN3@Util_strup

; 77   : 		*p = Util_toupper(*p);

	mov	eax, DWORD PTR _p$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	mov	edx, DWORD PTR _p$[ebp]
	mov	BYTE PTR [edx], al

; 78   : 		p++;

	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax

; 79   : 	}

	jmp	SHORT $LN2@Util_strup
$LN3@Util_strup:

; 80   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_strupr@@YAXPAD@Z ENDP				; Util_strupr
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_stristr@@YAPADPBD0@Z
_TEXT	SEGMENT
_starti$ = -32						; size = 4
_sptri$ = -20						; size = 4
_pptri$ = -8						; size = 4
_String$ = 8						; size = 4
_Pattern$ = 12						; size = 4
?Util_stristr@@YAPADPBD0@Z PROC				; Util_stristr, COMDAT

; 43   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 44   : 	char *pptri, *sptri, *starti;
; 45   : 
; 46   :       for (starti=(char *)String; *starti != '\0'; starti++)

	mov	eax, DWORD PTR _String$[ebp]
	mov	DWORD PTR _starti$[ebp], eax
	jmp	SHORT $LN9@Util_stris
$LN8@Util_stris:
	mov	eax, DWORD PTR _starti$[ebp]
	add	eax, 1
	mov	DWORD PTR _starti$[ebp], eax
$LN9@Util_stris:
	mov	eax, DWORD PTR _starti$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN7@Util_stris
	jmp	SHORT $LN6@Util_stris
$LN5@Util_stris:

; 47   :       {
; 48   : 
; 49   :             /* find start of pattern in string */
; 50   :             for (;((*starti!='\0') && (Util_toupper(*starti) != Util_toupper(*Pattern))); starti++);

	mov	eax, DWORD PTR _starti$[ebp]
	add	eax, 1
	mov	DWORD PTR _starti$[ebp], eax
$LN6@Util_stris:
	mov	eax, DWORD PTR _starti$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $LN4@Util_stris
	mov	eax, DWORD PTR _starti$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	esi, al
	mov	edx, DWORD PTR _Pattern$[ebp]
	movzx	eax, BYTE PTR [edx]
	push	eax
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	ecx, al
	cmp	esi, ecx
	je	SHORT $LN4@Util_stris
	jmp	SHORT $LN5@Util_stris
$LN4@Util_stris:

; 51   : 
; 52   :             pptri = (char *)Pattern;

	mov	eax, DWORD PTR _Pattern$[ebp]
	mov	DWORD PTR _pptri$[ebp], eax

; 53   :             sptri = (char *)starti;

	mov	eax, DWORD PTR _starti$[ebp]
	mov	DWORD PTR _sptri$[ebp], eax
$LN3@Util_stris:

; 54   : 
; 55   :             while (Util_toupper(*sptri) == Util_toupper(*pptri))

	mov	eax, DWORD PTR _sptri$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	esi, al
	mov	edx, DWORD PTR _pptri$[ebp]
	movzx	eax, BYTE PTR [edx]
	push	eax
	call	?Util_toupper@@YADD@Z			; Util_toupper
	add	esp, 4
	movsx	ecx, al
	cmp	esi, ecx
	jne	SHORT $LN2@Util_stris

; 56   :             {
; 57   :                   sptri++;

	mov	eax, DWORD PTR _sptri$[ebp]
	add	eax, 1
	mov	DWORD PTR _sptri$[ebp], eax

; 58   :                   pptri++;

	mov	eax, DWORD PTR _pptri$[ebp]
	add	eax, 1
	mov	DWORD PTR _pptri$[ebp], eax

; 59   : 
; 60   :                   /* if end of pattern then pattern was found */
; 61   :                   if ('\0' == *pptri)

	mov	eax, DWORD PTR _pptri$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	jne	SHORT $LN1@Util_stris

; 62   :                         return (starti);

	mov	eax, DWORD PTR _starti$[ebp]
	jmp	SHORT $LN10@Util_stris
$LN1@Util_stris:

; 63   :             }

	jmp	SHORT $LN3@Util_stris
$LN2@Util_stris:

; 64   : 
; 65   :       }

	jmp	$LN8@Util_stris
$LN7@Util_stris:

; 66   : 
; 67   :       return(0);

	xor	eax, eax
$LN10@Util_stris:

; 68   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_stristr@@YAPADPBD0@Z ENDP				; Util_stristr
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_toupper@@YADD@Z
_TEXT	SEGMENT
tv71 = -196						; size = 4
_c$ = 8							; size = 1
?Util_toupper@@YADD@Z PROC				; Util_toupper, COMDAT

; 38   : char Util_toupper(char c) {return ((c>(char)0x60) && (c<(char)0x7b))? c-0x20:c;}

	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	movsx	eax, BYTE PTR _c$[ebp]
	cmp	eax, 96					; 00000060H
	jle	SHORT $LN3@Util_toupp
	movsx	ecx, BYTE PTR _c$[ebp]
	cmp	ecx, 123				; 0000007bH
	jge	SHORT $LN3@Util_toupp
	movsx	edx, BYTE PTR _c$[ebp]
	sub	edx, 32					; 00000020H
	mov	DWORD PTR tv71[ebp], edx
	jmp	SHORT $LN4@Util_toupp
$LN3@Util_toupp:
	movsx	eax, BYTE PTR _c$[ebp]
	mov	DWORD PTR tv71[ebp], eax
$LN4@Util_toupp:
	mov	al, BYTE PTR tv71[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_toupper@@YADD@Z ENDP				; Util_toupper
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\runutil.cpp
;	COMDAT ?Util_UrlUnencode@@YAXPAD@Z
_TEXT	SEGMENT
tv90 = -208						; size = 4
tv79 = -208						; size = 4
_write_pos$ = -8					; size = 4
_enc$ = 8						; size = 4
?Util_UrlUnencode@@YAXPAD@Z PROC			; Util_UrlUnencode, COMDAT

; 16   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 17   : 	char *write_pos = enc;

	mov	eax, DWORD PTR _enc$[ebp]
	mov	DWORD PTR _write_pos$[ebp], eax
$LN6@Util_UrlUn:

; 18   : 
; 19   : 	while(*enc)

	mov	eax, DWORD PTR _enc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN5@Util_UrlUn

; 20   : 	{
; 21   : 		if(*enc=='%')

	mov	eax, DWORD PTR _enc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 37					; 00000025H
	jne	$LN4@Util_UrlUn

; 22   : 		{
; 23   : 			*write_pos = (*++enc>'/'&&*enc<':')?((*enc-('0'))<<4):((*enc-('7'))<<4);

	mov	eax, DWORD PTR _enc$[ebp]
	add	eax, 1
	mov	DWORD PTR _enc$[ebp], eax
	mov	ecx, DWORD PTR _enc$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 47					; 0000002fH
	jle	SHORT $LN9@Util_UrlUn
	mov	eax, DWORD PTR _enc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 58					; 0000003aH
	jge	SHORT $LN9@Util_UrlUn
	mov	edx, DWORD PTR _enc$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	eax, 48					; 00000030H
	shl	eax, 4
	mov	DWORD PTR tv79[ebp], eax
	jmp	SHORT $LN10@Util_UrlUn
$LN9@Util_UrlUn:
	mov	ecx, DWORD PTR _enc$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	edx, 55					; 00000037H
	shl	edx, 4
	mov	DWORD PTR tv79[ebp], edx
$LN10@Util_UrlUn:
	mov	eax, DWORD PTR _write_pos$[ebp]
	mov	cl, BYTE PTR tv79[ebp]
	mov	BYTE PTR [eax], cl

; 24   : 			*write_pos |= (*++enc>'/'&&*enc<':')?(*enc-'0'):(*enc-'7');

	mov	eax, DWORD PTR _enc$[ebp]
	add	eax, 1
	mov	DWORD PTR _enc$[ebp], eax
	mov	ecx, DWORD PTR _enc$[ebp]
	movsx	edx, BYTE PTR [ecx]
	cmp	edx, 47					; 0000002fH
	jle	SHORT $LN11@Util_UrlUn
	mov	eax, DWORD PTR _enc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 58					; 0000003aH
	jge	SHORT $LN11@Util_UrlUn
	mov	edx, DWORD PTR _enc$[ebp]
	movsx	eax, BYTE PTR [edx]
	sub	eax, 48					; 00000030H
	mov	DWORD PTR tv90[ebp], eax
	jmp	SHORT $LN12@Util_UrlUn
$LN11@Util_UrlUn:
	mov	ecx, DWORD PTR _enc$[ebp]
	movsx	edx, BYTE PTR [ecx]
	sub	edx, 55					; 00000037H
	mov	DWORD PTR tv90[ebp], edx
$LN12@Util_UrlUn:
	mov	eax, DWORD PTR _write_pos$[ebp]
	movsx	ecx, BYTE PTR [eax]
	or	ecx, DWORD PTR tv90[ebp]
	mov	edx, DWORD PTR _write_pos$[ebp]
	mov	BYTE PTR [edx], cl
	jmp	SHORT $LN3@Util_UrlUn
$LN4@Util_UrlUn:

; 25   : 		}
; 26   : 		else if (*enc=='+')

	mov	eax, DWORD PTR _enc$[ebp]
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, 43					; 0000002bH
	jne	SHORT $LN2@Util_UrlUn

; 27   : 			*write_pos= ' ';

	mov	eax, DWORD PTR _write_pos$[ebp]
	mov	BYTE PTR [eax], 32			; 00000020H

; 28   : 		else

	jmp	SHORT $LN3@Util_UrlUn
$LN2@Util_UrlUn:

; 29   : 			*write_pos= *enc;

	mov	eax, DWORD PTR _write_pos$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [eax], dl
$LN3@Util_UrlUn:

; 30   : 
; 31   : 		write_pos++; enc++;

	mov	eax, DWORD PTR _write_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _write_pos$[ebp], eax
	mov	eax, DWORD PTR _enc$[ebp]
	add	eax, 1
	mov	DWORD PTR _enc$[ebp], eax

; 32   : 	}

	jmp	$LN6@Util_UrlUn
$LN5@Util_UrlUn:

; 33   : 	*write_pos='\0';

	mov	eax, DWORD PTR _write_pos$[ebp]
	mov	BYTE PTR [eax], 0

; 34   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Util_UrlUnencode@@YAXPAD@Z ENDP			; Util_UrlUnencode
_TEXT	ENDS
END
