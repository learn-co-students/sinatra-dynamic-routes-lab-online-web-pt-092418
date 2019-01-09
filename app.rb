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
    saying = (params[:phrase])
    @say = saying.repeat((params[:number]).to_i)
    "Say #{@say}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @repeat = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
  "Say #{@repeat}."
  end
  get '/:operation/:number1/:number2' do
  end
end