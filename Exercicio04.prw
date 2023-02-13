// Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário.

#INCLUDE 'TOTVS.CH'

User Function Salario()
    local cUser     := ''
    local nAtual    := 0
    local nNovo     := 0
    local nPercent  := 0

    cUser   := FwInputBox('Digite o salário atual:', cUser)
    nAtual  := val(cUser)
    cUser   := ''

    cUser       := FwInputBox('Digite o percentual de ajuste:', cUser)
    nPercent    := val(cUser)

    nNovo := nAtual + ((nAtual * nPercent) / 100)
    FwAlertInfo('Seu novo salário é de R$ ' +  CVALTOCHAR(Round(nNovo, 2))  + ' reais.', "Salário novo")
    
Return 
