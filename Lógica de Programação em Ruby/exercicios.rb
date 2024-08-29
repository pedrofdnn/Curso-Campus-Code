# Exercicio de Concaternar.
# nome = 'João'
# idade = '30'
# puts('Meu nome é ' + nome + ' e eu tenho ' + idade + ' anos de idade')

# # Exercicio de impressão de listas.
# alunos = ['André', 'Sophia', 'Laura']
# notas = [5, 6, 8]

# puts(" 
# #{alunos[0]} tirou nota #{notas[0]} 
# #{alunos[1]}   I tirou nota #{notas[1]}
# #{alunos[2]} tirou nota #{notas[2]}
# ")

# alunos = [
#   { nome: 'pedro', nota: 8, materia: 'Artes' },
#   { nome: 'Alberto', nota: 7, materia: 'Artes' },
#   { nome: 'diego', nota: 8, materia: 'Artes' }
# ]

# media = 10

# alunos.each do |aluno|
#   if aluno[:nota] >= media
#     puts "#{aluno[:nome]} foi aprovado em #{aluno[:materia]}"
#   else
#     puts "#{aluno[:nome]} foi reprovado em #{aluno[:materia]}"
#   end
# end

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
# nota = 11
# case nota 
# when 0
#   puts 'Você tirou zero! Precisa melhorar…'
# when 1..4
#   puts 'Reprovado… precisa se esforçar mais...'
# when 5
#   puts 'Passou raspando!'
# when 6..9
#   puts 'Parabéns, você foi aprovado.'
# when 10
#   puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
# else
#     puts 'ops Algo deu errado'
# end 

 
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

# ===================================== Praticando condições:

# puts "Bem vindo a programa de receitas"

# receitas = []

# puts "[1] Digitar o nome da receita. "
# puts "[2] Ver todas as receita. "
# puts "[3] Sair. "

# print "Escolha uma opção: "

# opcao = gets.to_i()

# while(opcao !=3 ) do
#   if(opcao == 1)
#     puts"Digite o nome da receita"
#     nome = gets.chomp()
#     receitas << nome
#     puts
#     puts"Receita #{nome} cadastrada com sucesso!"
#     puts
#   elsif(opcao == 2)
#     puts "=========== Receitas Cadastradas ==========="
#     puts receitas
#     puts
#   else
#     puts "Opção Invalida!"
#   end

#   puts "[1] Digitar o nome da receita. "
#   puts "[2] Ver todas as receita. "
#   puts "[3] Sair. "
  
#   print "Escolha uma opção: "
  
#   opcao = gets.to_i()

# end

# Ex. utilizando HASH.

# puts "Bem vindo a programa de receitas"

# receitas = []

# puts "[1] Digitar o nome da receita. "
# puts "[2] Ver todas as receita. "
# puts "[3] Sair. "

# print "Escolha uma opção: "

# opcao = gets.to_i()

# while(opcao !=3 ) do
#   if(opcao == 1)
#     puts"Digite o nome da receita"
#     nome = gets.chomp()
#     puts"Digite o tipo da receita"
#     tipo = gets.chomp()
    
#     receitas << {nome:nome,tipo:tipo}
  
#     puts
#     puts"Receita #{nome} cadastrada com sucesso!"
#     puts
#   elsif(opcao == 2)
#     puts "=========== Receitas Cadastradas ==========="
#     receitas.each do |receita|
#       puts "#{receita[:nome]} - #{receita[:tipo]}"
#   end
#     puts
#   else
#     puts "Opção Invalida!"
#   end
  
#   puts "[1] Digitar o nome da receita. "
#   puts "[2] Ver todas as receita. "
#   puts "[3] Sair. "
  
#   print "Escolha uma opção: "
  
#   opcao = gets.to_i()
# end

# Criando Metodos.

def bem_vindo
  puts "Bem vindo ao programa de receitas"
end

def menu 
  puts "[1] Digitar o nome da receita. "
  puts "[2] Ver todas as receita. "
  puts "[3] Sair. "
  
  print "Escolha uma opção: "
  return gets.to_i() # recebe a opção convertendo em numeros.
end

def inserir_receitas
  puts"Digite o nome da receita"
  nome = gets.chomp()
  puts"Digite o tipo da receita"
  tipo = gets.chomp()
  puts
  puts"Receita #{nome} cadastrada com sucesso!"
  return {nome:nome,tipo:tipo} # armazena os dados inseridos em forma de objetos.
end

def imprimir_receitas(receitas)
  puts "=========== Receitas Cadastradas ==========="
    receitas.each do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end                 
end

bem_vindo() # Chamada o metoro bemvindo.

receitas = []

opcao = menu()

while(opcao !=3 ) do
  if(opcao == 1)
    receitas << inserir_receitas()
  elsif(opcao == 2)
    imprimir_receitas(receitas)
  else
    puts "Opção Invalida!"
  end
 
  opcao = menu()
end