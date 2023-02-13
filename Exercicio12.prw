#INCLUDE 'TOTVS.CH'

User Function Partida()
    local cUser     := ''
    local cTimeA    := ''
    local cTimeB    := ''
    local nTimeA    := 0
    local nTimeB    := 0
    
    cTimeA  := FwInputBox('Digite o nome do primeiro time.', cTimeA)
    
    cUser   := FwInputBox('Agora, o placar do primeiro time.', cUser)
    nTimeA  := val(cUser)
    cUser   := ''

    cTimeB  := FwInputBox('Digite o nome do segundo time.', cTimeB)
    
    cUser   := FwInputBox('Por fim, o placar do segundo time.', cUser)
    nTimeB  := val(cUser)

    Do Case
        Case (nTimeA > nTimeB)
            FwAlertInfo('O time vencedor foi ' + cTimeA + ' com ' + cvaltochar(nTimeA) + ' pontos/gols.', "Parabéns!")
        Case (nTimeB > nTimeA)
            FwAlertInfo('O time vencedor foi ' + cTimeB + ' com ' + cvaltochar(nTimeB) + ' pontos/gols.', "Parabéns!")
        Case (nTimeA = nTimeB)
            FwAlertError('EMPATE!', 'EMPATE!')
    EndCase

Return 
