programa
{
	

		funcao MenuDeAtualizacao(real V[] ,cadeia M[],caracter A[],caracter m[]){
		//Decaração de variaveis
		
		//Para contole do Vetores
		inteiro I
		
		//Para escolhas 
		caracter R

		//Para sai somete se o usuario quiser
		faca{
			
			//Se Usuario Ser não for o Kart desejado para atualiza
			faca{
			
				//Para cado a pessoa digita uma numero não desejado 
				faca{
				
					//Para Mostra o Valro o Modelo de todos dos Kart
					para(I=0 ; I<15 ;I++){
					
						//*I+1* por comesa em 0 é não em 1
					
						escreva("\n\nModelo do ", I+1 ,"º Kart : " ,M[I])
					
						escreva("\n\nValor do ", I+1 ,"º Kart :",V[I],"$")

						escreva("\n\nEstado de manutenção do Kart:",m[I])
						
						}
					
					//Para ler qual Kart que
					escreva("\nQual Kart goataria de atualisa os Dados : ")
					leia(I)
				
					//Por comesa em o e não em 1
					I--
				
					//Ser for digitado valor um valido
					se(I<0 ou I>14){
				
						limpa()
						escreva("Numero Imvalido\n\n")
				
					}
		
			}enquanto(I<0 ou I>14)//Para cado a pessoa digita uma numero não desejado 

				//Fica repetido ate o usuaruo digita um valor valido
				faca{
				
					limpa()
					//Mostra o modelo novamente para o usuario
					escreva("Modelo : " , M[I])
					escreva("\n\nValro : " , V[I],"$")
					escreva("\n\nEstado de manutenção do Kart:",m[I])
				
					//Para confima 
					escreva("\n\nEste o Kart desejado ?\n(S) Sim (N) Não (E)Sai:")
					leia(R)

					//Ser fo digitado um valor não desejado
					se(R!='S' e R!='N' e R!='E'){
					
						limpa()
						escreva("\nLetra limvalida")
			
						}
			
					}enquanto(R!='S' e R!='N'e R!='E')//Fica repetido ate o usuaruo digita um valor valido
				
				limpa()
					
				}enquanto(R =='N')//Se Usuario Ser não for o Kart desejado para atualiza
		
			//Vai Por Porgrama de atualisaOsDados
			se(R =='S'){
				
				AtualisaOsDados(V,M,I,m)
				
				
				}
			
			//Senao (Se for o E de Sai )voutra para o menu
			senao{
				
				limpa()
				escreva("Saindo do\n\n")
				
				}

			}enquanto(R!='E')//Para sai somete se o usuario quiser
			
		}
		
	funcao AtualisaOsDados(real V[] ,cadeia M[],inteiro I ,caracter m[]){
		
		//Decaração de varial
		
		//Varial de Repostra
		caracter R

		//Limpa a tela ante de exetuta o porgama
		limpa()
		
		//So sai ser o usuario escolhe sai
		faca{
			
			//Ser a repostra for errada
			faca{
				
				//Modatra os modelo e valor do Kart
				escreva("Modelo do Kart",I+1,":",M[I])
				escreva("\n\nValor do Kart",I+1," :",V[I],"$")
				escreva("\n\nEstado de manutenção do Kart:",m[I])

				//Para o usuario  muda os dado do Kart
				escreva("\nQual dos dado que altera\n(M)Modelo (V)Valor (A)Estado de Manutenção (E)Sai\n:")
				leia(R)
				
				//Ser a Respostra for invalida
				se(R!='M' e R!='V' e R!='E' e R!='A'){
					
					limpa()
					escreva("Letra invalida\n\n")
					
					}
		
				}enquanto(R!='M' e R!='V' e R!='E' e R!='A')//Ser a repostra for errada

			//Ser for para atualiza o Modelo
			se(R=='M'){	
					
				limpa()
				escreva("\nQual é modelo atualizado:")
				leia(M[I])
				
				}
				
			//Ser por para atualiza o valor do Kart
			senao se(R=='V'){		
				
				escreva("\nQual é novo valor:")
				leia(V[I])
				
				
				}

			//Se for para muda os estado do kart de (U)usavel para (M)manutensão e vise veso
			senao se(R=='A'){

				//De usavel para manuteção
				se(m[I]=='U'){
					
					limpa()
					escreva("Estado mudado de usável para manuteção")
					m[I]='M'
					
					}
				//De Manuteção para usavel
				senao{
					limpa()
					escreva("Estado mudado de manuteção para usável ")
					m[I]='U'
					
					}	
				}
			
			}enquanto(R!='E')//So sai ser o usuario escolhe sai
			
		}

		funcao listarKartsLocados(caracter s[], cadeia modelokart[]){
			inteiro i
			
			para(i=0; i<15; i++){
			se(s[i] == 'L'){	

				escreva("Kart ", i+1, " ", modelokart[i], " está Locado\n")
				//colocar contador de numeros na funcao do gabriel para eu que possa pegar a posição deles

			}senao se(s[i] != 'L'){	

				escreva("Kart ", i+1, " não está disponivel\n")
			}
				
		}
			
			
		}
		funcao listarKartsManutencao(caracter s[], cadeia modelokart[]){
			inteiro i
			
			para(i=0; i<15; i++){
			se(s[i] == 'M'){	

				escreva("Kart ", i+1, " está em manutenção\n")
				//colocar contador de numeros na funcao do gabriel para eu que possa pegar a posição deles
			}senao se(s[i] == 'L'){	

				escreva("Kart ", i+1, " está disponivel\n")

			}
			
	}
	
}
		
	funcao teste() {

    cadeia corkart[15], modelokart[15]
    inteiro I,espaco[15]
    real valordeLocacao[15], valorManutencao = 0.0
    caracter Status[15],R

	para(I = 0 ;I < 15; I++){

		modelokart[I]="----------"
		corkart[I]="-----"
		valordeLocacao[I]=0.0
		Status[I]='L'
		espaco[I]=0
		
}

    faca{
	para(I=0; I < 15; I++){

		se(modelokart[I]=="----------" e Status[I]=='L'){

			escreva("\nEspaço ",I+1 ,"Livre\n ")
			espaco[I]=0
			
			}
		
	}
	faca{

		escreva("\nQual espaço para cadastar: ")
		leia(I)
		
		I--
		
		se(I < 0 ou I > 15){
			
			escreva("\nInvalido\n")
			
			}

  		}enquanto(I < 0 ou I > 15)

  	
		escreva("O modelo do kart é : ")
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
		
    			escreva("Gotaria de continua?(S)sim(N)não: ")
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

	
	funcao inicio()
	{

			
	cadeia  corkart[15], modelokart[15]
     inteiro I,escaso[15],opcao
     real valordeLocacao[15], valorManutencao = 0.0
     caracter Status[15],Manutecao[15]
     
	para(I=0 ;I<15 ;I++){
		
		modelokart[I]="----------"
		corkart[I]="-----"
		valordeLocacao[I]=0.0
		Status[I]='L'
		escaso[I]=0
		Manutecao[I]='L'
		
		}
		
			faca{
			escreva("\n1 - Cadastrar um Kart")
			escreva("\n2 - Lista Karts disponiveis")
			escreva("\n3 - Listar Karts locados")
			escreva("\n4 - Listar Karts em manutenção")
			escreva("\n5 - Atualizar dados do Kart")
			escreva("\n6 - Alugar um Kart")
			escreva("\n7 - Devolver um Kart")
			escreva("\n8 - Kart que mais gerou ganhos")
			escreva("\n9 - Receita e lucro do dia, considerando karts locados")
			escreva("\n10 - Locação de circuito")
			escreva("\n11 - Atualizar dia")
			escreva("\n12 - Sair do programa")
			escreva("\nEscolha uma opção:")
			leia(opcao)

			se(opcao <1 ou opcao >12){
				
				limpa()
				escreva("\nERRO")
				
				}
			}enquanto(opcao <1 ou opcao >12)
			
			se(opcao == 1){
				
				
			}senao se(opcao ==2){
				
			}senao se(opcao ==3){

				listarKartsLocados(Status, modelokart)

			}senao se(opcao == 4){

				listarKartsManutencao(Status, modelokart)

			}
			senao se(opcao == 5){

				 MenuDeAtualizacao(valordeLocacao,modelokart,Status,Manutecao)
				
				}
	}
}
