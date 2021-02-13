require './class/conta_bancaria.rb'
require './class/conta_com_taxa.rb'

# Executando conta_bancaria.rb
conta_erick = ContaComTaxa.new("Erick", 100)
conta_nah = ContaBancaria.new("Nah", 200)

conta_erick.transferir(conta_nah, 50)

p "Conta Erick"
p conta_erick.saldo
p "Conta Nah"
p conta_nah.saldo

# Caso de teste: Conta sem saldo

# Pegando o erro de saldo insuficiente sem atrapalhar a execução do código
begin
    conta_erick.transferir(conta_nah, 60)
rescue StandardError => error
    # Pega a 'message' do 'raise' do método
    p "Não foi possível transferir: #{error.message}"    
end



# Não executa, pois a transferencia gerou erro (Saldo insuficiente)
p "Conta Erick"
p conta_erick.saldo
p "Conta Nah"
p conta_nah.saldo