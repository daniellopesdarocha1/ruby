def da_boas_vindas
    puts
    puts "        P  /_\  P                              "
    puts "       /_\_|_|_/_\                             "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhacao!"
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        "
    puts "        \__|_|__/                              "
    puts
    puts "Qual eh o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Comecaremos o jogo para voce, #{nome}"
    nome
end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end

def pede_dificuldade
	puts "Qual a dificuldade que deseja? (1 facil, 5 dificil)"
	dificuldade = gets.to_i
end

def sorteia_numero_secreto (dificuldade)
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
	puts "Escolhendo um numero secreto entre 1 e #{maximo}..."
	sorteado = rand(maximo) +1
	puts "Escolhido... Adivinhe o numero."
	#return sorteado
	sorteado # a ultima instrução de uma função é o que será retornado
end

def pede_um_numero (chutes, tentativa, limite_de_tentativas)
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Chutes ate agora: " + chutes.to_s
	puts "Entre com o numero:"
	chute = gets.strip
	puts "Sera que acertou? Voce chutou " + chute
	chute.to_i
end

def verifica_se_acertou (numero_secreto, chute)
	acertou = chute == numero_secreto

	if acertou
		ganhou
		return true
	end

	maior = numero_secreto > chute
	if maior
		puts "O numero secreto e maior!"
	else
		puts "O numero secreto e menor!"
	end
	false #retorno da função
end

def joga (nome, dificuldade)
	pontos_ate_agora = 1000
	limite_de_tentativas = 5
	chutes = []

	for tentativa in 1..limite_de_tentativas

		chute = pede_um_numero chutes, tentativa, limite_de_tentativas
		chutes << chute

		if nome == "Daniel"
			ganhou

			break
		end

		pontos_a_perder = (chute - numero_secreto).abs / 2.0 #para retornar float deve se dividir com a casa decimal.
		pontos_ate_agora -= pontos_a_perder

		if verifica_se_acertou numero_secreto, chute
			break
		end
	end

	puts "Voce ganhou #{pontos_ate_agora} pontos."

	#unless é um if de dupla negação
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

loop do
	joga nome, dificuldade
	if nao_quer_jogar?
		break
	end
end
