#INCLUDE 'TOTVS.CH'

User Function Fatorial()
    local nCount    := 0
    local nResult   := 0
    local nFat      := 0

    nFat := val(fwinputbox("Escreva um valor maior que zero:"))
    nResult := nFat

    For nCount := (nFat - 1) to 1 step -1
        nResult *= nCount
    Next

    MsgInfo("O fatorial de " + cvaltochar(nFat) + " é " + cvaltochar(nResult) + ".", "Fatorial")

Return 
