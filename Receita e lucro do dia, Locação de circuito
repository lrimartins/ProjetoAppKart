programa {
	        // 9. Receita e lucro do dia, considerando karts locados
	      //10. Locação de circuito-
	    //Entrada: quantos karts foram locados, custo total, se a pista foi alugada e valor do aluguel dela.  
    // Processamento: se ao fim do dia o kart não for devolvido, mais 30% sobre o aluguel do kart. Calcular o lucro.
  // saída: Valor total da receita, custo e receita


	//Função para cacular a receita
	funcao real Receita(inteiro QK,real ValorC){
		//Declaração de variável

		//Valor adicional, se os karts não forem devolvidos
		inteiro ValorAdisional=0
  		real valor

		//Caso os karts não forem devolvidos e a pista não for alugada
  		se(ValorAdisional == 1 e ValorC==0.0 ){
  		//Calcular
  		
  		 valor = 85.0 * QK * 1.30 
  		 //*1000:e para simula o valor do karte
  		
  		}

  		//Caso os karts não forem devolvidos e a pista for alugada
  		senao se(ValorAdisional == 0 e ValorC !=0.0){
  			
  			 valor = 1.70 * (85.0 * QK * 1.30 +ValorC)
  			  //*1000:e para simula valor do karte
  			}
  		
  		senao{
  			
  			valor = 85.0 * QK 
  			 //*85:e para simula valor do karte
  			}

		retorne valor
  			
	}
	
	
	funcao real Lucro(real ReceitaT ,real CustoT){
 		real LucroTotal
 		 
 		LucroTotal = ReceitaT - CustoT
 		retorne LucroTotal
	}
	

  funcao inicio() {
  	//Declaração e inicialização das variáveis
  	real ReceitaTotal=0.0 , ValorLocacaoC=0.0 , LucroTotal , Custo
  	
   	inteiro QuantidadeKat , R

   	//Para saber quantos kart foram alugados
   	escreva("Qual foi a quantidade de kats alugados? : ")
   	leia(QuantidadeKat)

	//Para verificar se o circuito foi alugado ou não
   	escreva("O circuito foi locado ? :(1 sim e 2 nao)")
   	leia(R)
   	
   		//se Sim
		se(R==1){
			
   	//Valor que foi alugado
   	escreva("Qual é o valor da locação do circuito? : ")
   	leia(ValorLocacaoC)
   	
		}
   	//Para cacula a Receita total
	ReceitaTotal=ReceitaTotal+Receita(QuantidadeKat,ValorLocacaoC)
	

   	//Para falar qual foi custo total do dia
	escreva("Qual foi o custo total do dia ?: ")
	leia(Custo)

   	//Cacular o Lucro
   	LucroTotal= Lucro(ReceitaTotal,Custo)

	//Mostrar a receita total ,custo e o lucro total
   	escreva("Receita de hoje foi :" , ReceitaTotal)
   	
	escreva("\nCusto de hoje foi :" , Custo)
	
  	escreva("\nLucro de hoje foi :" , LucroTotal)
    
  }
}

