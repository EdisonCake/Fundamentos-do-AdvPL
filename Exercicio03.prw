// 3 - Fa�a um algoritmo que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa expressa apenas em dias. Considerar ano com 365 dias e m�s com 30 dias

#INCLUDE 'TOTVS.CH'

User Function Idade()
    local cUser     := ''
    local nDia      := 0
    local nMes      := 0
    local nAno      := 0
    local nIdade    := 0

    cUser   := FwInputBox("Digite o dia do seu nascimento:", "")
    nDia    := val(cUser)
    cUser   := ''

    cUser   := FwInputBox("Agora o m�s do seu nascimento:", "")
    nMes    := val(cUser)
    cUser   := ''

    cUser   := FwInputBox("E por fim, o ano do seu nascimento:", "")
    nAno    := val(cUser)

    nIdade  := (Year(Date()) - nAno) * 365

    FwAlertSuccess("Uau! Voc� est� vivo h� " + CVALTOCHAR(nIdade) + ' dias!', "Olha s�, velhote!")
Return 
