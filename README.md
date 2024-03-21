# Testes com RSPEC

Este é um guia rápido sobre como usar o RSPEC para escrever testes em Ruby.

## Instalação

Adicione o RSPEC ao seu Gemfile:

```ruby
gem 'rspec'
```

Então execute:

```ruby
bundle install
```

## Tipos de Testes mais Usados

Aqui estão alguns exemplos de diferentes tipos de testes que você pode escrever com RSPEC:

- Teste de igualdade (`eq`):
  
  ```ruby
  expect(soma(2, 3)).to eq(5)
  ```

- Teste de desigualdade (not_to):
  
  ```ruby
  expect(aluno).not_to eq(nil)
  ```
  
- Teste de lançamento de exceção (raise_error):

  ```ruby
  expect { dividir(10, 0) }.to raise_error(ZeroDivisionError)
  ```

- Teste de inclusão (include):

  ```ruby
  expect(lista).to include("item1", "item2")
  ```

- Teste de correspondência (match):

  ```ruby
  expect(email).to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
  ```

- Teste de verdadeiro (be_truthy):
  
  ```ruby
  expect(aluno.aprovado?).to be_truthy
  ```

- Teste de falso (be_falsey):

  ```ruby
  expect(aluno.reprovado?).to be_falsey
  ```

- Teste de nulo (be_nil):

  ```ruby
  expect(resultado).to be_nil
  ```

- Teste de tipo (be_instance_of):
  
  ```ruby
  expect(aluno).to be_instance_of(Aluno)
  ```

- Teste de igualdade aproximada (be_within):

  ```ruby
  expect(calculadora.dividir(10, 3)).to be_within(0.01).of(3.33)
  ```

Este código em descreve os tipos de testes mais usados com RSPEC, fornecendo exemplos de código em Ruby para cada um deles.
