//Escreva um algoritmo para ler um valor e escrever seu antecessor.
#INCLUDE 'TOTVS.CH'

User Function Antes()
    // Declara��o de vari�veis.
    local nUser     := 0
    local cUser     := ''
    local nAnterior := 0

    // Nesse bloco, o usu�rio digita o n�mero escolhido.
    cUser := FwInputBox('Digite um n�mero:', cUser)
    nUser := val(cUser) // � atribu�do o n�mero do usu�rio � vari�vel num�rica.

    nAnterior := (nUser - 1) // Aqui, a vari�vel subtrai um n�mero para informar o antecessor.

    // E por fim, o console retorna o valor antecessor ao n�mero escolhido pelo usu�rio.
    FwAlertInfo('O antecessor do n�mero ' + cUser + ' � ' + cValToChar(nAnterior) + '.', 'Antecessor')
Return 
