def inicio
    puts "------------------------------------------------------------------------------"
    puts 'Bem-vindo ao jogo da adivinhação!'
    puts "------------------------------------------------------------------------------"
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

puts 'Estamos selecionando um número secreto entre 0 e 200...'
numero_secreto = 175

nome = inicio
limite_tentativas = 5
ultimo_escolhido = -1

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
