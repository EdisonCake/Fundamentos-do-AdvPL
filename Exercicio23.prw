#INCLUDE 'TOTVS.CH'

User Function Negativo()
// Declaração de variáveis
    local nNum      := 0
    local nCount    := 0
    local nNegat    :=0

    // Aqui é iniciado um laço de repetição finito
    For nCount := 1 to 10

        //Aqui é solicitado ao usuário um número e é atribuído o valor à variável correspondente.
        nNum := val(fwinputbox("Digite um valor qualquer " + cvaltochar(nCount) + "/10"))

        // Se o número digitado for negativo, é acrescido em um a variável de contagem.
        if nNum < 0
            nNegat++
        endif

    Next nCount // Próximo passo do laço finito de repetição.

    // Por fim, é exibido ao usuário quantos números negativos foram digitados.
    MSGINFO("Foram digitados " + cvaltochar(nNegat) + " números negativos.", "Negativos.")

Return 
