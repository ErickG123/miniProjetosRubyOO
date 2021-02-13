class ContaBancaria
    def initialize(dono, valor_inicial)
      @dono = dono
      @valor_inicial = valor_inicial
    end

    def transferir(outra_conta, valor)
        if saldo >= valor
            # Consigo transferir (Saldo suficiente)
            debitar(valor)
            outra_conta.depositar(valor)
        else
            # Não consigo transferir (Saldo insuficiente)
            # 'raise' força um erro
            raise "Saldo insuficiente"
        end
    end

    def saldo
        @valor_inicial
    end

    private def debitar(valor_debitado)
        @valor_inicial -= valor_debitado
    end

    protected def depositar(valor_deposito)
        @valor_inicial += valor_deposito
    end
end
