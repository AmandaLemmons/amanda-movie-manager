class SessionsController < ApplicationController

  layout false

    def new
    end

    def create
      @auth = request.env['omniauth.auth']['credentials']
    end
end


  # def new
  #   @user = User.new
  # end
  #
  #
  # def create
    # user = User.new
    # auth = request.env["omniauth.auth"]
    # session[:omniauth] = auth
    # user = User.new.sign_in_from_facebook(auth)
    # session[:user_id] = user.id
    # redirect_to index_path
#
#
#     email = params[:email]
#     password = params[:password]
#
#     @user = User.find_by email: email
#     if (@user) && (@user.authenticate password)
#       session[:user_id] = @user.id
#     else
#       flash.now[:danger] = "Try again. Invalid email/password combination"
#       render :new
#     end
#   end
#
#
#
#   def destroy
#       session.delete :user_id
#       redirect_to index_path
#   end
# end
