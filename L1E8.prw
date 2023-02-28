#INCLUDE 'TOTVS.CH'

// C�digo feito considerando um m�s com 4 semanas fechadas, totalizando 160 horas mensais (40 horas semanais).

User Function HoraExtra()
    // Declara��o de vari�veis.
    local cUser       := ''
    local nHora       := 0
    local nHoraExtra  := 0
    local nPreco      := 0
    local nPrecoExtra := 0
    local nFinal      := 0

    // Aqui � solicitado ao usu�rio a quantidade de horas trabalhadas no �ltimo m�s.
    cUser := FwInputBox("Digite as horas trabalhadas no �ltimo m�s.", cUser)
    nHora := val(cUser)     // Nessa linha, � atribuido o valor � vari�vel correspondente.
    cUser := ''             // Nessa linha, a vari�vel � redefinida.

    // Aqui � solicitado ao usu�rio o valor de cada hora trabalhada.
    cUser   := FwInputBox("Digite o valor de sua hora.", cUser)
    nPreco  := val(cUser)   // Nessa linha, � atribuido o valor � vari�vel correspondente.

    // Iniciando o bloco de condi��o para o c�lculo do sal�rio do trabalhador.
    if nHora <= 160     

        nFinal := nHora * nPreco   // Se o funcion�rio trabalhou menos ou dentro do m�nimo de horas � feito o c�lculo padr�o.

        // E � informado ao mesmo de maneira direta o quanto receber�.
        FwAlertInfo("Voc� receber� R$" + cvaltochar(noround(nFinal)) + " referente ao �ltimo m�s trabalhado.", "C�lculo de Sal�rio")

    elseif nHora > 160
    
        // Caso o funcion�rio possua mais de 160 horas mensais, � feito o c�lculo individual.
        nHoraExtra  := (nHora - 160)            // Nessa linha � calculado apenas as horas extras.
        nPrecoExtra := (nPreco * 50) / 100      // E aqui, o valor adicional de cada hora.
        nFinal      := (nHora * nPreco) + (nPrecoExtra * nHoraExtra)       // Por fim, � atribuio no valor final todos os c�lculos.

        // E � exibido ao funcion�rio um detalhamento dos c�lculos feitos, e informado os valores adicionais.
        FwAlertInfo("Voc� receber� R$" + cvaltochar(noround(nFinal)) + " referente ao �ltimo m�s trabalhado." + CRLF +;
                    "Total de horas: " + cvaltochar(nHora) + "." + CRLF +;
                    "Total de horas extras: " + cvaltochar(nHoraExtra) + "." + CRLF +;
                    "Sal�rio base: R$" + cvaltochar(noround((nPreco * nHora), 2)) + "." + CRLF +;
                    "Valor recebido de horas extras: R$" + cvaltochar(noround((nPrecoExtra * nHoraExtra), 2)), "C�lculo de Sal�rio")
    ENDIF
        
Return 
