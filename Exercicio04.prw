// Escreva um algoritmo para ler o sal�rio mensal atual de um funcion�rio e o percentual de reajuste. Calcular e escrever o valor do novo sal�rio.

#INCLUDE 'TOTVS.CH'

User Function Salario()
    local cUser     := ''
    local nAtual    := 0
    local nNovo     := 0
    local nPercent  := 0

    cUser   := FwInputBox('Digite o sal�rio atual:', cUser)
    nAtual  := val(cUser)
    cUser   := ''

    cUser       := FwInputBox('Digite o percentual de ajuste:', cUser)
    nPercent    := val(cUser)

    nNovo := nAtual + ((nAtual * nPercent) / 100)
    FwAlertInfo('Seu novo sal�rio � de R$ ' +  CVALTOCHAR(Round(nNovo, 2))  + ' reais.', "Sal�rio novo")
    
Return 
