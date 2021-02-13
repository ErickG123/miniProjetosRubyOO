# 'ContaComTaxa' herda as funcionalidade de 'ContaBancaria'
class ContaComTaxa < ContaBancaria
    # Método de Classe (Taxa de saque)
    # def self.taxa
    #     2
    # end

    # Constante 
    TAXA = 2
    
    # Reescrevendo o método 'transferir' na classe 'ContaComTaxa'
    def transferir(outra_conta, valor)
        # Chamando a classe pai (ContaBancaria) e executando o método transferir dela
        # com os mesmo parâmetros eu posso colocar apenas 'super'
        # super(outra_conta, valor) 
        super
        # taxa_saque = 2
        # debitar(taxa_saque)
        # debitar(ContaComTaxa.taxa)
        debitar(TAXA)
    end
end