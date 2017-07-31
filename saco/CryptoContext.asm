; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.31101.0 

	TITLE	Z:\sampsrc\02Xu1\saco\archive\CryptoContext.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?ms_dwRefCount@CCryptoContext@@0KA		; CCryptoContext::ms_dwRefCount
PUBLIC	?ms_dwProviderType@CCryptoContext@@0KA		; CCryptoContext::ms_dwProviderType
PUBLIC	?ms_szProviderName@CCryptoContext@@0PADA	; CCryptoContext::ms_szProviderName
PUBLIC	?ms_szContainerName@CCryptoContext@@0PADA	; CCryptoContext::ms_szContainerName
PUBLIC	?ms_hAdvApi32@CCryptoContext@@0PAUHINSTANCE__@@A ; CCryptoContext::ms_hAdvApi32
PUBLIC	??_C@_04KHDPMBGG@SAMP?$AA@			; `string'
_BSS	SEGMENT
?ms_dwRefCount@CCryptoContext@@0KA DD 01H DUP (?)	; CCryptoContext::ms_dwRefCount
?ms_szProviderName@CCryptoContext@@0PADA DD 01H DUP (?)	; CCryptoContext::ms_szProviderName
?ms_hAdvApi32@CCryptoContext@@0PAUHINSTANCE__@@A DD 01H DUP (?) ; CCryptoContext::ms_hAdvApi32
_BSS	ENDS
;	COMDAT ??_C@_04KHDPMBGG@SAMP?$AA@
CONST	SEGMENT
??_C@_04KHDPMBGG@SAMP?$AA@ DB 'SAMP', 00H		; `string'
CONST	ENDS
_DATA	SEGMENT
?ms_dwProviderType@CCryptoContext@@0KA DD 01H		; CCryptoContext::ms_dwProviderType
?ms_szContainerName@CCryptoContext@@0PADA DD FLAT:??_C@_04KHDPMBGG@SAMP?$AA@ ; CCryptoContext::ms_szContainerName
_DATA	ENDS
PUBLIC	??0CCryptoContext@@QAE@XZ			; CCryptoContext::CCryptoContext
PUBLIC	??1CCryptoContext@@QAE@XZ			; CCryptoContext::~CCryptoContext
PUBLIC	?GetProvider@CCryptoContext@@QAEKXZ		; CCryptoContext::GetProvider
PUBLIC	__TI1H
PUBLIC	__CTA1H
PUBLIC	??_R0H@8					; int `RTTI Type Descriptor'
PUBLIC	__CT??_R0H@84
EXTRN	?xCryptCallAcquireContext@@YGHPAKPBD1KK@Z:PROC	; xCryptCallAcquireContext
EXTRN	?xCryptCallReleaseContext@@YGHKK@Z:PROC		; xCryptCallReleaseContext
EXTRN	__CxxThrowException@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	??_7type_info@@6B@:QWORD			; type_info::`vftable'
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT __CT??_R0H@84
xdata$x	SEGMENT
__CT??_R0H@84 DD 01H
	DD	FLAT:??_R0H@8
	DD	00H
	DD	0ffffffffH
	ORG $+4
	DD	04H
	DD	00H
