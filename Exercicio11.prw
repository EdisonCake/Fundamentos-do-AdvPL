#INCLUDE 'PROTHEUS.CH'

User Function Triangulo01()
    // Declara��o de vari�veis.
    local cUser         := ''
    local nCount        := 0
    local aTriangulo    := {}

    // Iniciado um la�o finito de repeti��o.
    For nCount := 1 to 3
        // Aqui � solicitado ao usu�rio o valor do lado do tri�ngulo correspondente.
        cUser := FwInputBox("Digite o valor do " + cvaltochar(nCount) + "� lado do tri�ngulo.", cUser)

        aAdd(aTriangulo, val(cUser))    // Aqui, o valor informado � adicionado ao array na posi��o correspondente ao contador.
        cUser := ''                     // Nessa linha, a vari�vel inicial � rederfinida.
    Next nCount                         // Aqui, � dado um passo no contador do la�o finito de repeti��o.

    // Iniciando um bloco condicional, no qual ele compara todos os lados do tri�ngulo e informa a possibilidade da forma��o do mesmo.
    if (aTriangulo[1] + aTriangulo[2] > aTriangulo[3]) .and. (aTriangulo[2] + aTriangulo[3] > aTriangulo[1]) .and. (aTriangulo[1] + aTriangulo[3] > aTriangulo[2])
        MsgInfo('As medidas informadas formam um tri�ngulo!', 'Tri�ngulo')
    else
        MsgStop('As medidas informadas n�o formam um tri�ngulo.', 'N�o-tri�ngulo')
    ENDIF

Return 
