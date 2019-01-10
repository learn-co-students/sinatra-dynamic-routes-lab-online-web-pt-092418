require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rname = params[:name].reverse
    "#{@rname}"
  end
  get '/square/:number' do
   @result =  params[:number].to_i * params[:number].to_i
   "#{@result}"
  end
  get '/say/:number/:phrase' do
    saying = params[:phrase]
    @say = saying * (params[:number].to_i)
    "Say #{@say}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @repeat = [params[:word1], params[:word2],  params[:word3], params[:word4], params[:word5]].join(" ") + ('.')
    "Say #{@repeat}"
  end
  get '/:operation/:number1/:number2' do
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i
   @operator = params[:operation].to_s
      if @operator == "add"
       @sum =  @num1 + @num2
       "#{@sum}"
    elsif @operator == "subtract"
      @sub = @num1 - @num2
      "#{@sub}"
    elsif @operator == "multiply"
      @multi = @num1 * @num2
      "#{@multi}"
    else
      @div = @num1/ @num2
      "#{@div}"
    end
  end
end
