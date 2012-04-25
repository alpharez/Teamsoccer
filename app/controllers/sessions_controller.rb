class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        sign_in user
        format.html { redirect_to user, :notice => 'Welcome back!' }
        # redirect_to user
      else
        flash[:error] = 'Invalid email/password combination'
        render 'new'
      end
    end
  end

  def destroy
    respond_to do |format|
      sign_out
      format.html { redirect_to root_path, :notice => 'See ya later!' }
    end
  end

end
