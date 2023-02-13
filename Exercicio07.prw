#INCLUDE 'TOTVS.CH'

User Function Maca()
    // Declara��o de vari�veis.
    local cUser     := ''
    local nQtd      := 0
    local nValor    := 0
    local nFinal    := 0

    //Aqui � solicitado ao usu�rio a quantidade de ma��s a serem compradas.
    cUser := FwInputBox("Digite a quantidade de ma��s a comprar!", cUser)
    nQtd  := val(cUser) // Nessa linha, � atribuido o valor � vari�vel correspondente.

    // Abrindo bloco condicional, no qual definir� o tipo de valor com base na quantidade de itens comprados.
    if nQTD < 12    // Se forem compradas menos de 12, cada uma sair� por R$1,30.
        nValor      := 1.30
        nFinal      := nQtd * nValor

        // Aqui � exibido ao usu�rio o valor da compra com base no valor.
        FwAlertInfo("O valor da compra � de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")

    elseif nQTD >= 12   // Se forem compradas 12 ou mais, cada uma sair� por R$1,00.
        nValor      := 1.00
        nFinal      := nQtd * nValor

        // Aqui � exibido ao usu�rio o valor da compra com base no valor.
        FwAlertInfo("O valor da compra � de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")
    ENDIF
        
Return 
