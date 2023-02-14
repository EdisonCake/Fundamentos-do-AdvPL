#INCLUDE 'TOTVS.CH'

User Function AchaNome()
    // Declaração de variáveis.
    local aNomes := {}
    local cNome  := ''
    local cAcha  := ''
    local nCount := 0
    local nPos   := 0

    // Iniciando o contador com laço de repetição finito, limitado a 10 nomes.
    For nCount := 1 to 10
        cNome := FwInputBox("Digite um nome a ser armazenado (" + cvaltochar(nCount) + "/10)", cNome)
        aAdd(aNomes, cNome)     // Nessa linha, o nome digitado é adicionado ao array de nomes.
        cNome := ''             // E aqui, a variável é redefinida para uma nova futura entrada.
    Next nCount

    // Aqui é solicitado ao usuário qual nome o mesmo quer pesquisar no vetor anteriormente preenchido.
    cAcha := FwInputBox('Digite o nome a ser pesquisado:', cAcha)

    // Aqui é utilizada a função aScan() para procurar o valor informado. É atribuída a posição do array à variável numérica.
    nPos := aScan(aNomes, cAcha)
    
    // Se a posição for preenchida com um valor cima de 0, é informado o sucesso na busca.
    if nPos > 0
        MsgInfo("Achei!" + CRLF +;
        "Encontrado na posição " + cvaltochar(nPos) + " do array/vetor.", "Achei!")
    else
        MsgStop("Não encontrei", "Erro!")
    endif
    
Return 
