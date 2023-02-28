#INCLUDE 'TOTVS.CH'

User Function Valor02()
    // Declaração de variáveis.
    local cUser     := ''
    local cDesc     := ''
    local nQtd      := 0
    local nValorUni := 0
    local nDesc     := 0
    local nTotal    := 0

    // Aqui é solicitado ao usuário o nome/descrição do produto a ser comprado.
    // Por se tratar de uma string, não há necessidade de conversão através de variável auxiliar.
    cDesc     := FwInputBox("Digite o produto a ser comprado:", cDesc)

    // Aqui é solicitado ao usuário a quantidade que está sendo levada do produto.
    cUser     := FwInputBox('Digite a quantidade levada:', cUser)
    nQtd      := val(cUser)     // Aqui, é solicitado ao usuário o placar do primeiro time.
    cUser     := ''             // E aqui, a variável auxiliar é redefinida.

    // Aqui é solicitado ao usuário o valor unitário do item levado.
    cUser     := FwInputBox('Valor unitário:', cUser)
    nValorUni := val(cUser)     // Aqui, é solicitado ao usuário o placar do primeiro time.

    // Iniciando o bloco condicional.
    if nQtd <= 5 
        nDesc := ((nValorUni * 2) / 100) * nQtd // Se uma quantidade pequena é informada, é dado 2% de desconto para o usuário.
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui é exibido ao usuário os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")

    elseif (nQtd >5) .and. (nQtd <= 10)     // Se uma quantidade intermediária é informada, é dado 3% de desconto ao usuário.
        nDesc := ((nValorUni * 3) / 100) * nQtd
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui é exibido ao usuário os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
    
    elseif nQtd > 10
        nDesc := ((nValorUni * 5) / 100) * nQtd // Por fim, se uma quantidade grande é informada, é dado 5% de desconto ao usuário.
        nTotal := (nQtd * nValorUni) - nDesc

        // Aqui é exibido ao usuário os detalhes da compra, informando os valores.
        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
        
    endif

Return 
