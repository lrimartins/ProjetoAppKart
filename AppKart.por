programa
{
	funcao retornar_kart(cadeia corKart[], cadeia modeloKart[], caracter Status[]){
		
		cadeia devolver [15]
		inteiro i=0 , selecione , D=0

		para (i=0; i<15; i++){
			
			se(Status[i]=='A' e modeloKart[i]!="----------" e corKart[i]!="-----"){
				
				escreva("\nStatus do Kart: ",  i+1, " alugado\n")
				escreva("\nO modelo do kart é: ", modeloKart[i])
				escreva("\nCor do kart é: ", corKart[i])
				
				D++
				}
					
			}
			
				se(D>0){
					
					faca{
						
						escreva("Qual kart quer devolver: ")
						leia (selecione)
						selecione--
						
							se(selecione<0 ou selecione>14){
							
								escreva("\nNúmero inválido\n")
							
								}
								
							}enquanto(selecione<0 ou selecione>14)
							
							Status[selecione] = 'L'
				}
				senao{
					
					escreva("\n\nNão tem kart cadastrado ou todos livres\n")
					
					}
						
						
}

   funcao cadastrarKart(cadeia modeloKart[] , cadeia corKart[] , real valorDeLocacao[] , caracter Status[]){
    	
   		inteiro I 
   		
   		para(I = 0 ; I < 15 ;I++){

				// Para verificar se estão ou não livres
				
				// Se sim 
				se(modeloKart[I] == "----------" ou valorDeLocacao[I] == 0){
					
					// Mostrar quais estão livres
					
					escreva ("\nNo espaço ",I+1," está livre para novo cadastro\n")
					// Validação livre
					
				
					}
   				}
   				
   		faca{
   			
			escreva("Qual kart deseja cadastrar? (Digite números) ")
			leia(I)
			
			I--
      
      		se(I < 0 ou I > 14 ou modeloKart[I] != "----------" e valorDeLocacao[I] != 0.0){
      	
				escreva("\nPosição inválida\n")
        
      			}
      			
   		}enquanto(I < 0 ou I > 14 ou modeloKart[I] != "----------" e valorDeLocacao[I] !=0.0)
      
        escreva("Modelo do kart:\n ")
        leia(modeloKart[I])
        
        escreva("Cor do kart:\n ")
        leia(corKart[I])
        
        faca{
        	
        		escreva("Valor de locação do kart:\n ")
        		leia(valorDeLocacao[I])
        		
        		se(valorDeLocacao[I]<=0){
        			
        			escreva("\nNúmero inválido\n")
        			
        			}

        		
  		 }enquanto(valorDeLocacao[I]<=0)
  		 
        Status[I] = 'L'
      


    }

    
    funcao listarKartsDisponiveis(cadeia modeloKart[], cadeia corKart[], real valorDeLocacao[], caracter Status[]){
    	
	inteiro I, encontrou = 0
      
	escreva("\n--- LISTA DE KARTS DISPONÍVEIS ---\n")
       
	para(I = 0; I < 15;I++){
      	
		se(Status[I] == 'L' e modeloKart[I] != "----------" e valorDeLocacao[I] != 0.0){
        	
			escreva("\nModelo: ", modeloKart[I])
			escreva("\nCor: ", corKart[I])
			escreva("\nValor: ", valorDeLocacao[I])
			escreva("\nStatus: ", Status[I],"\n\n")
			
			encontrou = 1

				}
         
			}
			
	se(encontrou == 0){
       	
		escreva("\nNenhum kart cadastrado ou disponível!\n")
        
       }

    }


		funcao menuDeAtualizacao(real V[] , cadeia M[], caracter A[], caracter m[], cadeia C[]){
		// Declaração de variáveis
		
		// Para controle dos vetores
		inteiro I
		
		// Para escolhas 
		caracter R

		// Sai somente se o usuário quiser
		faca{
			
			// Se o usuário não for o kart desejado para atualizar
			faca{
			
				// Para caso a pessoa digitar um número não desejado 
				faca{
				
					// Para mostrar o valor e o modelo de todos os karts
					para(I=0 ; I<15 ;I++){
					
						// *I+1* pois começa em 0 e não em 1
					
						escreva("\n\nModelo do ", I+1 ,"º Kart: " ,M[I])
						escreva("\nValor do ", I+1 ,"º Kart: ",V[I],"$")
						escreva("\nCor do ", I+1 ,"º Kart: ",C[I])
						escreva("\nEstado de manutenção do kart: ",m[I],"\n\n")
						
						
						}
					
					// Para ler qual kart o usuário quer
					escreva("\nQual kart gostaria de atualizar os dados? (Somente números): ")
					leia(I)
				
					// Pois começa em 0 e não em 1
					I--
				
					// Se for digitado um valor inválido
					se(I<0 ou I>14){
				
						limpa()
						escreva("Número inválido\n\n")
				
					}
		
			}enquanto(I<0 ou I>14) // Para caso a pessoa digitar um número não desejado 

				// Fica repetindo até o usuário digitar um valor válido
				faca{
				
					limpa()
					// Mostra o modelo novamente para o usuário
					
					escreva("Modelo: " , M[I])
					escreva("\nValor: " , V[I],"$")
					escreva("\nCor do kart: ",C[I])
					escreva("\nEstado de manutenção do kart: ",m[I])
				
					// Para confirmar 
					escreva("\n\nEste é o kart desejado?\n(S) Sim  (N) Não  (E) Sair: ")
					leia(R)

					// Se for digitado um valor não desejado
					se(R!='S' e R!='N' e R!='E'){
					
						limpa()
						escreva("\nLetra inválida")
			
						}
			
					}enquanto(R!='S' e R!='N' e R!='E') // Fica repetindo até o usuário digitar um valor válido
				
				limpa()
					
				}enquanto(R =='N') // Se o usuário não for o kart desejado para atualizar
		
			// Vai para a função de atualizar os dados
			se(R =='S'){
				
				atualizarDados(V,M,I,m,C)
				
				
				}
			
			// Senão (se for o E de sair) volta para o menu
			senao{
				
				limpa()
				escreva("Saindo...\n\n")
				
				}

			}enquanto(R!='E') // Sai somente se o usuário quiser
			
		}
		
	funcao atualizarDados(real V[] , cadeia M[], inteiro I , caracter m[], cadeia C[]){
		
		// Declaração de variáveis
		
		// Variável de resposta
		caracter R

		// Limpa a tela antes de executar o programa
		limpa()
		
		// Sai somente se o usuário escolher sair
		faca{
			
			// Se a resposta for errada
			faca{
				
				// Mostra o modelo e valor do kart
				escreva("Modelo do kart ",I+1,"º: ",M[I])
				escreva("\n\nValor do kart ",I+1,"º: ",V[I],"$")
				escreva("\n\nCor do kart ",I+1,"º: ",C[I])
				escreva("\n\nEstado de manutenção do kart: ",m[I])

				// Para o usuário mudar os dados do kart
				escreva("\nQual dado deseja alterar?\n(M) Modelo  (V) Valor  (C) Cor do kart  (A) Estado de manutenção  (E) Sair\n:")
				leia(R)
				
				// Se a resposta for inválida
				se(R!='M' e R!='V' e R!='C' e R!='E' e R!='A'){
					
					limpa()
					escreva("Letra inválida\n\n")
					
					}
		
				}enquanto(R!='M' e R!='V' e R!='C' e R!='E' e R!='A') // Se a resposta for errada

			// Se for para atualizar o modelo
			se(R=='M'){	
					
				limpa()
				escreva("\nQual é o modelo atualizado: ")
				leia(M[I])
				
				}
				
			// Se for para atualizar o valor do kart
			senao se(R=='V'){		
				
				escreva("\nQual é o novo valor: ")
				leia(V[I])
				
				
				}
			senao se(R == 'C' ){
				
				escreva("\nQual é a nova cor do kart: ")
				leia(C[I])
				
				}

			// Se for para mudar o estado do kart de (U) utilizável para (M) manutenção e vice-versa
			senao se(R=='A'){

				// De utilizável para manutenção
				se(m[I]=='U'){
					
					limpa()
					escreva("Estado mudado de utilizável para manutenção")
					m[I]='M'
					
					}
				// De manutenção para utilizável
				senao{
					limpa()
					escreva("Estado mudado de manutenção para utilizável")
					m[I]='U'
					
					}	
				}
			
			}enquanto(R!='E') // Sai somente se o usuário escolher sair
			
		}

		funcao listarKartsLocados(caracter s[], cadeia modeloKart[]){
			inteiro i
			
			para(i=0; i<15; i++){
			se(s[i] == 'A'){	

				escreva("Kart ", i+1, " ", modeloKart[i], " está locado\n")
				// Colocar contador de números na função do Gabriel para que eu possa pegar a posição deles

			}senao se(s[i] == 'L'){	

				escreva("Kart ", i+1, " está disponível\n")
			}
				
		}
			
			
		}
		funcao listarKartsManutencao(caracter s[], cadeia modeloKart[]){
			inteiro i
			
			para(i=0; i<15; i++){
			se(s[i] == 'M'){	

				escreva("Kart ", i+1, " está em manutenção\n")
				// Colocar contador de números na função do Gabriel para que eu possa pegar a posição deles
			}senao se(s[i] == 'L'){	

				escreva("Kart ", i+1, " está disponível\n")

			}
			
	}
	
}
		
	
  
  funcao lista(caracter status[], cadeia modeloKart[], real valorDeLocacao[]){
  	inteiro i
  	
  	para(i = 0; i < 15; i++){
  		se(status[i] == 'L'){

  			escreva("O status do kart é: ", status[i])
  			escreva("O modelo é: ", modeloKart[i])
  			escreva("O valor de locação é: ", valorDeLocacao[i])
  			
  			
  		}
  		
  	}
  }
  
  		// Função para alugar kart
		funcao alugarKart(real V[] , cadeia M[] , caracter A[], caracter m[], inteiro Q[], cadeia C[]){
			
			inteiro I,D=0
			caracter R='S'

			escreva("\nLista de karts livres")
			faca{
				
				// Mostra na tela os karts livres
				para(I=0;I<15;I++){
					
						se(A[I]=='L' e m[I]=='L' e V[I]!=0.0 e M[I]!="----------"){
						
							escreva("\nModelo ",I+1,"º: ",M[I])
							escreva("\nValor do ",I+1,"º: ",V[I],"$")
							escreva("\nCor do ", I+1 ,"º: ", C[I])
							escreva("\nEstado: ",A[I],"\n\n")
							D++
						
							}
					}

				se(D!=0){
				
					faca{
						// Para o usuário escolher o kart
						escreva("\nQual kart gostaria de alugar? (Digite o número): ")
						leia(I)
						I--
					
						// Se digitar um número inválido
						se(I<0 ou I>14 ou A[I]=='A' ou m[I]=='M' ou V[I]==0.0 e M[I]=="----------"){
						
							escreva("\nNúmero inválido")
						
							}
				
				}enquanto(I<0 ou I>14 ou A[I]=='A' ou m[I]=='M' ou V[I]==0.0 e M[I]=="----------")

				// Mostra os dados do kart
				escreva("\nModelo ",I+1,"º: ",M[I])
				escreva("\nValor do ",I+1,"º: ",V[I],"$")
				escreva("\nCor do ",I+1,"º: ",C[I])
				escreva("\nEstado: ",A[I])


				faca{
					// Só para confirmar
					escreva("\nÉ este kart?\n(S) Sim\n(N) Não\n(E) Sair\n:")
					leia(R)

					// Se sim, muda o estado de livre para alugado
					se(R=='S'){
						
						Q[I]=Q[I]+1
						A[I]='A'
						R = 'E'
						
			
						}
						
					// Senão, a função encerra
					senao se(R=='N'){
	
						limpa()
						
					
						}
						// Se for digitada uma letra inválida
						senao se(R!='S' e R!='N' e R!='E' ){
				
						escreva("\nLetra inválida")
			
						}

				
					}enquanto(R!='S' e R!='N' e R!='E')
				}
				senao{
				
				limpa()
				escreva("\nTodos os karts foram locados ou não estão cadastrados\n")
				R='E'
				
				}
			}enquanto(R!='E')
			
			// Se não houver kart livre
			
				
			}

			funcao real receitaLucroDia(inteiro quantasVezesLocado[], real valorDeLocacao[], real lucroLocacao){
				
				real valorCircuito=200.0, receitaKarts=0.0, lucroKarts=0.0, lucroDiario=0.0
				
				// Para calcular a receita 
				para(inteiro i=0;i<15;i++){
					
						receitaKarts=receitaKarts+(valorDeLocacao[i]*quantasVezesLocado[i])
						
					}
					
					escreva("O total da receita gerada pelos karts é: ",receitaKarts,"\n") 
					
					// Para calcular o lucro dos karts 
				para(inteiro i=0;i<15;i++){
					
						lucroKarts=lucroKarts+(valorDeLocacao[i]*quantasVezesLocado[i]*0.3)
						
					}
					
				lucroDiario = lucroKarts+lucroLocacao
				
				retorne lucroDiario
				}

				
				funcao real locacaoCircuito(real lucroLocacao, real valorCircuito){
					
    					real tempo, valorTotal
    					inteiro resposta
    					
    					faca{
    						escreva("Digite o tempo de locação em horas: ")
    						leia(tempo)
    						// Validar entrada (evitar tempo negativo)
    						
    						enquanto(tempo<0){
    							
      						escreva("Opção inválida! Digite novamente: ")
      						leia(tempo)
      						
    							}
    							// Processamento: valorTotal, receitaDiaria 
    							valorTotal=valorCircuito*tempo
    							
    							lucroLocacao=lucroLocacao+(valorTotal*0.7)
    							
    							escreva("O valor dessa locação é: ",valorTotal)
    							escreva("\nDeseja cadastrar outra locação?\n1 - Sim\n2 - Não")
    							leia(resposta)
    							
    						}enquanto(resposta==1)
    						
   						retorne lucroLocacao
				}
				
		
		funcao atualizarDia(caracter S[] , cadeia M[] , cadeia C[] , real V[], inteiro Q[]){

			inteiro I
			
			para(I=0 ; I<15 ;I++){
				
				Q[I] = 0
				
					
				se(S[I]=='A'){
					
					escreva("\n\nKart " , I+1 ," não foi devolvido no fim do dia")
					Q[I]=1
					
					}
					
				escreva("\n\n",I," ",Q[I])
				
				}
			
			
			}
		funcao ganhosKartMais(real V[] , inteiro C[]){
			
			inteiro I,G
			real ganhoMaior=0.0,ganho
			
			para(I=0 ;I<15 ;I++){
				
				ganho = V[I]*C[I]
				se(ganhoMaior<ganho){
					
					ganhoMaior=ganho
					G=I
					
					}
				
				}
			
			
			}

	
	funcao inicio(){

			
	cadeia  corKart[15], modeloKart[15]
     inteiro I, escasso[15], opcao, quantasVezesLocado[15]
     real  valorDeLocacao[15], valorManutencao = 0.0
     real lucroLocacao = 0.0, lucroDiario=0.0, valorCircuito=200.0
     caracter Status[15], manutencao[15]
     
		para(I=0 ;I<15 ;I++){

			modeloKart[I]="----------"
			corKart[I]="-----"
			valorDeLocacao[I]=0.0
			Status[I]='L'
			escasso[I]=0
			manutencao[I]='L'
			quantasVezesLocado[I]=0
		
		}
		faca{
			
			faca{
				
			escreva("\n1 - Cadastrar um kart")
			escreva("\n2 - Listar karts disponíveis")
			escreva("\n3 - Listar karts locados")
			escreva("\n4 - Listar karts em manutenção")
			escreva("\n5 - Atualizar dados do kart")
			escreva("\n6 - Alugar um kart")
			escreva("\n7 - Devolver um kart")
			escreva("\n8 - Kart que mais gerou ganhos")
			escreva("\n9 - Receita e lucro do dia, considerando karts locados")
			escreva("\n10 - Locação de circuito")
			escreva("\n11 - Atualizar dia")
			escreva("\n12 - Sair do programa")
			escreva("\nEscolha uma opção: ")
			
			leia(opcao)

      

			se(opcao <1 ou opcao >12){
				
				limpa()
				escreva("\nERRO")
				
				}
			}enquanto(opcao <1 ou opcao >12)
			
			se(opcao == 1){
				
				cadastrarKart(modeloKart, corKart, valorDeLocacao, Status)
				
			}senao se(opcao ==2){

				listarKartsDisponiveis(modeloKart, corKart, valorDeLocacao, Status)

				
			}senao se(opcao ==3){

				listarKartsLocados(Status, modeloKart)

			}senao se(opcao == 4){

				listarKartsManutencao(manutencao, modeloKart)

			}senao se(opcao == 5){

				 menuDeAtualizacao(valorDeLocacao, modeloKart, Status, manutencao, corKart)
				
			}senao se(opcao == 6){
				
				alugarKart(valorDeLocacao, modeloKart, Status, manutencao, quantasVezesLocado, corKart)
				
			}senao se(opcao == 7){
				
				retornar_kart(corKart, modeloKart, Status)
				
			}senao se(opcao == 8){
				
				ganhosKartMais(valorDeLocacao, quantasVezesLocado)
				
			}senao se(opcao == 9){
				
					lucroDiario=receitaLucroDia(quantasVezesLocado, valorDeLocacao, lucroDiario)
					escreva("O lucro diário é: ",lucroDiario)
					
			}senao se (opcao ==10){
				
					locacaoCircuito(lucroLocacao, valorCircuito)
					
			}senao se(opcao == 11){
				
				atualizarDia(Status, modeloKart, corKart, valorDeLocacao, quantasVezesLocado)
				
				}
				
	}enquanto(opcao!=12)
	}
}
