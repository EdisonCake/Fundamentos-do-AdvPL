#INCLUDE 'TOTVS.CH'

User Function Nota01()
    local cUser     := ''
    local aNotas    := {}
    local nCount    := 0
    local nMedia    := 0
    local lLoop     := .T.

    While lLoop

        for nCount := 1 to 2
            cUser := FwInputBox("Digite a " + cvaltochar(ncount) + "ª nota do aluno.", cUser)

            if val(cUser) <= 0 .or. val(cUser) > 10
                MsgStop("Atencao. Nota invalida!")
                nCount--
                cUser := ''
            else
                aAdd(aNotas, val(cUser))
                cUser := ''
            endif
            
        next nCount

        nMedia      := (aNotas[1] + aNotas[2] ) / 2
        FwAlertInfo("A média do aluno foi de " + cvaltochar(round(nMedia, 1)) + ".")

        cUser := Upper(FwInputBox('Deseja um novo cálculo de Média? (S/N)'))

        if cUser == "N"
            lLoop := .f.
        else
            cUser := ''
            nCount := 1
        end if

    end while

    MsgInfo("Obrigado por ter calculado as médias conosco!")

Return 
