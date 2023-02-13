#INCLUDE 'PROTHEUS.CH'

User Function Triangulo01()
    local cUser         := ''
    local nCount        := 0
    local nLado         := 0
    local aTriangulo    := {}

    For nCount := 1 to 3
        cUser := FwInputBox("Digite o valor do " + cvaltochar(nCount) + "� lado do tri�ngulo.", cUser)
        nLado := val(cUser)
        cUser := ''

        aAdd(aTriangulo, nLado)
    Next nCount

    if (aTriangulo[1] + aTriangulo[2] > aTriangulo[3]) .and. (aTriangulo[2] + aTriangulo[3] > aTriangulo[1]) .and. (aTriangulo[1] + aTriangulo[3] > aTriangulo[2])
        MsgInfo('As medidas informadas formam um tri�ngulo!', 'Tri�ngulo')
    else
        MsgStop('As medidas informadas n�o formam um tri�ngulo.', 'N�o-tri�ngulo')
    ENDIF

Return 
