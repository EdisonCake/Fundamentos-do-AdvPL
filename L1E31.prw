#INCLUDE 'TOTVS.CH'

User Function ArrayOrdenado()
    // Declaração de variáveis.
    local aArray  := {}
    local nUser   := 0
    local nCount  := 0
    local cConcat := ""

    // Laço de repetição finito para incluir os valores no array.
    for nCount := 1 to 10
        nUser := Val(FwInputBox("Digite um número qualquer: " + cvaltochar(nCount) + "/10"))
        aadd(aArray, nUser)
    Next

    // Função para organização crescente dos valores do array.
    aSort(aArray)

    // Laço de repetição finito para concatenação dos valores organizados do array.
    For nCount := 1 to len(aArray)
        if nCount < len(aArray)
            cConcat += "{" + cvaltochar(aArray[nCount]) + "}, "
        else
            cConcat += "{" + cvaltochar(aArray[nCount]) + "}."
        endif 
    Next

    // Por fim, mensagem interativa e exibição dos array ordenado e concatenado.
    MsgInfo("Vetor organizado!")
    MsgInfo(cConcat)

Return 
