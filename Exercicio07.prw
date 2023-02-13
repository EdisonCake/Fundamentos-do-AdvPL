#INCLUDE 'TOTVS.CH'

User Function Maca()
    // Declaração de variáveis.
    local cUser     := ''
    local nQtd      := 0
    local nValor    := 0
    local nFinal    := 0

    //Aqui é solicitado ao usuário a quantidade de maçãs a serem compradas.
    cUser := FwInputBox("Digite a quantidade de maçãs a comprar!", cUser)
    nQtd  := val(cUser) // Nessa linha, é atribuido o valor à variável correspondente.

    // Abrindo bloco condicional, no qual definirá o tipo de valor com base na quantidade de itens comprados.
    if nQTD < 12    // Se forem compradas menos de 12, cada uma sairá por R$1,30.
        nValor      := 1.30
        nFinal      := nQtd * nValor

        // Aqui é exibido ao usuário o valor da compra com base no valor.
        FwAlertInfo("O valor da compra é de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")

    elseif nQTD >= 12   // Se forem compradas 12 ou mais, cada uma sairá por R$1,00.
        nValor      := 1.00
        nFinal      := nQtd * nValor

        // Aqui é exibido ao usuário o valor da compra com base no valor.
        FwAlertInfo("O valor da compra é de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")
    ENDIF
        
Return 
