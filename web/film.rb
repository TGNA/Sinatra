require 'sinatra'
require 'pry'
require 'json'
require 'imdb' 

get '/' do
	@films = []
  	erb :index
end

post '/search' do
	film_search = Imdb::Search.new(params['search_film']).movies #Search the parameter
	@films = film_search.sample(9).map{|m| m.poster}
  	erb :index
end

get '/random' do
	film_search = Imdb::Top250.new.movies #Random in the 250 best films
	@films = film_search.sample(9).map{|m| m.poster}
  	erb :index
end