#INCLUDE 'TOTVS.CH'

User Function Sobe10()
    // Declaração de variáveis
    local nCount    := 0
    local cConcat   := ''

    // Iniciado um laço de repetição finito.
    For nCount := 100 to 110

        // Bloco condicional. Se o valor atual for menor que o definido ao contador, é adicionada uma vírgula na concatenação.
        // Se o contador chegar no valor final do bloco de repetição, é adicionado um ponto final.
        if nCount < 110
            cConcat += alltrim(str(nCount)) + ", "
        else
            cConcat += alltrim(str(nCount)) + "."
        endif 
    Next nCount 

    // É exibido ao usuário a concatenação com a contagem crescente dos números.
    MSGINFO(cConcat, "Resultado")
Return 
