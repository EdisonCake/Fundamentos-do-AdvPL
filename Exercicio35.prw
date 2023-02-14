#INCLUDE 'TOTVS.CH'

User Function MediaZero()
    local nVolta    := 0
    local nCount    := 0
    local nMedia    := 0
    local lLoop     := .t.
    local nUser     := 0

    While lLoop
        nUser := Val(FwInputBox("Digite a sua idade ou digite zero para encerrar."))

        if nUser = 0
            lLoop := .f.
        else
            nVolta ++
            nCount += nUser
        endif

    End while

    nMedia := (nCount / nVolta)

    FwAlertInfo("A média das idades digitadas é de " + cvaltochar(round(nMedia, 0)) + " anos", "")

Return 
