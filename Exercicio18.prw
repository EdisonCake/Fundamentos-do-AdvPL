#INCLUDE 'TOTVS.CH'

User Function Crescente()
    // Declara��o de vari�veis
    local nCount    := 0
    local cConcat   := ''

    // Iniciado um la�o de repeti��o finito.
    For nCount := 1 to 10

        // Bloco condicional. Se o valor atual for menor que o definido ao contador, � adicionada uma v�rgula na concatena��o.
        // Se o contador chegar no valor final do bloco de repeti��o, � adicionado um ponto final.
        if nCount < 10
            cConcat += alltrim(str(nCount)) + ", "
        else
            cConcat += alltrim(str(nCount)) + "."
        endif 
    Next nCount 

    // � exibido ao usu�rio a concatena��o com a contagem crescente dos n�meros.
    MSGINFO(cConcat, "Resultado")
Return 
