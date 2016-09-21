puts "Bem vindo ao jogo da adivinhação"
puts

puts "Qual é o seu nome?"
nome = gets

puts
puts

puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto entre 1 e 200..."
numero_secreto = 175

puts "Escolhido?... Adivinhe o numero"

puts
puts

puts "Tentativa 1"
puts "Entre com o numero:"
chute = gets 

puts "Será que acertou? Você chutou " + chute

puts chute.to_i == numero_secreto
#puts "175" == 175 #false
#puts "175" == "175" #true
#puts "175".to_i == 175 #true
