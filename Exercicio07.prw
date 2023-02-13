#INCLUDE 'TOTVS.CH'

User Function Maca()
    local cUser     := ''
    local nQtd      := 0
    local nValor    := 0
    local nFinal    := 0

    cUser := FwInputBox("Digite a quantidade de maçãs a comprar!", cUser)
    nQtd  := val(cUser)

    if nQTD < 12
        nValor      := 1.30
        nFinal      := nQtd * nValor
        FwAlertInfo("O valor da compra é de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")
    elseif nQTD >= 12
        nValor      := 1.00
        nFinal      := nQtd * nValor
        FwAlertInfo("O valor da compra é de R$" + cvaltochar(noround(nFinal, 2)) + ".", "Valor Final")
    ENDIF
        
Return 
