#INCLUDE 'TOTVS.CH'

User Function Temperature()
    // Declara��o de vari�veis
    local cUser     := ''
    local nCelcius  := 0
    local nFar      := 0

    // Aqui, � solicitado ao usu�rio o valor da temperatura a ser convertida em graus celcius.
    cUser       := FwInputBox("Digite a temperatura em �C para convers�o:", cUser)
    nCelcius    := val(cUser)   // Nessa linha, � atribuido o valor � vari�vel correspondente.

    nFar := (nCelcius * 1.8) + 32   // Nessa linha, o c�lculo � feito e atribu�do � vari�vel correspondente.

    // Por fim, � exibido ao usu�rio a temperatura convertida.
    FwAlertInfo("A temperatura convertida � de " + cvaltochar(noround(nFar, 2)) + "�F.", "Temperatura")

Return 
