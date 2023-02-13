#INCLUDE 'TOTVS.CH'

User Function OrdenaValor()
    local cUser     := ''
    local cExibe    := ''
    local aOrdem    := {}
    local nVal      := 0
    local nCount    := 0
    
    for nCount := 1 to 3
        
        cUser   := FwInputBox('Digite o ' + cvaltochar(nCount) + 'º número:', cUser)
        nVal    := val(cUser)
        cUser   := ''

        AADD(aOrdem, nVal)

    next nCount

    ASORT(aOrdem)

    for nCount := 1 to len(aOrdem)

        if nCount < len(aOrdem)
            cExibe += alltrim(str(aOrdem[nCount])) + ", "
        elseif nCount = 3
            cExibe += alltrim(str(aOrdem[nCount])) + "."
        ENDIF 
        
    next nCount

    MSGALERT(cExibe, "Resultado" )

Return 
