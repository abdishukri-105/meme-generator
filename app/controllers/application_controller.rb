class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get '/memes' do
        memes = Meme.order(:created_at)
        memes.to_json
    end

    delete '/memes/:id' do
        memes = Meme.find(params[:id])
        memes.destroy
        memes.to_json
    end

    post '/memes' do 
        memes = Meme.create(
            title: params[:title],
            message: params[:message],
            user_id: params[:user_id]
        )
        memes.to_json
    end

    patch '/memes/:id' do 
        memes = Meme.find(params[:id])
        memes.update(
            message: params[:message],
        )
        memes.to_json
    end

    post '/users' do
        users = User.create(
            username: params[:username],
            email: params[:email],
            age: params[:age],
            sex: params[:sex]
        )
        users.to_json
    end

    get '/users' do
        users = User.all
        users.to_json(include: :memes)
    end
  
  end