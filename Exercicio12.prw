#INCLUDE 'TOTVS.CH'

User Function Partida()
    // Declara��o de vari�veis.
    local cUser     := ''
    local cTimeA    := ''
    local cTimeB    := ''
    local nTimeA    := 0
    local nTimeB    := 0
    
    // Aqui, � solicitado ao usu�rio o nome do primeiro time.
    // Por ser uma string, n�o � necess�rio utilizar vari�vel auxiliar ou realizar convers�o.
    cTimeA  := FwInputBox('Digite o nome do primeiro time.', cTimeA)
    
    // Aqui, � solicitado ao usu�rio o placar do primeiro time.
    cUser   := FwInputBox('Agora, o placar do primeiro time.', cUser)
    nTimeA  := val(cUser)   // Aqui, � atribuido o valor � vari�vel correspondente.
    cUser   := ''           // E aqui, a vari�vel auxiliar � redefinida.

    // Aqui, � solicitado ao usu�rio o nome do segundo time.
    // Por ser uma string, n�o � necess�rio utilizar vari�vel auxiliar ou realizar convers�o.
    cTimeB  := FwInputBox('Digite o nome do segundo time.', cTimeB)
    
    // Aqui, � solicitado ao usu�rio o placar do segundo time.
    cUser   := FwInputBox('Por fim, o placar do segundo time.', cUser)
    nTimeB  := val(cUser)

    // Iniciando o bloco condicional, no qual far� a compara��o dos placares e informar� quem venceu ou se houve empate.
    Do Case
        Case (nTimeA > nTimeB)
            FwAlertInfo('O time vencedor foi ' + cTimeA + ' com ' + cvaltochar(nTimeA) + ' pontos/gols.', "Parab�ns!")
        Case (nTimeB > nTimeA)
            FwAlertInfo('O time vencedor foi ' + cTimeB + ' com ' + cvaltochar(nTimeB) + ' pontos/gols.', "Parab�ns!")
        Case (nTimeA = nTimeB)
            FwAlertError('EMPATE!', 'EMPATE!')
    EndCase

Return 
