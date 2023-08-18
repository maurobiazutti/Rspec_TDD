# frozen_string_literal: true

require 'models/student'

RSpec.describe Student do
  # "#say_hi" com Serquilha é metodo de Instancia
  # ".say_hi" com Ponto é metodo de Classs
  context '.say_hi' do
    it 'should only say hi' do
      # Arrange (Preparar)

      # Act (Agir)
      presentation = Student.say_hi

      # Assert (Afirmar)
      expect(presentation).to eq('hi')
      # Poderia ser executado desta forma tbm.
      # expect(Student.say_hi).to eq('hi')
      # expect(described_class.say_hi).to eq('hi')
    end
  end

  context '#say_hi' do
    it 'should present her/his whit name' do
      subject.name = 'Mauro'

      expect(subject.say_hi).to eq("hi, i'm Mauro")
    end

    it 'should present her/him with default name' do
      expect(subject.say_hi).to eq("hi, i'm Unknown")
    end
  end
end
