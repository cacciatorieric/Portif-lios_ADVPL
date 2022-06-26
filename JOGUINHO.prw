#INCLUDE 'protheus.ch'

user function ADIVINHA()
    Local nNum := Randomize(1,100)
    Local nChute := 0
    Local nTentativa := 0

    while nChute != nNum 
        nChute = Val(FWInputBox('Digite um número [1 - 100]', ''))
            if nChute == nNum
                  MsgInfo('Acerto Mizeravi<br><br>Tentativas: ' + CValToChar(nTentativas) , 'Congratulations')  
            elseif nChute > nNum
                  MsgInfo('Valor alto, tente um numero menor<br><br>Tentativas: ' + CValToChar(nTentativas), 'MUITO ALTO')
                  nTentativa += 1
            elseif nChute < nNum
                  MsgInfo('Valor baixo, tente um numero maior<br><br>Tentativas: ' +  CValToChar(nTentativas), 'MUITO BAIXO')
                  nTentativa += 1  
            endif
    end
return
