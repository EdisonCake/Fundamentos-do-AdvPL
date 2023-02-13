// Escreva um algoritmo para ler as dimens�es de um ret�ngulo (base e altura), calcular e escrever a �rea desse ret�ngulo.

#INCLUDE 'TOTVS.CH'

User Function Area()
    // Declara��o de vari�veis.
    local cUser     := ''
    local nBase     := 0
    local nAltura   := 0
    local nArea     := 0

    // Nesse bloco, � solicitado ao usu�rio o valor da base do ret�ngulo.
    cUser := FwInputBox('Digite as medidas da base do ret�ngulo:', cUser)
    nBase := val(cUser) // O valor � atribu�do � vari�vel num�rica referente.
    cUser := ''         // A vari�vel que recebe a informa��o � zerada para a pr�xima solicita��o.

    // Nesse bloco, � solicitado ao usu�rio o valor da altura do ret�ngulo.
    cUser   := FwInputBox('Digite as medidas da altura do ret�ngulo:', cUser)
    nAltura := val(cUser) // Aqui, o valor � atribuido � vari�vel referente.

    nArea := (nBase * nAltura) // Aqui a vari�vel de �rea recebe o c�lculo.

    // E por fim, � exibido ao usu�rio o valor da base.
    FwAlertInfo('A �rea do ret�ngulo � de ' + cvaltochar(noround(nArea, 2)) + 'm�.', '�rea')

Return 
