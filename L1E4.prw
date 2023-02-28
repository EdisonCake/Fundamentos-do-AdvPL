// Escreva um algoritmo para ler o sal�rio mensal atual de um funcion�rio e o percentual de reajuste. Calcular e escrever o valor do novo sal�rio.

#INCLUDE 'TOTVS.CH'

User Function Salario()
    // Declara��o de vari�veis.
    local cUser     := ''
    local nAtual    := 0
    local nNovo     := 0
    local nPercent  := 0

    // Nesse bloco, � solicitado ao usu�rio o valor do sal�rio atual.
    cUser   := FwInputBox('Digite o sal�rio atual:', cUser)
    nAtual  := val(cUser)   // Aqui � atribuido o valor � vari�vel correspondente.
    cUser   := ''           // E aqui, a vari�vel 'receptora' � redefinida.

    // Nesse bloco � solicitada a porcentagem do reajuste.
    cUser       := FwInputBox('Digite o percentual de ajuste:', cUser)
    nPercent    := val(cUser)   // Aqui � atribuido o valor � vari�vel correspondente.

    // Aqui, o valor atual � somado com a porcentagem de reajuste e atribuido � vari�vel de novo valor.
    nNovo := nAtual + ((nAtual * nPercent) / 100)

    // E por fim, � exibido ao usu�rio o valor novo do sal�rio.
    FwAlertInfo('Seu novo sal�rio � de R$ ' +  CVALTOCHAR(Round(nNovo, 2))  + ' reais.', "Sal�rio novo")
    
Return 
