#INCLUDE 'TOTVS.CH'

User Function HoraExtra()
    local cUser       := ''
    local nHora       := 0
    local nHoraExtra  := 0
    local nPreco      := 0
    local nPrecoExtra := 0
    local nFinal      := 0

    cUser := FwInputBox("Digite as horas trabalhadas no último mês.", cUser)
    nHora := val(cUser)
    cUser := ''

    cUser   := FwInputBox("Digite o valor de sua hora.", cUser)
    nPreco  := val(cUser)

    if nHora <= 160

        nFinal := nHora * nPreco

        FwAlertInfo("Você receberá R$" + cvaltochar(noround(nFinal)) + " referente ao último mês trabalhado.", "Cálculo de Salário")

    elseif nHora > 160

        nHoraExtra  := (nHora - 160)
        nPrecoExtra := (nPreco * 50) / 100
        nFinal      := (nHora * nPreco) + (nPrecoExtra * nHoraExtra)

        FwAlertInfo("Você receberá R$" + cvaltochar(noround(nFinal)) + " referente ao último mês trabalhado." + CRLF +;
                    "Total de horas: " + cvaltochar(nHora) + "." + CRLF +;
                    "Total de horas extras: " + cvaltochar(nHoraExtra) + "." + CRLF +;
                    "Salário base: R$" + cvaltochar(noround((nPreco * nHora), 2)) + "." + CRLF +;
                    "Valor recebido de horas extras: R$" + cvaltochar(noround((nPrecoExtra * nHoraExtra), 2)), "Cálculo de Salário")
    ENDIF
        
Return 
