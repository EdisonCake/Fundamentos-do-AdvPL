#INCLUDE 'TOTVS.CH'

User Function Temperature()

    local cUser     := ''
    local nCelcius  := 0
    local nFar      := 0

    cUser       := FwInputBox("Digite a temperatura em ºC para conversão:", cUser)
    nCelcius    := val(cUser)

    nFar := (nCelcius * 1.8) + 32
    FwAlertInfo("A temperatura convertida é de " + cvaltochar(noround(nFar, 2)) + "ºF.", "Temperatura")

Return 
