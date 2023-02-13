// 3 - Fa�a um algoritmo que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa expressa apenas em dias. Considerar ano com 365 dias e m�s com 30 dias

#INCLUDE 'TOTVS.CH'

User Function Idade()
    // Declara��o de vari�veis.
    local cUser     := ''
    local nDia      := 0
    local nMes      := 0
    local nAno      := 0
    local nIdade    := 0

    // Nesse bloco, � pedido ao usu�rio o dia do nascimento.
    cUser   := FwInputBox("Digite o dia do seu nascimento:", "")
    nDia    := val(cUser) // Aqui � atribuido � vari�vel o valor solicitado.
    cUser   := ''         // Aqui a vari�vel 'receptora' � redefinida.

    // Nesse bloco, � pedido ao usu�rio o m�s do nascimento.
    cUser   := FwInputBox("Agora o m�s do seu nascimento:", "")
    nMes    := val(cUser) // Aqui � atribuido � vari�vel o valor solicitado.
    cUser   := ''         // Aqui a vari�vel 'receptora' � redefinida.

    // E por fim, nesse bloco, � solicitado o ano do nascimento.
    cUser   := FwInputBox("E por fim, o ano do seu nascimento:", "")
    nAno    := val(cUser) // Aqui � atribuido � vari�vel o valor solicitado.

    // A vari�vel de idade recebe a idade convertida em dias.
    nIdade  := (Year(Date()) - nAno) * 365

    // Aqui � retornado ao usu�rio a mensagem solicitada.
    FwAlertSuccess("Uau! Voc� est� vivo h� " + CVALTOCHAR(nIdade) + ' dias!', "Olha s�, velhote!")
Return 
