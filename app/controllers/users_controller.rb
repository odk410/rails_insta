class UsersController < ApplicationController
  def login
  end

  def logout
  end

  def signup
  end

  def login_session
    user = User.find_by(emial: params[:email])

    if user
      if user.password == params[:password]
        login_session[:user_id] = user.id
        redirect_to '/'
      else
        redirect_to '/users/login'
      end
    else
      redirect_to '/users/signup'
    end


  end

  def register
  end
end
