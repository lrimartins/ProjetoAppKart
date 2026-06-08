programa {
// Cadastrar um Kart  
//2. Listar Karts disponíveis
//A opção cadastrar kart deve armazenar os dados de modelo, cor do kart, valor de 
//locação, quantidade de vezes que foi locado, status do kart (usável ou em 
//manutenção), valor total gasto em manutenção (começa em 0) se está ou não locado. 
//A opção Listar karts disponíveis deve mostrar na tela as informações completas sobre 
//todos os karts cadastrados. Dados em branco devem ser ignorados. 


  funcao inicio() {
    cadeia cadastroDeKart, corkart, status, modelokart
    inteiro qntlocacao
    real valordeLocacao, valorManutencao = 0

    escreva("\nQual é o modelo do kart? ", modelokart)
    leia(cadastroDeKart)
    escreva("Qual é a cor do kart? ", corkart)
    leia(corkart)
    escreva("Qual é o valor de locação do kart? ", valordeLocacao)
    leia(valordeLocacao)
    escreva("Quantas vez o kart fo locado? ", qntlocacao)
    leia(qntlocacao)
    escreva("O kart está disponivel? ", status)
    leia(status)

    escreva("O modelo do kart é :\n", modelokart)
		escreva("\nCor do kart é : ", corkart)
		escreva("\nO valor da,locação é: ", valordeLocacao)
		escreva("\nQuantidade de vez que o kart foi locado é : ", qntlocacao)
		escreva("\nStatus do kart: ", status)

    

    

    
  }
}
