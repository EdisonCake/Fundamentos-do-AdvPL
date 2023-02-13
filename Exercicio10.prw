#INCLUDE 'TOTVS.CH'

User Function OrdenaValor()
    // Declara��o de vari�veis
    local cUser     := ''
    local cExibe    := ''
    local aOrdem    := {}
    local nVal      := 0
    local nCount    := 0
    
    // Iniciando um la�o finito de repeti��o
    for nCount := 1 to 3
        
        // � solicitado ao usu�rio um n�mero.
        cUser   := FwInputBox('Digite o ' + cvaltochar(nCount) + '� n�mero:', cUser)
        nVal    := val(cUser)   // Nessa linha � atribuido o valor � vari�vel correspondente.
        cUser   := ''           // Nessa linha, a vari�vel inicial � redefinida.

        AADD(aOrdem, nVal)      // Aqui � adicionado o valor informado pelo usu�rio ao array na posi��o do contador.
    next nCount                 // Aqui, � dado um passo ao pr�ximo n�mero do contador dentro do la�o finito de repeti��o.

    ASORT(aOrdem)   // A fun��o aSort() ordena os valores do array de forma crescente.

    // Aqui � iniciado um la�o finito de repeti��o com base no tamanho do array criado anteriormente.
    for nCount := 1 to len(aOrdem)

        // Aqui � criado um bloco condicional no qual define se o que ser� concatenado ser� uma v�rgula ao final, ou um ponto final.
        if nCount < len(aOrdem)     // Se o contador atual for menor que o valor final, � adicionado uma v�rgula na concatena��o.
            cExibe += alltrim(str(aOrdem[nCount])) + ", "   // A fun��o STR() transforma o valor em string/caractere, e a fun��o AllTrim() remove espa�os em branco antes e depois da string/caractere,
        elseif nCount = 3           // Se o contador atual for o valor final, � adicionado um ponto final � concatena��o.
            cExibe += alltrim(str(aOrdem[nCount])) + "."
        ENDIF 
    next nCount     // Aqui, � dado um passo ao pr�ximo n�mero do contador dentro do la�o finito de repeti��o.

    // Por fim, � exibida a concatena��o ordenada, feita anteriormente pela fun��o aSort().
    MSGALERT(cExibe, "Resultado" )

Return 
