#INCLUDE 'TOTVS.CH'

User Function Negativo()
// Declara��o de vari�veis
    local nNum      := 0
    local nCount    := 0
    local nNegat    :=0

    // Aqui � iniciado um la�o de repeti��o finito
    For nCount := 1 to 10

        //Aqui � solicitado ao usu�rio um n�mero e � atribu�do o valor � vari�vel correspondente.
        nNum := val(fwinputbox("Digite um valor qualquer " + cvaltochar(nCount) + "/10"))

        // Se o n�mero digitado for negativo, � acrescido em um a vari�vel de contagem.
        if nNum < 0
            nNegat++
        endif

    Next nCount // Pr�ximo passo do la�o finito de repeti��o.

    // Por fim, � exibido ao usu�rio quantos n�meros negativos foram digitados.
    MSGINFO("Foram digitados " + cvaltochar(nNegat) + " n�meros negativos.", "Negativos.")

Return 
