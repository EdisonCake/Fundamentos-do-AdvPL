#INCLUDE 'TOTVS.CH'

User Function Somou()
    // Declaração de variáveis.
    local nUser  := 0
    local nSoma  := 0
    local nCount := 0
    
    // Iniciado um laço de repetição finito.
    For nCount := 1 to 10

        // Solicitado ao usuário um número a ser adicionado na contagem.
        nUser := val(FwInputBox("Digite um número qualquer: " + cvaltochar(nCount) + "/10"))
        nSoma += nUser
        
    Next nCount // Próximo passo do contador.

    // Por fim, é exibida a soma de todos os números digitados ao usuário.
    MsgInfo("A soma de todos os números digitados é " + cvaltochar(nSoma) + ".", "Soma")

Return 
