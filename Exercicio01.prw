//Escreva um algoritmo para ler um valor e escrever seu antecessor.
#INCLUDE 'TOTVS.CH'

User Function Antes()
    // Declaração de variáveis.
    local nUser     := 0
    local cUser     := ''
    local nAnterior := 0

    // Nesse bloco, o usuário digita o número escolhido.
    cUser := FwInputBox('Digite um número:', cUser)
    nUser := val(cUser) // É atribuído o número do usuário à variável numérica.

    nAnterior := (nUser - 1) // Aqui, a variável subtrai um número para informar o antecessor.

    // E por fim, o console retorna o valor antecessor ao número escolhido pelo usuário.
    FwAlertInfo('O antecessor do número ' + cUser + ' é ' + cValToChar(nAnterior) + '.', 'Antecessor')
Return 
