# Sinal para comentar uma linha.

# puts - Serve para imprimir algo na tela do console.

puts("Ola")
puts "Mundo" 
puts('Hello')
puts 120

# length — É usado para contar a quantidades de caracteres.
puts( 'Campus Code'.length() )
# => 11  resultado

# upcase — e usado para deixar as letras maiúsculas.
puts( 'Campus Code'.upcase() ) 
# => "CAMPUS CODE" resultado

# downcase — Para deixar todos os caracteres em minusculo.
puts( 'Campus Code'.downcase() ) 
# => "campus code" resultado

# to_s() — Ele converte numero para string.
nome = 'Joaquim'
puts("Meu nome tem #{nome.length().to_s()} caracteres")
# => Meu nome tem 7 caracteres resultado.

# gets — recebe dados do usuário é tarefa do comando.
puts('Qual o seu nome?')
# nome = gets() digitar a resposta.
puts("Meu nome é #{nome}")
puts("Meu nome tem #{nome.length().to_s()} caracteres")
# OBS: gets em Ruby guarda todo o texto digitado, inclusive o Enter, que é reconhecido pelo código \n no final do texto.
# EX:
# puts('Qual o seu nome?')
# nome = gets()
# => “João\n”
# Solução para limpar a string com seu nome desse caractere você pode usar o método chomp(), que “come” essa marcação.
puts('Qual o seu nome?')
#nome = gets().chomp()
# => “João”

# As operações numéricas mais comuns como +, -, / e * 
# numero = 8
# numero = numero + 6 
# # soma o valor antigo (8) com 6 e guardamos novamente
# # na variável que agora vale 14
# numero = numero / 2 # 7

# to_i() — Converte números em string para números, nesse caso para inteiros.
puts('Digite um número inteiro: ')
# numero = gets.to_i()
# # => 1
# # Agora temos um número
# numero = numero + 1
# # => 2

# to_f() — Converte números em Floats (Decimais).
puts('Digite um número decimal: ')
# numero = gets.to_f()
# # => 10.0
# # Agora temos um número
# numero = numero + 1
# # => 11.0

#complemento para calculos.
# 10 % 2 # resto da divisão
# 10.positive?() # informa se o valor é positivo
# -1.negative?() # informa se o valor é negativo
# 1.odd? # informa se o valor é impar

# Tipos de dados - Booleans
1 < 2 # true
1 > 2 # false
1 == 2 # false
1 != 2 # true

# Outros operadores lógicos são o E && e o OU ||
1 > 2 || 1 < 2 
# => true
1 != 2 && 1 == 2
# => false
# OBS:Os operadores && e || operam em “curto circuito”. Isso significa que se em uma expressão com && a primeira avaliação (da esquerda) for falsa, a segunda não será avaliada (por que não há necessidade). Já no caso do ||, a segunda expressão só será avaliada se a primeira for falsa. 
# Vamos aos exemplos:
10 > 5 && 8 < 6 # false
10 == 10 || 10 == "onze" # true 

# Arrays
alunos = ['André', 'Pedro', 'Carolina']
# OBS: em Ruby pode se atribuir em uma Array qualquer elmento.
# dados = ['André', 1, true]
alunos << 'Laura' # adiciona o valor "Laura" na última posição do array alunos.
# Outros Metodos.
# pop() — para remover o último objeto.
# alunos.pop() # remove o último valor do array, nesse caso, “Laura”
# alunos[1] = 'Joaquim' # muda o valor da posição 1 do array de "Pedro" para "Joaquim"
# alunos.first() # retorna o valor da primeira posição do array
# alunos.last() # retornar o valor da última posição do array
# alunos.length() # retorna a quantidade de elementos do array
puts(alunos)

# switch - onsiste em definir a variável que será avaliada, seguida das condições e respostas
# Ex:
nota = 7
case nota
when 0
  puts 'Você tirou zero! Precisa melhorar…'
when 1..4
  puts 'Reprovado… precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 6..9
  puts 'Parabéns, você foi aprovado.'
else
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
end 
# OBS: 1..4 estamos orientando que nota seja comparada a todos os valores entre 1 e 4.


