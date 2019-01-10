require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :sayphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :saywords
  end

  get '/:operation/:number1/:number2' do
    erb :operations
  end

end