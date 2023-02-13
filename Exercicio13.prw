#INCLUDE 'TOTVS.CH'

User Function Valor02()
    local cUser     := ''
    local cDesc     := ''
    local nQtd      := 0
    local nValorUni := 0
    local nDesc     := 0
    local nTotal    := 0

    cDesc     := FwInputBox("Digite o produto a ser comprado:", cDesc)

    cUser     := FwInputBox('Digite a quantidade levada:', cUser)
    nQtd      := val(cUser)
    cUser     := ''

    cUser     := FwInputBox('Valor unitário:', cUser)
    nValorUni := val(cUser)

    if nQtd <= 5 
        nDesc := ((nValorUni * 2) / 100) * nQtd
        nTotal := (nQtd * nValorUni) - nDesc

        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")

    elseif (nQtd >5) .and. (nQtd <= 10)
        nDesc := ((nValorUni * 3) / 100) * nQtd
        nTotal := (nQtd * nValorUni) - nDesc

        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
    
    elseif nQtd > 10
        nDesc := ((nValorUni * 5) / 100) * nQtd
        nTotal := (nQtd * nValorUni) - nDesc

        FwAlertInfo('Produto: ' + cDesc + CRLF +;
                    "Quantidade: " + cvaltochar(nQtd) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Unitário: R$" + cvaltochar(nValorUni) + CRLF +;
                    "Valor de desconto: R$" + cvaltochar(noround(nDesc, 2)) + CRLF +;
                    "=========================" + CRLF +;
                    "Valor Total: R$" + cvaltochar(noround(nTotal, 2)), "Total da Compra")
        
    endif

Return 
