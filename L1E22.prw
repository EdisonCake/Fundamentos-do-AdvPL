#INCLUDE 'TOTVS.CH'

User Function Tabuada()
    // Declaraзгo de variбveis
    local nTab    := 0
    local nCount  := 0
    local nResult := 0
    local cTab    := ''

    // Aqui й solicitado ao usuбrio qual nъmero deseja fazer a tabuada.
    nTab := val(fwinputbox('Digite a tabuada que deseja consultar:'))

    // Й iniciado um laзo finito para realizar a tabuada.
    For nCount := 1 to 10
        nResult := (nTab * nCount)  // Nessa linha, й multiplicado o nъmero escolhido pelo nъmero atual do contador.
        
        // Abaixo й concatenado o resultado em uma variбvel de texto com o caractere "CRLF" ao final para quebra de linha.
        cTab += cvaltochar(strzero(nCount, 3)) + " x " + cvaltochar(strzero(nTab, 3)) + " = " + cvaltochar(strzero(nResult, 3)) + CRLF
    Next nCount

    // Aqui й exibida ao usuбrio a tabuada concatenada e com quebra de linhas.
    FwAlertInfo(cTab, "Tabuada")

Return 
