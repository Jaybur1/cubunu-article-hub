class AuthorSessionsController < ApplicationController
    def new
    end

    def create
      if login(params[:email], params[:password])
        redirect_to(articles_path, notice: 'Logged in successfully.')
      else
        redirect_to login_path , notice: "The email or the password are wrong try again please."
      end
    end

    def destroy
      logout
      redirect_to articles_path, notice: 'Logged out!'
    end
  end
