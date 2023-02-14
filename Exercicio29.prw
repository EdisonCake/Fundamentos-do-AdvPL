#INCLUDE 'TOTVS.CH'

User Function MultiArray()
    // Declaração de variáveis
    local aArray1 := {}
    local aArray2 := {}
    local nNum    := 0
    local nCount   := 0
    local cConcat := ''

    // Iniciando um contador para preencher automaticamente o primeiro array de 1 até 10.
    For nCount := 1 to 10
        aAdd(aArray1, nCount)
    Next

    // Aqui é solicitado ao usuário por qual número ele quer multiplicar os valores do primeiro array
    nNum := val(FwInputBox("Digite um número multiplicador: "))

    // Aqui é iniciado um novo contador para preencher o segundo array com os números do primeiro porém multiplicados.
    For nCount := 1 to 10

        // Aqui é adicionado o valor multiplicado ao segundo Array
        aAdd(aArray2, (aArray1[nCount] * nNum))

        // É aberto um bloco condicional para definir se será adicionada uma vírgula ou um ponto final à concatenação.
        if nCount < 10
            cConcat += "{" + cvaltochar(aArray2[nCount]) + "}, "
        else
            cConcat += "{" + cvaltochar(aArray2[nCount]) + "}."
        endif 
    Next

    // Por fim, é exibido ao usuário a concatenação do segundo array com os valores multiplicados.
    MsgInfo(cConcat)

Return 
