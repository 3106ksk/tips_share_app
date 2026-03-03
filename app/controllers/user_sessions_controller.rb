class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])&.authenticate(params[:password])

    if @user
      session[:user_id] = @user.id
      redirect_to tips_new_path, success: t('user_sessions.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end
end
