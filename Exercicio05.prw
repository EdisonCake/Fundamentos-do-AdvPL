#INCLUDE 'TOTVS.CH'
#DEFINE nDist 28
#DEFINE nImp 45

User Function CarroNovo()
    local cUser     := ''
    local nCusto    := 0
    local nFinal    := 0

    cUser   := FwInputBox('Digite o valor de custo do veículo:', cUser)
    nCusto  := val(cUser) 

    nFinal  := (nCusto + (((nCusto * nDist) / 100) + ((nCusto * nImp) / 100)))
    FwAlertInfo("O valor atual do seu veículo é de R$" + cvaltochar(round(nFinal, 2)) + '.', "Novo Valor")

Return 
