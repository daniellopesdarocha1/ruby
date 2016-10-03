def da_boas_vindas
	puts "Bem vindo ao jogo da adivinhacao"
	puts "Qual e o seu nome?"
	nome = gets.strip #strip apaga os espaços em branco da string

	puts "\n\n\n"
	puts "Comecaremos o jogo para voce, " + nome
end

def sorteia_numero_secreto
	puts "Escolhendo um numero secreto entre 1 e 200..."
	sorteado = rand(200)
	puts "Escolhido... Adivinhe o numero"
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
		puts "Acertou!"
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


da_boas_vindas
numero_secreto = sorteia_numero_secreto

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes << chute
	pontos_a_perder = (chute - numero_secreto).abs / 2.0 #para retornar float deve se dividir com a casa decimal.

	pontos_ate_agora -= pontos_a_perder

	if verifica_se_acertou numero_secreto, chute
		break
	end
end

puts "Voce ganhou #{pontos_ate_agora} pontos."

#unless é um if de dupla negação
