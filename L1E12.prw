#INCLUDE 'TOTVS.CH'

User Function Partida()
    // Declaração de variáveis.
    local cUser     := ''
    local cTimeA    := ''
    local cTimeB    := ''
    local nTimeA    := 0
    local nTimeB    := 0
    
    // Aqui, é solicitado ao usuário o nome do primeiro time.
    // Por ser uma string, não é necessário utilizar variável auxiliar ou realizar conversão.
    cTimeA  := FwInputBox('Digite o nome do primeiro time.', cTimeA)
    
    // Aqui, é solicitado ao usuário o placar do primeiro time.
    cUser   := FwInputBox('Agora, o placar do primeiro time.', cUser)
    nTimeA  := val(cUser)   // Aqui, é atribuido o valor à variável correspondente.
    cUser   := ''           // E aqui, a variável auxiliar é redefinida.

    // Aqui, é solicitado ao usuário o nome do segundo time.
    // Por ser uma string, não é necessário utilizar variável auxiliar ou realizar conversão.
    cTimeB  := FwInputBox('Digite o nome do segundo time.', cTimeB)
    
    // Aqui, é solicitado ao usuário o placar do segundo time.
    cUser   := FwInputBox('Por fim, o placar do segundo time.', cUser)
    nTimeB  := val(cUser)

    // Iniciando o bloco condicional, no qual fará a comparação dos placares e informará quem venceu ou se houve empate.
    Do Case
        Case (nTimeA > nTimeB)
            FwAlertInfo('O time vencedor foi ' + cTimeA + ' com ' + cvaltochar(nTimeA) + ' pontos/gols.', "Parabéns!")
        Case (nTimeB > nTimeA)
            FwAlertInfo('O time vencedor foi ' + cTimeB + ' com ' + cvaltochar(nTimeB) + ' pontos/gols.', "Parabéns!")
        Case (nTimeA = nTimeB)
            FwAlertError('EMPATE!', 'EMPATE!')
    EndCase

Return 
