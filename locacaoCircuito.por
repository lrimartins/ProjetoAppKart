programa {
   /*Locação de circuito – O valor de locação do circuito deve previamente ser cadastrado.
Caso o circuito seja locado, haverá o acréscimo de 70% do valor de sua locação à
receita diária. */
//E Cadastrar o valor da locação. QUANTAS HORAS FOI LOCADO
//P pegar o valor base do circuito multiplicar pelo tempo de uso
//S valor final da locação 
  funcao locacaoCircuito(){
    real valorBase, tempo, valorTotal
    inteiro resposta
    escreva("Digite o valor da locação do circuito por hora: ")
    leia(valorBase) 
    escreva("Digite o tempo de locação em horas")
    leia(tempo) // validar entrada (evitar tempo negativo)
    //processamento valortotal = valor do circuito × tempo
    valorTotal=valorBase*tempo
    escreva("O valor final da locacao é: ",valorTotal)
    //aqui um loop
    escreva("\nDeseja cadastrar outra locação?\n1-Sim\n2-nao")
    leia(resposta)
    se(resposta==1){
      escreva("Digite o tempo de locação em horas")
      leia(tempo)
      valorTotal=valorTotal+(valorBase*tempo)
      escreva("O valor final da locação é:",valorTotal)
      escreva("Deseja cadastrar outra locação?\n1-Sim\n2-nao")
      leia(resposta)
    }

  }
  funcao inicio() {
     locacaoCircuito()
    
  }
}
