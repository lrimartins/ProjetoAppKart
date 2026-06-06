programa
{
/*
5. Atualizar dados do Kart(Gabriel)

entrada : dados dos Kart
prosesamento : Mudasa dos dados deo Kartes
sai : Dados Atualisaddos

6. Alugar um Kart(Gabriel)

entrada:Dados dos Kart
prosesamento:Muda de estrado alugrado para livre
Saida:O carte estra alugrado

*/

	//Esta funcao de ser subitituida pela parte que comtra quantas vas cada kart foi alugrado e o seu valor do alugre
	funcao AtualisaOsDados(real V[] ,cadeia M[],inteiro I,caracter A[]){
		
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
				escreva("\n\nEstado de manutenção do Kart:",A[I])

				//Para o usuario  muda os dado do Kart
				escreva("\nQual dos dado que altera\n(M)Modelo (V)Valro (A)Estado de Manutenção (E)Sai\n:")
				leia(R)
				
				//Ser a Respostra for imvalida
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
				se(A[I]=='U'){
					
					limpa()
					escreva("Estado mudado de usável para manuteção")
					A[I]='M'
					
					}
				//De Manuteção para usavel
				senao{
					limpa()
					escreva("Estado mudado de manuteção para usável ")
					A[I]='U'
					
					}	
				}
			
			}enquanto(R!='E')//So sai ser o usuario escolhe sai
			
		}


		
	funcao MenuDeAtualizacao(real V[] ,cadeia M[],caracter A[]){
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

						escreva("\n\nEstado de manutenção do Kart:",A[I])
						
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
					escreva("\n\nEstado de manutenção do Kart:",A[I])
				
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
				
				AtualisaOsDados(V,M,I,A)
				
				
				}
			
			//Senao (Se for o E de Sai )voutra para o menu
			senao{
				
				limpa()
				escreva("Saindo do\n\n")
				
				}

			}enquanto(R!='E')//Para sai somete se o usuario quiser
			
		}
		
	funcao AlugraKart(real V[],cadeia M[],caracter H[]){
		
		inteiro I

		caracter R
		
		limpa()
		faca{
			para(I=0 ; I<15 ; I++){

				
				//Modelo TesteE deve ser tocado por que for sibolisa espaso livre usado livre
				se(H[I]=='L' e M[I]!="----------" ){
					
					escreva("\n\nModelo do ",I+1,"º Kart:",M[I])
					escreva("\n\nValor do ",I+1,"º Kart:",V[I])
					
					}
					
				}		
			
				escreva("\n\nQual Kart gotaria de alugra hoje?(16)Sai")
				leia(I)
				I--
				
			se(I!=15){
				se(I<0 ou I>15  ou H[I]!='L' ou M[I]=="----------" )
				{
					limpa()
					escreva("\nNumero invalido \n")
				
				
					}

				}
				
			}enquanto(I<0 ou I>14 ou H[I]!='L' ou M[I]=="----------" )

			limpa()
			
			faca{
				escreva("\nEste e o Kart desejado?\n\n")
			
				escreva("\nModelo :",M[I])
			
				escreva("\nValro :",V[I],"$")	
			
				escreva("\n\n(S)Sim (N)não (E)Sai \n:")	
				leia(R)

				se(R!='S' e R!='N' e R!='E'){
					
					limpa()
					escreva("\nLetra invalida")
				
				}
				
			}enquanto(R!='S' e R!='N' e R!='E')

			
		}	
		

	
	funcao inicio(){
		//Decaração de variavel
		
		//Menu
		caracter Escolha,AlugradoOuLivre[15],Manutecao[15]
		
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
			
			//Modelo de teste espasso vazio
			Modelo[I]="----------"

			//Para todos os Kart Comesa livre
			AlugradoOuLivre[I]='L'

			Manutecao[I]='U'
			
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
			
				MenuDeAtualizacao(Valor,Modelo,Manutecao)
			
			
				}
			senao se(Escolha =='A'){
				
				AlugraKart(Valor,Modelo,AlugradoOuLivre)
				
				}

		}enquanto(Escolha!='E')//Para o Porgra fica repetido ate o usuario quise sai

		
		limpa()
		escreva("Fim do Porgrama")
		
	}
	
}
