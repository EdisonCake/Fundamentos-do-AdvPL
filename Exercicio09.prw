#INCLUDE 'TOTVS.CH'

User Function TipoNumero()
    local cUser := ''
    local nNum  := 0

    cUser   := FwInputBox('Digite um número:', cUser)
    nNum    := val(cUser)

    DO CASE
        CASE nNum < 0
            FwAlertInfo('O número digitado é negativo!', "Número negativo")
        CASE nNum = 0
            FwAlertInfo('O número digitado é zero!', "Número zero.")
        OTHERWISE
            FwAlertInfo('O número digitado é positivo!', "Número positivo.")
    ENDCASE

Return 
