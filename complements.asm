; COMPLEMENTS
; Arch: 8085
; Author: Wayne Foux
;
; Read data from address 2040H and
; store the complement in address 2041H
; Code dervived from Microcomputer Experimentation with the Intel SDK-85

lda 2040h       ; load accumulator direct 3A 40 20
    cma             ; complement data 2F
    sta 2041h       ; store accumulator direct 32 41 20
    rst 1           ; return to monitor (sdk-85 specific) CF
    
; alternatively
    lxi h, 2040h    ; load pair h immediate 21 40 20
    mov a, m        ; move pair h to accumulator 7E
    cma             ; complement data 2F
    inx h           ; increment pair h 23
    mov m, a        ; move accumulator to pair h 77
    rst 1           ; return to monitor (sdk-85 specific) CF
