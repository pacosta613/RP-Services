class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # if auto_hash = request.env["omniauth.auth"]
    #   user = find_or_create_by_omniauth(auto_hash)
    #   session[:user_id] = user.id

    #   redirect_to root_path
    # else
    @user = User.from_omniauth(request.env["omniauth.auth"])
    
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end