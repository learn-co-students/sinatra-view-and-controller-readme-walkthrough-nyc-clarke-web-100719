require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    string = params[:string]
    @string = string.reverse 
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @array = [
      "Emily Wilding Davison\n",
      "Harriet Tubman\n",
      "Joan of Arc\n",
      "Malala Yousafzai\n",
      "Sojourner Truth"
    ]

  end
end