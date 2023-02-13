#INCLUDE 'TOTVS.CH'

User Function OrdenaValor()
    // Declaração de variáveis
    local cUser     := ''
    local cExibe    := ''
    local aOrdem    := {}
    local nVal      := 0
    local nCount    := 0
    
    // Iniciando um laço finito de repetição
    for nCount := 1 to 3
        
        // É solicitado ao usuário um número.
        cUser   := FwInputBox('Digite o ' + cvaltochar(nCount) + 'º número:', cUser)
        nVal    := val(cUser)   // Nessa linha é atribuido o valor à variável correspondente.
        cUser   := ''           // Nessa linha, a variável inicial é redefinida.

        AADD(aOrdem, nVal)      // Aqui é adicionado o valor informado pelo usuário ao array na posição do contador.
    next nCount                 // Aqui, é dado um passo ao próximo número do contador dentro do laço finito de repetição.

    ASORT(aOrdem)   // A função aSort() ordena os valores do array de forma crescente.

    // Aqui é iniciado um laço finito de repetição com base no tamanho do array criado anteriormente.
    for nCount := 1 to len(aOrdem)

        // Aqui é criado um bloco condicional no qual define se o que será concatenado será uma vírgula ao final, ou um ponto final.
        if nCount < len(aOrdem)     // Se o contador atual for menor que o valor final, é adicionado uma vírgula na concatenação.
            cExibe += alltrim(str(aOrdem[nCount])) + ", "   // A função STR() transforma o valor em string/caractere, e a função AllTrim() remove espaços em branco antes e depois da string/caractere,
        elseif nCount = 3           // Se o contador atual for o valor final, é adicionado um ponto final à concatenação.
            cExibe += alltrim(str(aOrdem[nCount])) + "."
        ENDIF 
    next nCount     // Aqui, é dado um passo ao próximo número do contador dentro do laço finito de repetição.

    // Por fim, é exibida a concatenação ordenada, feita anteriormente pela função aSort().
    MSGALERT(cExibe, "Resultado" )

Return 
