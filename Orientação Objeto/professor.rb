
class Professor
    attr_accessor :nome, :cadastro, :materia

    def initialize(nome, cadastro, materia)
        @nome = nome
        @cadastro = cadastro 
        @materia = materia
    end
end