#INCLUDE 'TOTVS.CH'

User Function TipoNumero()
    local cUser := ''
    local nNum  := 0

    cUser   := FwInputBox('Digite um n�mero:', cUser)
    nNum    := val(cUser)

    DO CASE
        CASE nNum < 0
            FwAlertInfo('O n�mero digitado � negativo!', "N�mero negativo")
        CASE nNum = 0
            FwAlertInfo('O n�mero digitado � zero!', "N�mero zero.")
        OTHERWISE
            FwAlertInfo('O n�mero digitado � positivo!', "N�mero positivo.")
    ENDCASE

Return 
