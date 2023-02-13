// Escreva um algoritmo para ler as dimensões de um retângulo (base e altura), calcular e escrever a área desse retângulo.

#INCLUDE 'TOTVS.CH'

User Function Area()
    // Declaração de variáveis.
    local cUser     := ''
    local nBase     := 0
    local nAltura   := 0
    local nArea     := 0

    // Nesse bloco, é solicitado ao usuário o valor da base do retângulo.
    cUser := FwInputBox('Digite as medidas da base do retângulo:', cUser)
    nBase := val(cUser) // O valor é atribuído à variável numérica referente.
    cUser := ''         // A variável que recebe a informação é zerada para a próxima solicitação.

    // Nesse bloco, é solicitado ao usuário o valor da altura do retângulo.
    cUser   := FwInputBox('Digite as medidas da altura do retângulo:', cUser)
    nAltura := val(cUser) // Aqui, o valor é atribuido à variável referente.

    nArea := (nBase * nAltura) // Aqui a variável de área recebe o cálculo.

    // E por fim, é exibido ao usuário o valor da base.
    FwAlertInfo('A área do retângulo é de ' + cvaltochar(noround(nArea, 2)) + 'm².', 'Área')

Return 
