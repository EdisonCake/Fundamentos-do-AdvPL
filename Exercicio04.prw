// Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário.

#INCLUDE 'TOTVS.CH'

User Function Salario()
    // Declaração de variáveis.
    local cUser     := ''
    local nAtual    := 0
    local nNovo     := 0
    local nPercent  := 0

    // Nesse bloco, é solicitado ao usuário o valor do salário atual.
    cUser   := FwInputBox('Digite o salário atual:', cUser)
    nAtual  := val(cUser)   // Aqui é atribuido o valor à variável correspondente.
    cUser   := ''           // E aqui, a variável 'receptora' é redefinida.

    // Nesse bloco é solicitada a porcentagem do reajuste.
    cUser       := FwInputBox('Digite o percentual de ajuste:', cUser)
    nPercent    := val(cUser)   // Aqui é atribuido o valor à variável correspondente.

    // Aqui, o valor atual é somado com a porcentagem de reajuste e atribuido à variável de novo valor.
    nNovo := nAtual + ((nAtual * nPercent) / 100)

    // E por fim, é exibido ao usuário o valor novo do salário.
    FwAlertInfo('Seu novo salário é de R$ ' +  CVALTOCHAR(Round(nNovo, 2))  + ' reais.', "Salário novo")
    
Return 
