#INCLUDE 'TOTVS.CH'

User Function DoisArrays()
// Declara��o de vari�veis
    local aArray1 := {}
    local aArray2 := {}
    local nCount  := 0
    local nUser   := 0
    local cPosScan  := ""
    local nConta  := 0

    // Iniciado um la�o de repeti��o finito para o preenchimento do primeiro array.
    For nCount := 1 to 15
        nUser := Val(FwInputBox("Digite um n�mero aleat�rio a�! " + cvaltochar(nCount) + "/15"))
        aAdd(aArray1, nUser)
    next 

    // Iniciado um la�o de repeti��o finito para o preenchimento do segundo array.
    For nCount := 1 to 15
        nUser := Val(FwInputBox("Aqui � para adicionar em outro array! " + cvaltochar(nCount) + "/10"))
        aAdd(aArray2, nUser)
    Next

    // Iniciado um la�o de repeti��o finito para comparar todas as casas de ambos os arrays
    For nCount := 1 to 15

        //Se existir um valor igual em ambos os arrays na mesma posi��o, � acrescido um contador, e � concatenada a posi��o do array.
        if (aArray1[nCount]) == (aArray2[nCount])
                cPosScan += cvaltochar(nCount) + " // "
                nConta++
        endif
    Next

    // Por fim, houverem valores iguais � exibido ao usu�rio, sen�o, � ibnformada a inexist�ncia.
    if nConta > 0
        FwAlertInfo("Ambos os arrays possuem n�meros iguais nas posi��es abaixo:" + CRLF +;
                    cPosScan, "Arrays")
    else
        FwAlertError("N�o existem n�meros em posi��es iguais em ambos os arrays.", "Arrays")
    endif 

Return 
