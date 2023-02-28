#INCLUDE 'PROTHEUS.CH'

User Function Triangulo01()
    // Declaração de variáveis.
    local cUser         := ''
    local nCount        := 0
    local aTriangulo    := {}

    // Iniciado um laço finito de repetição.
    For nCount := 1 to 3
        // Aqui é solicitado ao usuário o valor do lado do triângulo correspondente.
        cUser := FwInputBox("Digite o valor do " + cvaltochar(nCount) + "º lado do triângulo.", cUser)

        aAdd(aTriangulo, val(cUser))    // Aqui, o valor informado é adicionado ao array na posição correspondente ao contador.
        cUser := ''                     // Nessa linha, a variável inicial é rederfinida.
    Next nCount                         // Aqui, é dado um passo no contador do laço finito de repetição.

    // Iniciando um bloco condicional, no qual ele compara todos os lados do triângulo e informa a possibilidade da formação do mesmo.
    if (aTriangulo[1] + aTriangulo[2] > aTriangulo[3]) .and. (aTriangulo[2] + aTriangulo[3] > aTriangulo[1]) .and. (aTriangulo[1] + aTriangulo[3] > aTriangulo[2])
        MsgInfo('As medidas informadas formam um triângulo!', 'Triângulo')
    else
        MsgStop('As medidas informadas não formam um triângulo.', 'Não-triângulo')
    ENDIF

Return 
