def da_boas_vindas
	puts "\nBem vindo ao jogo da adivinhação\n"
	puts "Qual é o seu nome?"
	nome = gets.strip #strip apaga os espaços em branco da string

	puts "\n\n\n"
	puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
	puts "Escolhendo um número secreto entre 1 e 200..."
	sorteado = 175
	puts "Escolhido... Adivinhe o numero"
	#return sorteado
	sorteado # a ultima instrução de uma função é o que será retornado
end

def pede_um_numero (chutes, tentativa, limite_de_tentativas)
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Chutes até agora: " + chutes.to_s
	puts "Entre com o numero:"
	chute = gets.strip
	puts "Será que acertou? Você chutou " + chute
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
		puts "O número secreto é maior!"
	else
		puts "O número secreto é menor!"
	end
	false #retorno da função
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes << chute

	if verifica_se_acertou numero_secreto, chute
		break
	end
end
