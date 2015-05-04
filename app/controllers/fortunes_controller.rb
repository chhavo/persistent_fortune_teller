class FortunesController < ApplicationController
  def lucky
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky
    @numbers = [rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000)]
  end

  def random

  @num1 = params[:num1]
  @num2 = params[:num2]

  @numbers = [rand(@num1.to_i+1...@num2.to_i+1), rand(@num1.to_i+1...@num2.to_i+1), rand(@num1.to_i+1...@num2.to_i+1), rand(@num1.to_i+1...@num2.to_i+1), rand(@num1.to_i+1...@num2.to_i+1)]

  end

end
