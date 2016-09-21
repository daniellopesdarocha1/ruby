def da_boas_vindas
	puts "\nBem vindo ao jogo da adivinhação\n"
	puts "Qual é o seu nome?"
	nome = gets

	puts "\n\n\n"
	puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
	puts "Escolhendo um número secreto entre 1 e 200..."
	numero_secreto = 175
	puts "Escolhido... Adivinhe o numero"
	#return numero_secreto
	numero_secreto # a ultima instrução de uma função é o que será retornado
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o numero:"
	chute = gets 
	puts "Será que acertou? Você chutou " + chute

	acertou = chute.to_i == numero_secreto

	if acertou
		puts "Acertou!"
		break
	else
		maior = numero_secreto > chute.to_i
		if maior
			puts "O número secreto é maior!"
		else
			puts "O número secreto é menor!"
		end
	end
end
