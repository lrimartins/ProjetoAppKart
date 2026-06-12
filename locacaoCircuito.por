programa{
   /*Locação de circuito – O valor de locação do circuito deve previamente ser cadastrado.
Caso o circuito seja locado, haverá o acréscimo de 70% do valor de sua locação à
receita diária. */
//E LER QUANTAS HORAS FOI LOCADO
//P pegar o valor base do circuito multiplicar pelo tempo de uso, calcular a receita diária
//S valor final da locação 
funcao real locacaoCircuito(real receitaDiaria, real valorCircuito){
    real tempo, valorTotal
    inteiro resposta
    faca{
    escreva("Digite o tempo de locação em horas")
    leia(tempo)
    // validar entrada (evitar tempo negativo)
    enquanto(tempo<0){
      escreva("Opção inválida!Digite novamente: ")
      leia(tempo)
    }
    //processamento valortotal, receitaDiaria 
    valorTotal=valorCircuito*tempo
    receitaDiaria=receitaDiaria+(valorTotal*0.7)
    escreva("O valor dessa locacao é: ",valorTotal)
    escreva("\nDeseja cadastrar outra locação?\n1-Sim\n2-nao")
    leia(resposta)
    }enquanto(resposta==1)
    retorne receitaDiaria


  }
  funcao inicio(){
    real receitaDiaria=0.0, valorCircuito=200.0
    locacaoCircuito(receitaDiaria,valorCircuito)


  }
}
