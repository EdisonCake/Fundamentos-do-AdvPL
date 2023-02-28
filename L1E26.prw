#INCLUDE 'TOTVS.CH'

User Function Media100()
    // Declaração de variáveis.
    local nCount := 0
    local nMedia := 0
    local nConta := 0
    local nVolta := 0

    // Iniciando um laço de repetição finito.
    For nCount := 15 to 100
        nConta += nCount
        nVolta++    // O número do contador é somado à variável de soma.
    Next nCount             // Próximo passo do laço de repetição finito.

    // Aqui é tirado a média dos valores digitados.
    nMedia := nConta / nVolta

    // E por fim, é exibido ao usuário o resultado.
    MsgInfo("A média dos valores entre 15 e 100 é " + cvaltochar(noround(nMedia, 2)) + ".", "Media")
Return 