xdata$x	ENDS
;	COMDAT ??_R0H@8
data$r	SEGMENT
??_R0H@8 DD	FLAT:??_7type_info@@6B@			; int `RTTI Type Descriptor'
	DD	00H
	DB	'.H', 00H
data$r	ENDS
;	COMDAT __CTA1H
xdata$x	SEGMENT
__CTA1H	DD	01H
	DD	FLAT:__CT??_R0H@84
xdata$x	ENDS
;	COMDAT __TI1H
xdata$x	SEGMENT
__TI1H	DD	00H
	DD	00H
	DD	00H
	DD	FLAT:__CTA1H
xdata$x	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\archive\cryptocontext.cpp
;	COMDAT ?GetProvider@CCryptoContext@@QAEKXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetProvider@CCryptoContext@@QAEKXZ PROC		; CCryptoContext::GetProvider, COMDAT
; _this$ = ecx

; 66   : {

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

; 67   : 	return m_hCryptProv;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]

; 68   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetProvider@CCryptoContext@@QAEKXZ ENDP		; CCryptoContext::GetProvider
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\archive\cryptocontext.cpp
;	COMDAT ??1CCryptoContext@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1CCryptoContext@@QAE@XZ PROC				; CCryptoContext::~CCryptoContext, COMDAT
; _this$ = ecx

; 44   : {

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

; 45   : 	
; 46   : 	// Release the context
; 47   : 	CRYPT(ReleaseContext)(m_hCryptProv, 0);

	push	0
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	call	?xCryptCallReleaseContext@@YGHKK@Z	; xCryptCallReleaseContext

; 48   : 	ms_dwRefCount--;

	mov	eax, DWORD PTR ?ms_dwRefCount@CCryptoContext@@0KA ; CCryptoContext::ms_dwRefCount
	sub	eax, 1
	mov	DWORD PTR ?ms_dwRefCount@CCryptoContext@@0KA, eax ; CCryptoContext::ms_dwRefCount

; 49   : 
; 50   : 	if (ms_dwRefCount == 0) {

	jne	SHORT $LN2@CCryptoCon

; 51   : 		/*
; 52   : 		// Free the library
; 53   : 		if (ms_hAdvApi32)
; 54   : 			FreeLibrary(ms_hAdvApi32);
; 55   : 		*/
; 56   : 
; 57   : 		// Delete the context
; 58   : 		CRYPT(AcquireContext)(&m_hCryptProv, ms_szContainerName, ms_szProviderName, ms_dwProviderType, CRYPT_DELETEKEYSET);

	push	16					; 00000010H
	mov	eax, DWORD PTR ?ms_dwProviderType@CCryptoContext@@0KA ; CCryptoContext::ms_dwProviderType
	push	eax
	mov	ecx, DWORD PTR ?ms_szProviderName@CCryptoContext@@0PADA ; CCryptoContext::ms_szProviderName
	push	ecx
	mov	edx, DWORD PTR ?ms_szContainerName@CCryptoContext@@0PADA ; CCryptoContext::ms_szContainerName
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	?xCryptCallAcquireContext@@YGHPAKPBD1KK@Z ; xCryptCallAcquireContext
$LN2@CCryptoCon:

; 59   : 	}
; 60   : 
; 61   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CCryptoContext@@QAE@XZ ENDP				; CCryptoContext::~CCryptoContext
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sampsrc\02xu1\saco\archive\cryptocontext.cpp
;	COMDAT ??0CCryptoContext@@QAE@XZ
_TEXT	SEGMENT
$T1 = -212						; size = 4
_this$ = -8						; size = 4
??0CCryptoContext@@QAE@XZ PROC				; CCryptoContext::CCryptoContext, COMDAT
; _this$ = ecx

; 22   : {

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

; 23   : 	/*
; 24   : 	if (!ms_hAdvApi32) 
; 25   : 	{
; 26   : 		ms_hAdvApi32 = LoadLibrary("advapi32.dll");
; 27   : 	}
; 28   : 	*/
; 29   : 	
; 30   : 	// Open existing context, if not found, create one!
; 31   : 	if ( !CRYPT(AcquireContext)(&m_hCryptProv, ms_szContainerName, ms_szProviderName, ms_dwProviderType, 0) ) {

	push	0
	mov	eax, DWORD PTR ?ms_dwProviderType@CCryptoContext@@0KA ; CCryptoContext::ms_dwProviderType
	push	eax
	mov	ecx, DWORD PTR ?ms_szProviderName@CCryptoContext@@0PADA ; CCryptoContext::ms_szProviderName
	push	ecx
	mov	edx, DWORD PTR ?ms_szContainerName@CCryptoContext@@0PADA ; CCryptoContext::ms_szContainerName
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	?xCryptCallAcquireContext@@YGHPAKPBD1KK@Z ; xCryptCallAcquireContext
	test	eax, eax
	jne	SHORT $LN2@CCryptoCon

; 32   : 		if( !CRYPT(AcquireContext)(&m_hCryptProv, ms_szContainerName, ms_szProviderName, ms_dwProviderType, CRYPT_NEWKEYSET) ) {

	push	8
	mov	eax, DWORD PTR ?ms_dwProviderType@CCryptoContext@@0KA ; CCryptoContext::ms_dwProviderType
	push	eax
	mov	ecx, DWORD PTR ?ms_szProviderName@CCryptoContext@@0PADA ; CCryptoContext::ms_szProviderName
	push	ecx
	mov	edx, DWORD PTR ?ms_szContainerName@CCryptoContext@@0PADA ; CCryptoContext::ms_szContainerName
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	?xCryptCallAcquireContext@@YGHPAKPBD1KK@Z ; xCryptCallAcquireContext
	test	eax, eax
	jne	SHORT $LN2@CCryptoCon

; 33   : 			throw(1);

	mov	DWORD PTR $T1[ebp], 1
	push	OFFSET __TI1H
	lea	eax, DWORD PTR $T1[ebp]
	push	eax
	call	__CxxThrowException@8
$LN2@CCryptoCon:

; 34   : 		}
; 35   : 	}
; 36   : 
; 37   : 	ms_dwRefCount++;

	mov	eax, DWORD PTR ?ms_dwRefCount@CCryptoContext@@0KA ; CCryptoContext::ms_dwRefCount
	add	eax, 1
	mov	DWORD PTR ?ms_dwRefCount@CCryptoContext@@0KA, eax ; CCryptoContext::ms_dwRefCount

; 38   : 
; 39   : }

	mov	eax, DWORD PTR _this$[ebp]
$LN4@CCryptoCon:
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??0CCryptoContext@@QAE@XZ ENDP				; CCryptoContext::CCryptoContext
_TEXT	ENDS
END
