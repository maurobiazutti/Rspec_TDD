

class Application
  def initialize; end

  def call
    run
  end

  private

  def run
    load_initializers
    present_student
  end

  def load_initializers
    require 'config/load_initializers'
  end

  def present_student
    Student.say_hi
  end
end  
