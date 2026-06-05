programa {
// Cadastrar um Kart  
//2. Listar Karts disponíveis
//A opção cadastrar kart deve armazenar os dados de modelo, cor do kart, valor de 
//locação, quantidade de vezes que foi locado, status do kart (usável ou em 
//manutenção), valor total gasto em manutenção (começa em 0) se está ou não locado. 
//A opção Listar karts disponíveis deve mostrar na tela as informações completas sobre 
//todos os karts cadastrados. Dados em branco devem ser ignorados. 
  funcao cadastarkart(){
    escreva("Modelo: ")
    leia(modelo[qntkart])
    escreva("corkar: ")
    leia(corkart)
    escreva("Valor locação ")
    leia(valordeLocacao)
  }


  funcao inicio() {
    cadeia cadastroDeKart, corkart, status
    inteiro qntlocacao
    real valordeLocacao, valorManutencao

    escreva("\nQual é o modelo do kart? ")
    leia(cadastroDeKart)
    escreva("Qual é a cor do kart? ")
    leia(corkart)
    escreva("Qual é o valor de locação do kart? ")
    leia(valordelocacao)
    escreva("Quantas vez o kart fo locado? ")
    leia(qntlocacao)
    escreva("O kart está disponivel? ")

    

    

    
  }
}
