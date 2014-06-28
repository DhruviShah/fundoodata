class SessionsController < ApplicationController
  

def new
  #log_in_and_redirect_to(:controller => 'companies',:action => 'list')
end

def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to(:controller => 'companies',:action => 'list')
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end

def index
  render :text=>"hiii"
  #redirect_to(:controller => 'companies',:action => 'list')
end
end
