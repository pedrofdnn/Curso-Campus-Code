# Exercicio de Concaternar.
nome = 'João'
idade = '30'
puts('Meu nome é ' + nome + ' e eu tenho ' + idade + ' anos de idade')

# Exercicio de impressão de listas.
alunos = ['André', 'Sophia', 'Laura']
notas = [5, 6, 8]

puts(" 
#{alunos[0]} tirou nota #{notas[0]} 
#{alunos[1]}   I tirou nota #{notas[1]}
#{alunos[2]} tirou nota #{notas[2]}
")

alunos = [
  { nome: 'pedro', nota: 8, materia: 'Artes' },
  { nome: 'Alberto', nota: 7, materia: 'Artes' },
  { nome: 'diego', nota: 8, materia: 'Artes' }
]

media = 10

alunos.each do |aluno|
  if aluno[:nota] >= media
    puts "#{aluno[:nome]} foi aprovado em #{aluno[:materia]}"
  else
    puts "#{aluno[:nome]} foi reprovado em #{aluno[:materia]}"
  end
end

# Explicação
# Iterando sobre o array:
# O método each permite percorrer cada elemento do array alunos. A cada iteração, a variável aluno conterá um hash com as informações de um aluno.
# Acessando os valores:
# Dentro do bloco do...end, você pode acessar os valores de cada aluno usando a sintaxe aluno[:chave], onde chave é o nome da chave (por exemplo, :nome, :nota, :materia).
# Comparando a nota com a média:
# A condição if aluno[:nota] >= media verifica se a nota do aluno é maior ou igual à média. Se for verdade, o aluno é aprovado; caso contrário, é reprovado.
# Imprimindo os resultados:
# A mensagem é formatada usando interpolação de strings, permitindo inserir os valores das variáveis diretamente na string.

#Switch
nota = 11
case nota 
when 0
  puts 'Você tirou zero! Precisa melhorar…'
when 1..4
  puts 'Reprovado… precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 6..9
  puts 'Parabéns, você foi aprovado.'
when 10
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
else
    puts 'ops Algo deu errado'
end 

 
# While

#  alunos = []

# tecla_pressionada = 's'

# while tecla_pressionada == 's' do
#   puts 'Digite o nome do aluno: '
#   nome_aluno = gets.chomp

#   puts 'Digite a nota do aluno: '
#   nota_aluno = gets.to_i

#   puts 'Digite a matéria: '
#   materia_aluno = gets.chomp

#   # Adiciona o aluno como um hash ao array alunos
#   alunos << { nome: nome_aluno, nota: nota_aluno, materia: materia_aluno }

#   puts 'Deseja inserir um novo aluno? s ou n'
#   tecla_pressionada = gets.chomp
# end