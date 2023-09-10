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

describe 'Application' do
  context '#call' do
    it 'should return hi' do
      # arrange (preparação)
      # act (agir)
      # assert (afirmar)
      expect(Application.new.call).to eq('hi')
    end
  end
end
