#INCLUDE 'TOTVS.CH'

User Function ArrayRepete()
    local aNumeros := {1, 3, 2, 1, 0, 2, 5, 6, 7, 8, 7, 2, 55, 55}
    local nCount   := 0
    local nCount2  := 0
    local cRepete  := ""


    for nCount := 1 to len(aNumeros)
        for nCount2 := (nCount + 1) to len(aNumeros)

            if aNumeros[nCount] == aNumeros[nCount2]          //* Verifica se tem valores iguais nas vari�veis e em quais posi��es est�o
                cRepete += CRLF + 'O n�mero ' + cvaltochar(aNumeros[nCount]) + ' se encontra nas posi��es ' + ALLTRIM(STR(nCount)) + ' e '+ ALLTRIM(STR(nCount2))
            endif

        next
    next

    MsgInfo(cRepete)

Return 
