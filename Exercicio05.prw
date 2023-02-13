#INCLUDE 'TOTVS.CH'

// Aqui já é definido por padrão a porcentagem do distribuidor e do imposto.
#DEFINE nDist 28
#DEFINE nImp 45

User Function CarroNovo()
    // Declaração de variável.
    local cUser     := ''
    local nCusto    := 0
    local nFinal    := 0

    // Nesse bloco, é solicitado ao usuário o valor de custo do veículo.
    cUser   := FwInputBox('Digite o valor de custo do veículo:', cUser)
    nCusto  := val(cUser) // Aqui, é atribuído o valor à variável correspondente.

    // Aqui, é feito o cálculo do valor do veículo, incluindo os valores de impostos e taxa do distribuidor.
    nFinal  := (nCusto + (((nCusto * nDist) / 100) + ((nCusto * nImp) / 100)))

    // Por fim, é exibido ao usuário o valor final do veículo.
    FwAlertInfo("O valor atual do seu veículo é de R$" + cvaltochar(round(nFinal, 2)) + '.', "Novo Valor")

Return 
