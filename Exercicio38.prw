#INCLUDE "TOTVS.CH"

User Function IdadeDez()
    local nIdade := 0
    local nMaior := 0
    local nCount := 0

    For nCount := 1 to 10
        nIdade := val(FwInputBox("Digite sua idade! " + cvaltochar(nCount) + "/10"))

        if nIdade >= 18
            nMaior++
        endif
    Next

    MsgInfo(cvaltochar(nMaior) + " pessoas são maior de idade.", "Idade")

Return 
