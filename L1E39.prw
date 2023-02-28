#INCLUDE "TOTVS.CH"

User Function SorteiaNome()
    local aNomes    := {'Natan','Stephani','Daniele','Edison','Ruan',;
                        'Gabriela','Giulliana','Quirino','João','Gustavo',;
                        'Tamíris','Pintor','Henrique','Lucas','Fábio'}
    local nSorteio  := 0

    nSorteio := RANDOMIZE(1 , len(aNomes))

    MsgInfo("O nome sorteado foi " + aNomes[nSorteio])

Return
