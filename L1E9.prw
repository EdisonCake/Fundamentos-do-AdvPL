#INCLUDE 'TOTVS.CH'

User Function TipoNumero()
    // Declara��o de vari�veis.
    local cUser := ''
    local nNum  := 0

    // Aqui, � solicitado um n�mero ao usu�rio.
    cUser   := FwInputBox('Digite um n�mero:', cUser)
    nNum    := val(cUser)   // Nessa linha, � atribuido o valor � vari�vel correspondente.

    // Iniciando o bloco condicional.
    DO CASE
        CASE nNum < 0   // Se o valor digitado for menor que zero, � informado ao usu�rio sobre ser negativo.
            FwAlertInfo('O n�mero digitado � negativo!', "N�mero negativo")
        CASE nNum = 0   // Se o valor digitado for zero, � informado ao usu�rio o mesmo.
            FwAlertInfo('O n�mero digitado � zero!', "N�mero zero.")
        OTHERWISE       // Por fim, se for informado qualquer n�mero acima de zero, � informado ao usu�rio que o mesmo � positivo.
            FwAlertInfo('O n�mero digitado � positivo!', "N�mero positivo.")
    ENDCASE

Return 
