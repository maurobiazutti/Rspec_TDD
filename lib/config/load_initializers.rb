# frozen_string_literal: true

# inicia o irb dentro do arquivo atual podendo executar metodos, e acessar variaveis
# binding.irb

# Retorna o diretório do arquivo em que o código está sendo executado
# irb(main):001> File.dirname(__FILE__)
# => "/home/mauro/Área de Trabalho/respc/lib/config"

# Lista todos os arquivos .rb dentro de model
# Dir["#{File.dirname(__FILE__)}/../models/*.rb"]

models = Dir["#{File.dirname(__FILE__)}/../models/*.rb"]
models.each { |model| require model }
