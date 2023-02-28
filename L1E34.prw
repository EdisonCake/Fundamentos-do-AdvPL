#INCLUDE 'TOTVS.CH'

User Function Pessoas()
    local aPesos        := {}
    local aIdades       := {}
    local cUser         := ""
    local nCount        := 0
    local nSomaIdade    := 0
    local nMediaIdade   := 0
    local nNoventa      := 0

    For nCount := 1 to 7
        cUser := FwInputBox("Digite seu peso: " + cvaltochar(nCount) + "/7.", cUser)
        aAdd(aPesos, val(cUser))

        if val(cUser) > 90
            nNoventa++
        endif

        cUser := ""

        cUser := FwInputBox("Agora, a idade: " + cvaltochar(nCount) + "/7", cUser)
        aAdd(aIdades, val(cUser))
        nSomaIdade += val(cUser)
        cUser := ""
    Next

    nMediaIdade := (nSomaIdade / 7)

    FwAlertSuccess("A média de idade das pessoas catalogadas é de " + cvaltochar(round(nMediaIdade)) + " anos." + CRLF +;
                   "Das quais " + cvaltochar(nNoventa) + " pesam mais de 90Kg.", "Analise")

Return 
