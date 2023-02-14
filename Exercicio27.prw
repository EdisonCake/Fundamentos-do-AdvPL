#INCLUDE 'TOTVS.CH'

User Function Matriz()
    // Declaração de variáveis
    local aArray      := {}
    local nCount1     := 0
    local nCount2     := 0
    local cConcatena1 := ""
    local cConcatena2 := ""
    local cConcatena3 := ""

    // Iniciado um contador para selecionar a coluna a ser criada.
    for nCount1 := 1 to 10
         
        // É adicionado o número da linha no array
        cConcatena1 := cvaltochar(nCount1) + ", "

            // É iniciado um contador para concatenar a numeração na linha da segunda coluna.
            For nCount2 := 1 to 10

                if nCount2 < 10
                    cConcatena2 += cvaltochar(nCount2) + " "
                else
                    cConcatena2 += cvaltochar(ncount2) + "."
                Endif
            Next nCount

            // É adicionada a informação concatenada em ambas as variáveis no array na posição mencionada.
            aAdd(aArray, {cConcatena1, cConcatena2})
            cConcatena2 := ''       // A segunda variável de concatenação é redefinida para evitar concatenar mais informação.
    next nCount

    // É iniciado um contador finito para fazer a concatenação do array bidimensional em uma variável de texto.
    for nCount1 := 1 to 10

        for nCount2 := 1 to 2
            cConcatena3 += aArray[nCount1, nCount2]
        Next nCount2

        cConcatena3 += CRLF
    next nCount2

    // Por fim, é exibido o conteúdo do array ao usuário, e depois uma mensagem de finalização.
    MsgInfo(cConcatena3)
    MsgInfo("Finalizado")

Return 
