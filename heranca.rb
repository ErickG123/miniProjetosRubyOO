# Herança para reuso de funcionalidades
# Herança de apenas uma classe (Não existe heranças multiplas)
# Sensor genérico
class Sensor
    def instalar
        puts "Instalando o sensor"
    end

    def iniciar
        puts "Iniciando o sensor"
    end

    def coletar_dados
        puts "Coletando dados"
        puts "Analisando dados"
    end
end

class SensorTemp < Sensor
    def coletar_dados
        puts "Coletando dados de temperatura"
        puts "Analisando dados de temperatura"
        # A função 'super' chama o método da classe 'pai'
        # depois que executar o método da classe 'filho'
        super
    end
end

sensor = SensorTemp.new
sensor.instalar
sensor.iniciar
sensor.coletar_dados