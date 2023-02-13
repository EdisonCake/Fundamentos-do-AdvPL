#INCLUDE 'TOTVS.CH'

User Function Zero()
    local cUser     := ''
    local nNum1     := 0
    local nNum2     := 0
    local nDiv      := 0
    local lLoop     := .t.

    cUser := FwInputBox('Digite um numero: ', cUser)
    nNum1 := val(cUser)
    cUser := ''

    While lLoop

        cUser := FwInputBox("Digite mais um numero: ", cUser)

        if val(cUser) <= 0
            MsgStop('Número invalido!', "Opa, opa! Pera la!")
            cUser := ''
            loop 
        else
            nNum2 := val(cUser)
            lLoop := .f.
        endif

    End while

    nDiv := nNum1 / nNum2
    MsgInfo(cvaltochar(nNum1) + " / " + cvaltochar(nNum2) + " = " + cvaltochar(nDiv), "Divisão")
    
Return 
