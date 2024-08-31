require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

# ここにコードを書こう
get '/' do
    erb :index
end

get '/answer/yes' do
    @message = '正解'
    @messagetext = 'さすが！'
    @is_correct = true
    @bilson_img = '/image/bilson_with_maru.png'
    erb :answer
end

get '/answer/no' do
    @message = '不正解'
    @messagetext = 'もう一度頑張れ！！'
    @is_correct = false
    @bilson_img = '/image/bilson_with_batsu.png'
    erb :answer
end