programa {
/* Cadastrar um Kart  
//2. Listar Karts disponíveis
A opção cadastrar kart deve armazenar os dados de modelo, cor do kart, valor de 
locação, quantidade de vezes que foi locado, status do kart (usável ou em 
manutenção), valor total gasto em manutenção (começa em 0) se está ou não locado. 
A opção Listar karts disponíveis deve mostrar na tela as informações completas sobre 
todos os karts cadastrados. Dados em branco devem ser ignorados. */


  funcao inicio() {
    cadeia  corkart[15], modelokart[15]
    inteiro I,escaso[15]
    real valordeLocacao[15], valorManutencao = 0.0
    caracter Status[15],R

	para(I=0 ;I<15 ;I++){
		modelokart[I]="----------"
		corkart[I]="-----"
		valordeLocacao[I]=0.0
		Status[I]='L'
		espaco[I]=0
		}

    faca{
	para(I=0 ; I<4 ; I++){
		se(modelokart[I]=="----------" e Status[I]=='L'){
			escreva("\nEspaço ",I+1,"Livre\n")
			escaso[I]=0
			
			}
		
	}
	faca{
		escreva("\nQual espaço para cadastar:")
		leia(I)
		
		I--
		
		se(I<0 ou I>15){
			
			escreva("\nInvalido\n")
			
			}

  		}enquanto(I<0 ou I>15)

  	
		escreva("O modelo do kart é :")
		leia(modelokart[I])
	
		escreva("\nCor do kart é : ")
		leia(corkart[I])
	
		escreva("\nO valor da locação é: ")
		leia(valordeLocacao[I])
	
		faca{
		
			escreva("\nStatus do kart(L)Livre(A)Alugado: " )
			leia(Status[I])
		
			se(Status[I]!='L' e Status[I]!='A'){
			
				escreva("Letra invalida")
			
				}
			
		}enquanto(Status[I]!='L' e Status[I]!='A' )
	
		faca{
		
    			escreva("Gotaria de continua ?(S)sim(N)não")
    			leia(R)
    			
    			se(R!='S' e R!='N'){
    				
    				limpa()
    				
    				escreva("Letra invalida")
    			
    			}
    		
  		}enquanto(R!='S' e R!='N')
  			
    }enquanto(R=='S')    
lista(Status, modelokart, valordeLocacao)
  }
  
  funcao lista(caracter status[],cadeia modelokart[], real valordeLocacao[]){
  	inteiro i
  	
  	para(i = 0; i < 15; i++){
  		se(status[i] == 'L'){
  			escreva("O status do kart é : ", status[i])
  			escreva("O modelo é : ", modelokart[i])
  			escreva("O valor de locação é : ", valordeLocacao[i])
  			
  			
  		}
  		
  	}
  }
}
