#INCLUDE 'TOTVS.CH'

User Function MultiArray()
    // Declara��o de vari�veis
    local aArray1 := {}
    local aArray2 := {}
    local nNum    := 0
    local nCount   := 0
    local cConcat := ''

    // Iniciando um contador para preencher automaticamente o primeiro array de 1 at� 10.
    For nCount := 1 to 10
        aAdd(aArray1, nCount)
    Next

    // Aqui � solicitado ao usu�rio por qual n�mero ele quer multiplicar os valores do primeiro array
    nNum := val(FwInputBox("Digite um n�mero multiplicador: "))

    // Aqui � iniciado um novo contador para preencher o segundo array com os n�meros do primeiro por�m multiplicados.
    For nCount := 1 to 10

        // Aqui � adicionado o valor multiplicado ao segundo Array
        aAdd(aArray2, (aArray1[nCount] * nNum))

        // � aberto um bloco condicional para definir se ser� adicionada uma v�rgula ou um ponto final � concatena��o.
        if nCount < 10
            cConcat += "{" + cvaltochar(aArray2[nCount]) + "}, "
        else
            cConcat += "{" + cvaltochar(aArray2[nCount]) + "}."
        endif 
    Next

    // Por fim, � exibido ao usu�rio a concatena��o do segundo array com os valores multiplicados.
    MsgInfo(cConcat)

Return 
