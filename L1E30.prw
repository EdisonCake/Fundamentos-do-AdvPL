#INCLUDE 'TOTVS.CH'

User Function ArrayReverso()
    // Declaração de variáveis
    local aArray   := {}
    local nUser    := ""
    local cConcat1 := ""
    local cConcat2 := ""
    local nCount   := 0

    // Aqui é iniciado um laço de repetição finito para o preenchimento do array.
    For nCount := 1 to 10

        // Aqui é solicitado ao usuário o número a ser adicionado no array.
        nUser := Val(FwInputBox("Digite um número: " + cvaltochar(nCount) + "/10."))
        aAdd(aArray, nUser)

        // Bloco condicional para concatenação de vírgula ou ponto final.
        if nCount < 10
            cConcat1 += "{" + cvaltochar(nUser) + "}, "
        else
            cConcat1 += "{" + cvaltochar(nUser) + "}."
        endif
    Next

    // Apenas uma mensagem para interação com o usuário (não que o mesmo tenha muita escolha).
    MsgInfo("Invertendo posições." + CRLF +;
            "Pressione OK para continuar.", "Faz o reverse!")

    // Criado um novo laço finito para concatenação invertida, seguindo com o contador de trás pra frente.
    For nCount := len(aArray) to 1 step -1
        if nCount > 1
            cConcat2 += "{" + cvaltochar(aArray[nCount]) + "}, "
        else
            cConcat2 += "{" + cvaltochar(aArray[nCount]) + "}."
        Endif 
    Next

    // Por fim, é exibido ao usuário as concatenações do array original e o mesmo invertido.
    FwAlertSuccess("Array original:" + CRLF +;
                   cConcat1 + CRLF +;
                   "Array invertido:" + CRLF +;
                   cConcat2, "Arrays")

Return 
