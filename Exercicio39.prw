#INCLUDE "TOTVS.CH"

User Function SorteiaNome()
    local aNomes    := {'Natan','Stephani','Daniele','Edison','Ruan',;
                        'Gabriela','Giulliana','Quirino','Jo�o','Gustavo',;
                        'Tam�ris','Pintor','Henrique','Lucas','F�bio'}
    local nSorteio  := 0

    nSorteio := RANDOMIZE(1 , len(aNomes))

    MsgInfo("O nome sorteado foi " + aNomes[nSorteio])

Return
