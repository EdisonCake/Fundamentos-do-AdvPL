#INCLUDE 'TOTVS.CH'

User Function Negativo()
// Declaraзгo de variбveis
    local nNum      := 0
    local nCount    := 0
    local nNegat    :=0

    // Aqui й iniciado um laзo de repetiзгo finito
    For nCount := 1 to 10

        //Aqui й solicitado ao usuбrio um nъmero e й atribuнdo o valor а variбvel correspondente.
        nNum := val(fwinputbox("Digite um valor qualquer " + cvaltochar(nCount) + "/10"))

        // Se o nъmero digitado for negativo, й acrescido em um a variбvel de contagem.
        if nNum < 0
            nNegat++
        endif

    Next nCount // Prуximo passo do laзo finito de repetiзгo.

    // Por fim, й exibido ao usuбrio quantos nъmeros negativos foram digitados.
    MSGINFO("Foram digitados " + cvaltochar(nNegat) + " nъmeros negativos.", "Negativos.")

Return 
