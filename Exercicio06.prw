#INCLUDE 'TOTVS.CH'

User Function Temperature()

    local cUser     := ''
    local nCelcius  := 0
    local nFar      := 0

    cUser       := FwInputBox("Digite a temperatura em �C para convers�o:", cUser)
    nCelcius    := val(cUser)

    nFar := (nCelcius * 1.8) + 32
    FwAlertInfo("A temperatura convertida � de " + cvaltochar(noround(nFar, 2)) + "�F.", "Temperatura")

Return 
