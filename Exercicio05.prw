#INCLUDE 'TOTVS.CH'

// Aqui j� � definido por padr�o a porcentagem do distribuidor e do imposto.
#DEFINE nDist 28
#DEFINE nImp 45

User Function CarroNovo()
    // Declara��o de vari�vel.
    local cUser     := ''
    local nCusto    := 0
    local nFinal    := 0

    // Nesse bloco, � solicitado ao usu�rio o valor de custo do ve�culo.
    cUser   := FwInputBox('Digite o valor de custo do ve�culo:', cUser)
    nCusto  := val(cUser) // Aqui, � atribu�do o valor � vari�vel correspondente.

    // Aqui, � feito o c�lculo do valor do ve�culo, incluindo os valores de impostos e taxa do distribuidor.
    nFinal  := (nCusto + (((nCusto * nDist) / 100) + ((nCusto * nImp) / 100)))

    // Por fim, � exibido ao usu�rio o valor final do ve�culo.
    FwAlertInfo("O valor atual do seu ve�culo � de R$" + cvaltochar(round(nFinal, 2)) + '.', "Novo Valor")

Return 
