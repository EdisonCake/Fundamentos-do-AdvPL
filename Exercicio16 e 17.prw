#INCLUDE 'TOTVS.CH'

User Function Nota01()
    // Declara��o de vari�veis.
    local cUser     := ''
    local aNotas    := {}
    local nCount    := 0
    local nMedia    := 0
    local lLoop     := .T.

    // Iniciado um la�o de repeti��o definido pela condi��o de Continuar (S/N).
    While lLoop

        // � iniciado um la�o de repeti��o finito
        for nCount := 1 to 2
            
            // Aqui � solicitado ao usu�rio a nota do aluno.
            cUser := FwInputBox("Digite a " + cvaltochar(ncount) + "� nota do aluno.", cUser)

            // Se a nota do aluno for um valor inv�lido, � exibida uma mensagem de erro e o la�o repete at� um valor v�lido ser informado.
            if val(cUser) <= 0 .or. val(cUser) > 10
                MsgStop("Atencao. Nota invalida!")
                nCount--        // Se a nota for inv�lida, o contador � redefinido.
                cUser := ''     // Nessa linha, a vari�vel uxiliar � redefinida.
            else
                // Se a nota for v�lida, � adicionado a um array na posi��o correspondente do contador.
                aAdd(aNotas, val(cUser))
                cUser := ''     // Nessa linha, a vari�vel uxiliar � redefinida.
            endif
            
        next nCount // Aqui � dado um passo ao pr�ximo n�mero do la�o de repeti��o finito.

        // Aqui, � feito o c�lculo da m�dia com base nas informa��es das posi��es do array.
        nMedia      := (aNotas[1] + aNotas[2] ) / 2     

        // E por fim � exibido ao usu�rio a m�dia do aluno.
        FwAlertInfo("A m�dia do aluno foi de " + cvaltochar(round(nMedia, 1)) + ".")

        // Nessa nova caixa, � perguntado ao usu�rio se deseja o c�lculo de uma nova m�dia.
        // A fun��o Upper() retorna um caractere mai�sculo independente do que for digitado pelo usu�rio.
        cUser := Upper(FwInputBox('Deseja um novo c�lculo de M�dia? (S/N)'))

        // Nesse bloco condicional, se o usu�rio desejar uma nova m�dia, � redefinido o la�o de repeti��o e o programa roda novamente.
        // Caso contr�rio, o loop � encerrado e o programa finaliza.
        if cUser == "N"
            lLoop := .f.
        else
            cUser := ''
            nCount := 1
        end if

    end while

    // Ao finalizar o programa essa mensagem � exibida (foi gra�a minha mesmo, mas ficou bem legal :D)
    MsgInfo("Obrigado por ter calculado as m�dias conosco!")

Return 
