programa {
  funcao inicio() {
    cadeia lua
    votacao()
    }
    //Função 1

    funcao vazio votacao(){
    cadeia nome[2]
    inteiro num[2]
    inteiro votacao
    inteiro qtdvotos = 0
    inteiro voto1 = 0
    inteiro voto2 = 0
  
    //Pegar dados sobre candidatos
    escreva("\n--- Urna Eletronica ---\n")
    escreva("Digite o nome do primeiro candidato: ")
    leia(nome[0])
    escreva("Digite o número do candidato: ")
    leia(num[0])

    escreva("\n")

    escreva("Digite o nome do segundo candidato: ")
    leia(nome[1])
    escreva("Digite o número do candidato: ")
    leia(num[1])

    
    limpa()
    faca{

      se(nome[0] == nome[1] ou num[0] == num[1]){
      escreva("Número ou nome dos candidatos iguais!")
      pare
    }
          //ZERISMA
        escreva("\nVotos realizados: ", qtdvotos)

      escreva("\nCandidato: ",nome[0],", número: ",num[0])
      escreva("\nCandidato: ",nome[1],", número: ",num[1])
      escreva("\nDigite o número do candidato: ")
      leia(votacao)
       limpa()

       //Contabiliza os votos
      escolha(votacao){
        caso num[0]:
        voto1++
        escreva("Voto confirmado !\n")
        qtdvotos++
        pare

        caso num[1]:
        voto2++
        escreva("Voto confirmado !\n")
        qtdvotos++
        pare

        caso 123:
        resultado(voto1,voto2,nome)
        pare
        caso contrario: 
        escreva("Número invalido!\n")
        pare
        }
    }enquanto(votacao != 123)
    }
    
    //Função 2
    funcao vazio resultado(inteiro voto1, inteiro voto2, cadeia nome[]){
      escreva("Sessão de votação encerrada!\n\n")
      escreva("Candidato: ",nome[0]," || ",voto1," Votos!\n")
      escreva("Candidato: ",nome[1]," || ",voto2," Votos!\n")

      se(voto1 > voto2){
        escreva("\nCandidato: ",nome[0],", ganhou as eleições!!\n")
      } se(voto2 > voto1){
        escreva("\nCandidato: ",nome[1],", ganhou as eleições!!\n")
      } se(voto1 == voto2){
        escreva("\nCandidatos com votos empatados! Será necesssário um segundo turno!\n")
      }
    }
  }