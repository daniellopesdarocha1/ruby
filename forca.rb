def da_boas_vindas
    puts "Bem vindo ao jogo da forca"
    puts "Qual e o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Comecaremos o jogo para voce, #{nome}."
    nome
end

def escolhe_palavra_secreta
    puts "Escolhendo uma palavra secreta..."
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    nao_quer_jogar = gets.strip
    nao_quer_jogar = nao_quer_jogar == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n\n\n"
    puts "Erros ate agora: #{erros}"
    puts "Chutes ate agora: #{chutes}"
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Sera que acertou? Voce chutou #{chute}"
    chute
end

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta

    erros = 0
    chutes = []
    pontos_ate_agora = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        chutes << chute
    end

    puts "Voce ganhou #{pontos_ate_agora} pontos."
end

nome = da_boas_vindas
palavra_secreta = escolhe_palavra_secreta

loop do joga nome
    if nao_quer_jogar?
        break
    end
end