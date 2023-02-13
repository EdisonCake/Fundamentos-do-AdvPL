#INCLUDE 'TOTVS.CH'

User Function TipoNumero()
    // Declaração de variáveis.
    local cUser := ''
    local nNum  := 0

    // Aqui, é solicitado um número ao usuário.
    cUser   := FwInputBox('Digite um número:', cUser)
    nNum    := val(cUser)   // Nessa linha, é atribuido o valor à variável correspondente.

    // Iniciando o bloco condicional.
    DO CASE
        CASE nNum < 0   // Se o valor digitado for menor que zero, é informado ao usuário sobre ser negativo.
            FwAlertInfo('O número digitado é negativo!', "Número negativo")
        CASE nNum = 0   // Se o valor digitado for zero, é informado ao usuário o mesmo.
            FwAlertInfo('O número digitado é zero!', "Número zero.")
        OTHERWISE       // Por fim, se for informado qualquer número acima de zero, é informado ao usuário que o mesmo é positivo.
            FwAlertInfo('O número digitado é positivo!', "Número positivo.")
    ENDCASE

Return 
