#INCLUDE 'TOTVS.CH'

User Function ArrayOrdenado()
    // Declara��o de vari�veis.
    local aArray  := {}
    local nUser   := 0
    local nCount  := 0
    local cConcat := ""

    // La�o de repeti��o finito para incluir os valores no array.
    for nCount := 1 to 10
        nUser := Val(FwInputBox("Digite um n�mero qualquer: " + cvaltochar(nCount) + "/10"))
        aadd(aArray, nUser)
    Next

    // Fun��o para organiza��o crescente dos valores do array.
    aSort(aArray)

    // La�o de repeti��o finito para concatena��o dos valores organizados do array.
    For nCount := 1 to len(aArray)
        if nCount < len(aArray)
            cConcat += "{" + cvaltochar(aArray[nCount]) + "}, "
        else
            cConcat += "{" + cvaltochar(aArray[nCount]) + "}."
        endif 
    Next

    // Por fim, mensagem interativa e exibi��o dos array ordenado e concatenado.
    MsgInfo("Vetor organizado!")
    MsgInfo(cConcat)

Return 
