require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @phrase * @number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  
  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    case @o
      when "add"
      "#{@num1 + @num2}"
      when "subtract"
      "#{@num1 - @num2}"
      when "multiply"
      "#{@num1 * @num2}"
      when "divide"
      "#{@num1 / @num2}"
    else
      "not a valid method"
    end    
  end
end