#INCLUDE 'TOTVS.CH'

User Function Valor02()
    // Declara��o de vari�veis.
    local cUser     := ''
    local cDesc     := ''
    local nQtd      := 0
    local nValorUni := 0
    local nDesc     := 0
    local nTotal    := 0

    // Aqui � solicitado ao usu�rio o nome/descri��o do produto a ser comprado.
    // Por se tratar de uma string, n�o h� necessidade de convers�o atrav�s de vari�vel auxiliar.
    cDesc     := FwInputBox("Digite o produto a ser comprado:", cDesc)

    // Aqui � solicitado ao usu�rio a quantidade que est� sendo levada do produto.
    cUser     := FwInputBox('Digite a quantidade levada:', cUser)
    nQtd      := val(cUser)     // Aqui, � solicitado ao usu�rio o placar do primeiro time.
    cUser     := ''             // E aqui, a vari�vel auxiliar � redefinida.

    // Aqui � solicitado ao usu�rio o valor unit�rio do item levado.
    cUser     := FwInputBox('Valor unit�rio:', cUser)
    nValorUni := val(cUser)     // Aqui, � solicitado ao usu�rio o placar do primeiro time.

    // Iniciando o bloco condicional.
    if nQtd <= 5 
        nDesc := ((nValorUni * 2) / 100) * nQtd // Se uma quantidade pequena � informada, � dado 2% de desconto para o usu�rio.
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui � exibido ao usu�rio os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unit�rio: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")

    elseif (nQtd >5) .and. (nQtd <= 10)     // Se uma quantidade intermedi�ria � informada, � dado 3% de desconto ao usu�rio.
        nDesc := ((nValorUni * 3) / 100) * nQtd
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui � exibido ao usu�rio os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unit�rio: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
    
    elseif nQtd > 10
        nDesc := ((nValorUni * 5) / 100) * nQtd // Por fim, se uma quantidade grande � informada, � dado 5% de desconto ao usu�rio.
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui � exibido ao usu�rio os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unit�rio: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
        
    endif

Return 
