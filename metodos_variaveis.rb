class Pessoa
    # Forma simples de criar o método 'writer'
    attr_writer :nome

    # Estado inicial do objeto
    def initialize(nome)
        # Variável de instância
        @nome = nome
    end

    def imprimir_ola
        puts "Olá, #{@nome}"
    end

    # def nome=(novo_nome)
    #     @nome = novo_nome
    # end
end

erick = Pessoa.new("Erick")
erick.imprimir_ola
erick.nome = "Erick Gabriel"
erick.imprimir_ola