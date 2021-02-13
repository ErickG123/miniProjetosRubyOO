# Contexto da classe
class MinhaClasse
    def m1
        puts "M1"
        m2
        m3
    end

    # Torna os métodos m2 e m3 como privados
    # Torna todos métodos abaixo de 'private' como privados
    # Somente a classe pode chamar eles (Mesmo objeto)
    # Também posso colocar 'private' antes de definir um método específico
    # private def metodo
    private

    def m2
        puts "M2"
    end

    def m3
        puts "M3"
    end

    # Torna o método m5 como protejido
    protected def m5
        puts "M5"
    end
end

class MinhaSubClasse < MinhaClasse
    def m4
        m3
        outro_obj = MinhaClasse.new
        puts "M4"
        # Por ser um objeto diferente, eu não consigo acessar uma método privado
        # Se eu tornar esse método 'protected' eu consigo acessar ele (Mesma classe)
        outro_obj.m5
    end
end

# Outro contexto
# obj = MinhaClasse.new
# obj.m1
obj_s = MinhaSubClasse.new
obj_s.m4