class Professor
    attr_reader :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :cadastro, :materia
  
    def initialize(nome, cadastro, materia)
      @nome = nome
      @cadastro = cadastro 
      @materia = materia
      @ferias = false
      @data_inicio_ferias = nil
      @data_fim_ferias = nil
    end
    
    def inicia_ferias(data = Time.now)
      @ferias = true
      @data_inicio_ferias = data
      puts "Férias iniciadas em #{@data_inicio_ferias}"
    end
  
    def encerra_ferias(data = Time.now)
      @ferias = false
      @data_fim_ferias = data
      puts "Férias encerradas em #{@data_fim_ferias}"
    end
  
    def em_ferias?
      @ferias
    end
  end