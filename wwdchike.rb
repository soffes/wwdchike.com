class WWDCHike < Sinatra::Base
  get '/' do
    erb :home
  end
end
