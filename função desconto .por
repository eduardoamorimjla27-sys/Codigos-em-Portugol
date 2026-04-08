programa {
  funcao inicio() {
    real num, desconto

    escreva("Digite o valor do produto: R$ ")
    leia(num)

    escreva("Digite o desconto: ")
    leia(desconto)
    
    real resultado = desconto(num,desconto)
    escreva("\nValor com desconto: R$ ",resultado)
  }
  funcao real desconto(real a, real b){
    real aux
    b = b/100
    aux = a * b
    a - aux
    real valor = a - aux
    retorne valor
  }
}
