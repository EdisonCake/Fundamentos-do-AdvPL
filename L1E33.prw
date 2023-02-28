#INCLUDE 'TOTVS.CH'

User Function ArrayRepete()
    local aNumeros := {1, 3, 2, 1, 0, 2, 5, 6, 7, 8, 7, 2, 55, 55}
    local nCount   := 0
    local nCount2  := 0
    local cRepete  := ""


    for nCount := 1 to len(aNumeros)
        for nCount2 := (nCount + 1) to len(aNumeros)

            if aNumeros[nCount] == aNumeros[nCount2]
                cRepete += CRLF + 'O número ' + cvaltochar(aNumeros[nCount]) + ' se encontra nas posições ' + ALLTRIM(STR(nCount)) + ' e '+ ALLTRIM(STR(nCount2))
            endif

        next
    next

    MsgInfo(cRepete)

Return 
