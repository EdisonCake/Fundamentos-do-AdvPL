#INCLUDE 'TOTVS.CH'

User Function DoisArrays()
// Declaração de variáveis
    local aArray1 := {}
    local aArray2 := {}
    local nCount  := 0
    local nUser   := 0
    local cPosScan  := ""
    local nConta  := 0

    // Iniciado um laço de repetição finito para o preenchimento do primeiro array.
    For nCount := 1 to 15
        nUser := Val(FwInputBox("Digite um número aleatório aí! " + cvaltochar(nCount) + "/15"))
        aAdd(aArray1, nUser)
    next 

    // Iniciado um laço de repetição finito para o preenchimento do segundo array.
    For nCount := 1 to 15
        nUser := Val(FwInputBox("Aqui é para adicionar em outro array! " + cvaltochar(nCount) + "/10"))
        aAdd(aArray2, nUser)
    Next

    // Iniciado um laço de repetição finito para comparar todas as casas de ambos os arrays
    For nCount := 1 to 15

        //Se existir um valor igual em ambos os arrays na mesma posição, é acrescido um contador, e é concatenada a posição do array.
        if (aArray1[nCount]) == (aArray2[nCount])
                cPosScan += cvaltochar(nCount) + " // "
                nConta++
        endif
    Next

    // Por fim, houverem valores iguais é exibido ao usuário, senão, é ibnformada a inexistência.
    if nConta > 0
        FwAlertInfo("Ambos os arrays possuem números iguais nas posições abaixo:" + CRLF +;
                    cPosScan, "Arrays")
    else
        FwAlertError("Não existem números em posições iguais em ambos os arrays.", "Arrays")
    endif 

Return 
