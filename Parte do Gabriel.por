programa
{/*A opção kart que mais gerou ganhos deve imprimir todas as informações sobre o kart
mais locado durante a execução do programa.



entrada:1.Quantas vez foi alugado todos os kart,valor do kart
	   

prosesamento:1.Reseita=Valor do aluge do Kart * quantas vaz foi alugrado


saida:1.Quan o KaT que gero mais lucor

*A opção Atualizar dados do Kart deve permitir ao usuário atualizar um ou todos os
dados do kart escolhido. Quando o dado atualizado muda de “em manutenção” para
usável, o valor da manutenção atual deve ser agregado ao valor anterior.

entrada:Dados antigos do Kart

prosesamento:Alteração do dados como modelo, valor do alugrel,

saida:Dados atualisado do cartes
*/

	//Esta funcao de ser subitituida pela parte que comtra quantas vas cada kart foi alugrado e o seu valor do alugre
	funcao DigiteValorAlugel(inteiro I , real &ValorAK ,real &QAlu){
		
		limpa()
		
		escreva("Digite ", I ,"º valor do aluguel do kat1 :")
		leia(ValorAK)
		
		escreva("Quantas ", I ,"º vaz ele foia alugrado :")
		leia(QAlu)
		
		}
		
	//Para calcula o valor da reseita gerado por cada Kart
	funcao real ReseitaKart ( real &ValorAK ,real &QAlu){
		
		real Reseita
		
		Reseita = ValorAK * QAlu
		
		retorne Reseita
		
		}
	funcao DadosdoKart(inteiro I){
		
		escreva("Chamar os dados do Kart",I)
		
		}
	funcao inicio(){

		//Decaração de variaveis
		inteiro I,IM=0,R,Kart[15]
		real ValorAK=0.0,QAlu=0.0,ReseitaK[15],Maior=0.0

		escreva("Qual opição se que ?")
		
		escreva("\n(1)nVe qual caro teve mais Renda")
		
		escreva("\n(2)Muda dados do Kart\n:")		
		
		leia(R)

		se(R==1){
			
			//Para pasar por todos os Kart
			para(I=1 ; I<16 ;I++){
			
				DigiteValorAlugel(I , ValorAK , QAlu)
			
				//Para regita as reseitas de cada Kart
				ReseitaK[I]=ReseitaKart(ValorAK , QAlu)

				//Para regita qual e o maior
				se(ReseitaK[I]>Maior){
				
					Maior=ReseitaK[I]
					//Regita qual foi o maior
					IM=I
				}
				
			}
		}
		
		senao se(R==2){
			escreva("Qual que altera os dados de (1)um unico kat ou (2)e todos ? ")
			leia(R)
			
			se(R==1){
				escreva("Qual Kart?")
				leia(I)
				
				DadosdoKart(I)
				
				}
			
			}
		
		limpa()
		
		escreva("O Kart que teve mais lucro Reseita :",IM,"º")
		escreva("\nComo Reseita :",Maior)
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */