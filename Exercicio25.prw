#INCLUDE 'TOTVS.CH'

User Function Somou()
    // Declara��o de vari�veis.
    local nUser  := 0
    local nSoma  := 0
    local nCount := 0
    
    // Iniciado um la�o de repeti��o finito.
    For nCount := 1 to 10

        // Solicitado ao usu�rio um n�mero a ser adicionado na contagem.
        nUser := val(FwInputBox("Digite um n�mero qualquer: " + cvaltochar(nCount) + "/10"))
        nSoma += nUser
        
    Next nCount // Pr�ximo passo do contador.

    // Por fim, � exibida a soma de todos os n�meros digitados ao usu�rio.
    MsgInfo("A soma de todos os n�meros digitados � " + cvaltochar(nSoma) + ".", "Soma")

Return 
