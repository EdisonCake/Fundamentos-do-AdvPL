#INCLUDE 'TOTVS.CH'

// Código feito considerando um mês com 4 semanas fechadas, totalizando 160 horas mensais (40 horas semanais).

User Function HoraExtra()
    // Declaração de variáveis.
    local cUser       := ''
    local nHora       := 0
    local nHoraExtra  := 0
    local nPreco      := 0
    local nPrecoExtra := 0
    local nFinal      := 0

    // Aqui é solicitado ao usuário a quantidade de horas trabalhadas no último mês.
    cUser := FwInputBox("Digite as horas trabalhadas no último mês.", cUser)
    nHora := val(cUser)     // Nessa linha, é atribuido o valor à variável correspondente.
    cUser := ''             // Nessa linha, a variável é redefinida.

    // Aqui é solicitado ao usuário o valor de cada hora trabalhada.
    cUser   := FwInputBox("Digite o valor de sua hora.", cUser)
    nPreco  := val(cUser)   // Nessa linha, é atribuido o valor à variável correspondente.

    // Iniciando o bloco de condição para o cálculo do salário do trabalhador.
    if nHora <= 160     

        nFinal := nHora * nPreco   // Se o funcionário trabalhou menos ou dentro do mínimo de horas é feito o cálculo padrão.

        // E é informado ao mesmo de maneira direta o quanto receberá.
        FwAlertInfo("Você receberá R$" + cvaltochar(noround(nFinal)) + " referente ao último mês trabalhado.", "Cálculo de Salário")

    elseif nHora > 160
    
        // Caso o funcionário possua mais de 160 horas mensais, é feito o cálculo individual.
        nHoraExtra  := (nHora - 160)            // Nessa linha é calculado apenas as horas extras.
        nPrecoExtra := (nPreco * 50) / 100      // E aqui, o valor adicional de cada hora.
        nFinal      := (nHora * nPreco) + (nPrecoExtra * nHoraExtra)       // Por fim, é atribuio no valor final todos os cálculos.

        // E é exibido ao funcionário um detalhamento dos cálculos feitos, e informado os valores adicionais.
        FwAlertInfo("Você receberá R$" + cvaltochar(noround(nFinal)) + " referente ao último mês trabalhado." + CRLF +;
                    "Total de horas: " + cvaltochar(nHora) + "." + CRLF +;
                    "Total de horas extras: " + cvaltochar(nHoraExtra) + "." + CRLF +;
                    "Salário base: R$" + cvaltochar(noround((nPreco * nHora), 2)) + "." + CRLF +;
                    "Valor recebido de horas extras: R$" + cvaltochar(noround((nPrecoExtra * nHoraExtra), 2)), "Cálculo de Salário")
    ENDIF
        
Return 
