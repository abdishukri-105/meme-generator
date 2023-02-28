class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # fetch all memes
    get '/memes' do
        memes = Meme.order(:created_at)
        memes.to_json
    end

    #  delete specific meme
    delete '/memes/:id' do
        memes = Meme.find(params[:id])
        memes.destroy
        memes.to_json
    end

    # create a new meme
    post '/memes' do 
        memes = Meme.create(
            title: params[:title],
            message: params[:message],
            user_id: params[:user_id]
        )
        memes.to_json
    end

    # update a meme
    patch '/memes/:id' do 
        memes = Meme.find(params[:id])
        memes.update(
            title: params[:title],
            message: params[:message]
        )
        memes.to_json
    end

    # add a user
    post '/users' do
        users = User.create(
            username: params[:username],
            email: params[:email],
            age: params[:age],
            sex: params[:sex]
        )
        users.to_json
    end

    # fetch a user with his memes
    get '/users/id' do
        users = User.all
        users.to_json(include: :memes)
    end
  
  end