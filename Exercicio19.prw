#INCLUDE 'TOTVS.CH'

User Function Decrescente()
    // Declara��o de vari�veis
    local nCount    := 0
    local cConcat   := ''

    // Iniciado um la�o de repeti��o finito.
    For nCount := 10 to 1 step -1

        // Bloco condicional. Se o valor atual for menor que o definido ao contador, � adicionada uma v�rgula na concatena��o.
        // Se o contador chegar no valor final do bloco de repeti��o, � adicionado um ponto final.
        if nCount > 1
            cConcat += alltrim(str(nCount)) + ", "
        elseif nCount = 1
            cConcat += alltrim(str(nCount)) + "."
        endif 
    Next nCount 

    // � exibido ao usu�rio a concatena��o com a contagem decrescente dos n�meros.
    MSGINFO(cConcat, "Resultado")
Return 
