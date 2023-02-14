#INCLUDE 'TOTVS.CH'

User Function Entre()
// Declaração de variáveis.
    local nUser     := 0
    local nEntre    := 0
    local nFora     := 0
    local nCount    := 0
    local cResp     := ''
    local cConcatE  := ''
    local cConcatF  := ''

    // Aqui é iniciado um laço de repetição finito.
    For nCount := 1 to 10

        // Aqui é solicitado ao usuário um número qualquer.
        nUser := val(fwinputbox("Digite um número qualquer: " + cvaltochar(nCount) + "/10"))

        // Aqui é dada a condição. Se o número estiver dentro do intervalo, é acrescido o contador "entre", senão, é acrescido no contador "fora".
        // Também é concatenado o número digitado na variável de exibição.
        if nUser >= 10 .and. nUser <= 20
            nEntre++
            cConcatE += cvaltochar(nUser) + " // "
        else
            nFora++
            cConcatF += cvaltochar(nUser) + " // "
        endif 

    Next nCount     // Próximo número do contador.

    // Aqui é exibido ao usuário as quantidades de números sigitados dentro e fora do intervalo definido.
    FwAlertInfo("Foram digitados " + cvaltochar(nEntre) + " números entre 10 e 20." + CRLF +;
                "E foram digitados " + cvaltochar(nFora) + " números fora desse intervalo.", "Números.")

    // Aqui é perguntado ao usuário se o mesmo deseja visualizar os valores digitados dentro e fora do intervalo.
    cResp := upper(FwInputBox("Deseja visualizar os valores digitados? (S/N)", cResp))

    // Se digitado sim, é exibido, senão, o programa finaliza.
    if cResp == "S"
        MsgInfo(cConcatE, "Números dentro do intervalo")
        MsgInfo(cConcatF, "Números fora do intervalo")
    elseif cResp == "N"
        MsgInfo("Ok...", "Poxa.")   // Não negue a exibição, o programa fica triste...
    endif 

Return 
