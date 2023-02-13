#INCLUDE 'TOTVS.CH'

User Function Nota01()
    // Declaração de variáveis.
    local cUser     := ''
    local aNotas    := {}
    local nCount    := 0
    local nMedia    := 0
    local lLoop     := .T.

    // Iniciado um laço de repetição definido pela condição de Continuar (S/N).
    While lLoop

        // É iniciado um laço de repetição finito
        for nCount := 1 to 2
            
            // Aqui é solicitado ao usuário a nota do aluno.
            cUser := FwInputBox("Digite a " + cvaltochar(ncount) + "ª nota do aluno.", cUser)

            // Se a nota do aluno for um valor inválido, é exibida uma mensagem de erro e o laço repete até um valor válido ser informado.
            if val(cUser) <= 0 .or. val(cUser) > 10
                MsgStop("Atencao. Nota invalida!")
                nCount--        // Se a nota for inválida, o contador é redefinido.
                cUser := ''     // Nessa linha, a variável uxiliar é redefinida.
            else
                // Se a nota for válida, é adicionado a um array na posição correspondente do contador.
                aAdd(aNotas, val(cUser))
                cUser := ''     // Nessa linha, a variável uxiliar é redefinida.
            endif
            
        next nCount // Aqui é dado um passo ao próximo número do laço de repetição finito.

        // Aqui, é feito o cálculo da média com base nas informações das posições do array.
        nMedia      := (aNotas[1] + aNotas[2] ) / 2     

        // E por fim é exibido ao usuário a média do aluno.
        FwAlertInfo("A média do aluno foi de " + cvaltochar(round(nMedia, 1)) + ".")

        // Nessa nova caixa, é perguntado ao usuário se deseja o cálculo de uma nova média.
        // A função Upper() retorna um caractere maiúsculo independente do que for digitado pelo usuário.
        cUser := Upper(FwInputBox('Deseja um novo cálculo de Média? (S/N)'))

        // Nesse bloco condicional, se o usuário desejar uma nova média, é redefinido o laço de repetição e o programa roda novamente.
        // Caso contrário, o loop é encerrado e o programa finaliza.
        if cUser == "N"
            lLoop := .f.
        else
            cUser := ''
            nCount := 1
        end if

    end while

    // Ao finalizar o programa essa mensagem é exibida (foi graça minha mesmo, mas ficou bem legal :D)
    MsgInfo("Obrigado por ter calculado as médias conosco!")

Return 
