#INCLUDE 'TOTVS.CH'

User Function ArrayReverso()
    // Declara��o de vari�veis
    local aArray   := {}
    local nUser    := ""
    local cConcat1 := ""
    local cConcat2 := ""
    local nCount   := 0

    // Aqui � iniciado um la�o de repeti��o finito para o preenchimento do array.
    For nCount := 1 to 10

        // Aqui � solicitado ao usu�rio o n�mero a ser adicionado no array.
        nUser := Val(FwInputBox("Digite um n�mero: " + cvaltochar(nCount) + "/10."))
        aAdd(aArray, nUser)

        // Bloco condicional para concatena��o de v�rgula ou ponto final.
        if nCount < 10
            cConcat1 += "{" + cvaltochar(nUser) + "}, "
        else
            cConcat1 += "{" + cvaltochar(nUser) + "}."
        endif
    Next

    // Apenas uma mensagem para intera��o com o usu�rio (n�o que o mesmo tenha muita escolha).
    MsgInfo("Invertendo posi��es." + CRLF +;
            "Pressione OK para continuar.", "Faz o reverse!")

    // Criado um novo la�o finito para concatena��o invertida, seguindo com o contador de tr�s pra frente.
    For nCount := len(aArray) to 1 step -1
        if nCount > 1
            cConcat2 += "{" + cvaltochar(aArray[nCount]) + "}, "
        else
            cConcat2 += "{" + cvaltochar(aArray[nCount]) + "}."
        Endif 
    Next

    // Por fim, � exibido ao usu�rio as concatena��es do array original e o mesmo invertido.
    FwAlertSuccess("Array original:" + CRLF +;
                   cConcat1 + CRLF +;
                   "Array invertido:" + CRLF +;
                   cConcat2, "Arrays")

Return 
