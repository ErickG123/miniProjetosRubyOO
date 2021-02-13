class Pessoa
    # Variáveis de classe
    # É global em todos os objetos da classe
    @@numero_pessoas = 0

    # Método de classe
    # Não precisa instânciar um objeto 'Pessoa'
    def self.gerar
        @@numero_pessoas += 1
        puts "............"
        puts "Gerar pessoa"
        Pessoa.new
    end

    def self.numero_pessoas
        @@numero_pessoas
    end
end

pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar
pessoa = Pessoa.gerar  
p Pessoa.numero_pessoas