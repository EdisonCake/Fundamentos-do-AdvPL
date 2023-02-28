#INCLUDE 'TOTVS.CH'

User Function Temperature()
    // Declaração de variáveis
    local cUser     := ''
    local nCelcius  := 0
    local nFar      := 0

    // Aqui, é solicitado ao usuário o valor da temperatura a ser convertida em graus celcius.
    cUser       := FwInputBox("Digite a temperatura em ºC para conversão:", cUser)
    nCelcius    := val(cUser)   // Nessa linha, é atribuido o valor à variável correspondente.

    nFar := (nCelcius * 1.8) + 32   // Nessa linha, o cálculo é feito e atribuído à variável correspondente.

    // Por fim, é exibido ao usuário a temperatura convertida.
    FwAlertInfo("A temperatura convertida é de " + cvaltochar(noround(nFar, 2)) + "ºF.", "Temperatura")

Return 
