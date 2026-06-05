programa
{
/*
5. Atualizar dados do Kart(Gabriel)
entrada : dados dos Kart
prosesamento : Mudasa dos dados deo Kartes
sai : Dados Atualisaddos

6. Alugar um Kart(Gabriel)
*/

	//Esta funcao de ser subitituida pela parte que comtra quantas vas cada kart foi alugrado e o seu valor do alugre
	funcao AtualisaOsDados(real V[] ,cadeia M[],inteiro I){
		
		caracter R
		
		limpa()
		faca{
			faca{
				
				
				escreva("Modelo:",M[I])
				escreva("\n\nValor :",V[I])
			
				escreva("\nQual dos daod que altera\n(M)Modelo (V)Valro (E)Sai\n:")
				leia(R)
				
				se(R!='M' e R!='V' e R!='E'){
					limpa()
					escreva("Letra invalida\n\n")
					
					}
		
				}enquanto(R!='M' e R!='V' e R!='E')
			
			se(R=='M'){		
				
				escreva("\nQual é modelo atualizado:")
				leia(M[I])
				
				}
				
			se(R=='V'){		
				
				escreva("\nQual é novo valor:")
				leia(V[I])
				escreva(V[I])
				
				}
			
			}enquanto(R!='E')
		}


		
	funcao MenuDeAtualizacao(real V[] ,cadeia M[]){
		//Decaração de variaveis
		
		//Para contole do Vetores
		inteiro I
		
		//Para escolhas 
		caracter R

		
		faca{
			//Se Usuario Ser não for o Kart desejado para atualiza
			faca{
			
				//Para cado a pessoa digita uma numero não desejado 
				faca{
				
					//Para Mostra o Valro o Modelo de todos dos Kart
					para(I=0 ; I<15 ;I++){
					
						//*I+1* por comesa em 0 é não em 1
					
						escreva("\n\nModelo do ", I+1 ,"º Kart : " ,M[I])
					
						escreva("\n\nValor do ", I+1 ,"º Kart :",V[I])

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
					escreva("\n\nValro : " , V[I])
				
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
				
				AtualisaOsDados(V,M,I)
				
				
				}
			
			//Senao (Se for o E de Sai )voutra para o menu
			senao{
				
				limpa()
				escreva("Saindo do\n\n")
				
				}

			}enquanto(R!='E')
			
		}

	
	funcao inicio(){
		//Decaração de variavel
		
		//Menu
		caracter Escolha
		
		//Valor do aluge do Kart
		real Valor[15]

		//Varial de contole
		inteiro I

		//Modelo de cada carte
		cadeia Modelo[15]

		//Para peneche os vatores para teste
		para(I=0 ; I<15 ; I++){
			
			//\Valor teorico
			Valor[I]=1000.00 - (I * 10)
			
			//Modelo de teste
			Modelo[I]="Modelo Teste"
			
			}

		//Para o Porgra fica repetido ate o usuario quise sai
		faca{
			//Simula o Menu
			faca{
				//Para pesola escole qual função que 
				escreva("Goataria de (D)atualisa os dados ou (A)alugra um Kart (E)Sai: ")
				leia(Escolha)

				//se Digita um valor imvalido
				se(Escolha!='D' e Escolha!='A' e Escolha!='E'){
				
					limpa()
					escreva("Valor imvalido\n")
				
					}
					
			//Fica repitido ate valo fica alido
			}enquanto(Escolha!='D' e Escolha!='A' e Escolha!='E')

			//Se For Para atualiza os dados
			se(Escolha == 'D'){
			
				MenuDeAtualizacao(Valor,Modelo)
			
			
				}

		}enquanto(Escolha!='E')//Para o Porgra fica repetido ate o usuario quise sai

		
		limpa()
		escreva("Fim do Porgrama")
		
	}
	
}
