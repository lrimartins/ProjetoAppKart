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

	funcao AtualisaOsDados(real V[] ,cadeia M[]){
		
		inteiro I
		faca{
			
			escreva("Qual Kart goataria de atualisa os Dados : ")
			leia(I)
			I--
			se(I<0 ou I>14){
				
				limpa()
				escreva("Numero Imvalido\n\n")
				
				}
		
		}enquanto(I<0 ou I>14)
		
		
		}

	
	funcao inicio(){
		caracter Escolha
		real Valor[15]
		inteiro I
		cadeia Modelo[15]

		para(I=0 ; I<15 ; I++){
			
			Valor[I]=1000.00
			Modelo[I]="Modelo Teste"
			
			}
		
		faca{
			
			escreva("Goataria de (D)atualisa os dados ou (A)alugra um Kart : ")
			leia(Escolha)
			
			se(Escolha!='D' e Escolha!='A'){
				
				limpa()
				escreva("Valor imvalido")
				
				}
		
		}enquanto(Escolha!='D' e Escolha!='A')

		se(Escolha == 'D'){
			
			AtualisaOsDados(Valor,Modelo)
			
			
			}
		
	}
	
}
