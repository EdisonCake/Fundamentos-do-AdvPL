#INCLUDE 'TOTVS.CH'

User Function SobeN()
    // Declaração de variáveis
    local cConcat   := ''
    local nCount    := 0
    local nLenght   := 0

    // Aqui é solicitado ao usuário o valor final da contagem.
    // Note que é atribuido diretamente à variável correspondente utilizando a função Val() e dentro a função FWInpuBox().
    nLenght := Val(FwInputBox("Até qual número deseja contar?", ''))


    // Iniciado um laço de repetição finito com o parâmetro final definido pela variável.
    For nCount := 1 to nLenght

        // Bloco condicional. Se o valor atual for menor que o definido ao contador, é adicionada uma vírgula na concatenação.
        // Se o contador chegar no valor final do bloco de repetição, é adicionado um ponto final.
        if nCount < nLenght
            cConcat += alltrim(str(nCount)) + ", "
        else
            cConcat += alltrim(str(nCount)) + "."
        endif 
    Next nCount 

    // É exibido ao usuário a concatenação com a contagem crescente dos números.
    MSGINFO(cConcat, "Resultado")
Return 
