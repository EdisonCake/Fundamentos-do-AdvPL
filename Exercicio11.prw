#INCLUDE 'PROTHEUS.CH'

User Function Triangulo01()
    local cUser         := ''
    local nCount        := 0
    local nLado         := 0
    local aTriangulo    := {}

    For nCount := 1 to 3
        cUser := FwInputBox("Digite o valor do " + cvaltochar(nCount) + "º lado do triângulo.", cUser)
        nLado := val(cUser)
        cUser := ''

        aAdd(aTriangulo, nLado)
    Next nCount

    if (aTriangulo[1] + aTriangulo[2] > aTriangulo[3]) .and. (aTriangulo[2] + aTriangulo[3] > aTriangulo[1]) .and. (aTriangulo[1] + aTriangulo[3] > aTriangulo[2])
        MsgInfo('As medidas informadas formam um triângulo!', 'Triângulo')
    else
        MsgStop('As medidas informadas não formam um triângulo.', 'Não-triângulo')
    ENDIF

Return 
