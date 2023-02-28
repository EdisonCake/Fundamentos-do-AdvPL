// 3 - Faça um algoritmo que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa expressa apenas em dias. Considerar ano com 365 dias e mês com 30 dias

#INCLUDE 'TOTVS.CH'

User Function Idade()
    // Declaração de variáveis.
    local cUser     := ''
    local nDia      := 0
    local nMes      := 0
    local nAno      := 0
    local nIdade    := 0

    // Nesse bloco, é pedido ao usuário o dia do nascimento.
    cUser   := FwInputBox("Digite o dia do seu nascimento:", "")
    nDia    := val(cUser) // Aqui é atribuido à variável o valor solicitado.
    cUser   := ''         // Aqui a variável 'receptora' é redefinida.

    // Nesse bloco, é pedido ao usuário o mês do nascimento.
    cUser   := FwInputBox("Agora o mês do seu nascimento:", "")
    nMes    := val(cUser) // Aqui é atribuido à variável o valor solicitado.
    cUser   := ''         // Aqui a variável 'receptora' é redefinida.

    // E por fim, nesse bloco, é solicitado o ano do nascimento.
    cUser   := FwInputBox("E por fim, o ano do seu nascimento:", "")
    nAno    := val(cUser) // Aqui é atribuido à variável o valor solicitado.

    // A variável de idade recebe a idade convertida em dias.
    nIdade  := (Year(Date()) - nAno) * 365

    // Aqui é retornado ao usuário a mensagem solicitada.
    FwAlertSuccess("Uau! Você está vivo há " + CVALTOCHAR(nIdade) + ' dias!', "Olha só, velhote!")
Return 
