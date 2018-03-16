# Controller to manage traffic through routes.
class LaughTracksApp < Sinatra::Base
  # get '/comedians' do
  #   erb :"comedians/index", :locals => { :all_comedians => Comedian.all }
  # end

  # get '/comedians' do
  #   all_comedians = Comedian.find_by(params[:age])
  #   erb :"comedians/index", :locals => { :all_comedians => all_comedians }
  # end

  get '/comedians' do
    @all_comedians = Comedian.find_all_by(params[:age])
    erb :"comedians/index"
  end
end
