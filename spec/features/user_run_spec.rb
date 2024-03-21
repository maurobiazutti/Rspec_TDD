# frozen_string_literal: true

require 'application'

# Estrutura basica de Testes

# describe 'a specification' do

# "#say_hi" com Serquilha é metodo de Instancia
# ".say_hi" com Ponto é metodo de Classs
#   context "a context" do

#     it 'description' do

#       # arrange (preparação)
#       # act (agir)
#       # assert (afirmar)

#     end
#   end
# end

# Exemplos de como Escrever Testes

#################################################################

# Exemplo 1 Escrita Simple -> Para Rodar este teste -> rspec
describe Application do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end

#################################################################

# Exemplo 2 Escrita com Tag ->  Para rodar Apenas Este teste -> rspec --tag type:application
describe Application, :models, type: :application do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end

#################################################################

# Exemplo 3 Escrita com Tag ->  Para rodar Conjunto de Teste com tag :models-> rspec --tag models
describe Application, :models, type: :application do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end

#################################################################

# Exemplo 3 Escrita com Tag ->  Para Filtrar um Teste especifico add tag em context -> rspec --tag teste_call
describe Application, :models, type: :application do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end

  context '#call', :teste_call do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end

##################################################################
# Exemplo 4 - Escrita com Tag ->  Para Fazer algun tipo de Exclusão por tag -> rspec --tag models --tag ~type:application

describe Application, :models, type: :application do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end

  context '#call', :teste_call do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end