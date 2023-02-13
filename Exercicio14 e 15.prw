#INCLUDE 'TOTVS.CH'

User Function Zero()
    // Declaração de variáveis.
    local cUser     := ''
    local nNum1     := 0
    local nNum2     := 0
    local nDiv      := 0
    local lLoop     := .t.

    // Aqui é solicitado ao usuário um número qualquer.
    cUser := FwInputBox('Digite um numero: ', cUser)
    nNum1 := val(cUser)     // Aqui é atribuido o valor à variável correspondente.
    cUser := ''             // E aqui a variável auxiliar é redefinida.

    // Aqui é iniciado um laço de repetição no qual a condição definirá se ele será encerrado ou não.
    While lLoop

        // É pedido ao usuário um segundo número.
        cUser := FwInputBox("Digite mais um numero: ", cUser)

        // Se o número é negativo ou zero, é exibida uma mensagem de erro ao usuário, e a repetição continua solicitado o número.
        // Senão, é atribuido o valor à variável correspondente e a repetição é encerrada.
        if val(cUser) <= 0
            MsgStop('Número invalido!', "Opa, opa! Pera la!")
            cUser := ''
            loop 
        else
            nNum2 := val(cUser)
            lLoop := .f.
        endif

    End while

    nDiv := nNum1 / nNum2  // Aqui é feita a divisão entre o primeiro e o segundo valor.

    // E por fim, é informado ao usuário a divisão feita e o resultado da mesma.
    MsgInfo(cvaltochar(nNum1) + " / " + cvaltochar(nNum2) + " = " + cvaltochar(nDiv), "Divisão")
    
Return 
