require 'sinatra'
require 'pstore'
require 'pry'
require 'json'

store = PStore.new("data.pstore")

get '/' do
  store.transaction do
	@tasks = store[:tasks]
	@tasks ||= []
  end

  erb :index
end

get '/beta' do
  erb :beta
end

get '/api/items' do
	tasks ||= []
	store.transaction do
		tasks = store[:tasks]
  	end
  	tasks.to_json
end

post '/api/items/new' do
  puts "You sent #{params}"
  store.transaction do
    store[:tasks] ||= []
    store[:tasks].push (params['tasks'])
  end
  redirect to ('/')
end

post '/target_url' do
  puts "You sent #{params['new_task']}"
  store.transaction do
	  store[:tasks] ||= []
	  store[:tasks].push (params['new_task'])
  end
  redirect to ('/')
end

