def inicio
    puts "------------------------------------------------------------------------------"
    puts 'Bem-vindo ao jogo da adivinhação!'
    puts "------------------------------------------------------------------------------"
    sleep(1)
    puts 'Qual é seu nome?'
    puts "\n"

    #pega o nome do usuário
    nome = gets

    #4 pulos de linha
    puts "\n\n\n\n"

    #chama o nome do usuário
    puts 'Começaremos o jogo para você, ' + nome

    puts "\n"

    nome
end

def pede_dificuldade
    puts "Para nossa nova partida, qual será sua escolha de dificuldade?"
    sleep(1)
    puts "------------------------------------------------------------------------------"
    puts "(1) Muito Fácil (2) Fácil (3) Normal (4) Difícil (5) Muito Difícil"
    sleep(1)
    puts "------------------------------------------------------------------------------"
    puts "Escolha!"
    dificuldade = gets.to_i
end

def sorteio_numerosecreto(dificuldade)

    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end

    puts "Estamos selecionando um número secreto entre 0 e #{maximo}..."
    numero_secreto = rand(maximo) + 1
    puts "Número selecionado, tente adivinhar!"
    numero_secreto

end

def pede_numero
    
    puts 'Entre com o número escolhido:'

    #pega o número escolhido pelo usuário
    tentativa = gets

    puts "\n"

    #chama o chute do usuário
    puts 'Será que acertou? Você chutou: ' + tentativa

    puts "\n"
    tentativa.to_i

end

def verifica numero_secreto, tentativa, nome
    
    if numero_secreto == tentativa
        puts "Parabéns! Você acertou, #{nome}"
        return true
    end
    
        maior = numero_secreto > tentativa
        if maior
            puts "Errou! O número secreto era maior, #{nome}"
            return false
        else
            puts "Errou! O número secreto era menor, #{nome}"
            return false
        end
    
    verifica
end

nome = inicio
dificuldade = pede_dificuldade
numero_secreto = sorteio_numerosecreto dificuldade
limite_tentativas = 5
ultimo_escolhido = 0

for rodadas in 1..limite_tentativas

    puts "\n"

    puts "--------> Rodada #{rodadas}" " de #{limite_tentativas}"

    puts "\n"

    puts 'O último chute foi: ' + ultimo_escolhido.to_s

    puts "\n"

    tentativa = pede_numero
    ultimo_escolhido = tentativa

    verifica numero_secreto, tentativa, nome
    break if numero_secreto == tentativa

        
    puts "\n"

    puts "------------------------------------------------------------------------------"

end