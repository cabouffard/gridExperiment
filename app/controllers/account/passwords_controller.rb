class Account::PasswordsController < ApplicationController
  # GET /account/password/edit
  def edit
    @user = current_user
  end

  # PUT /account/password
  # https://github.com/plataformatec/devise/blob/master/app/controllers/devise/registrations_controller.rb
  def update
    @user = current_user

    if @user.update_with_password(password_update_params)
      sign_in(current_user, bypass: true)
      redirect_to edit_user_registration_url, flash: { notice: t('devise.passwords.updated_not_active') }
    else
      @user.clean_up_passwords
      render :edit
    end
  end

  private

  def password_update_params
    params.required(:user).permit(:password, :password_confirmation, :current_password)
  end
end
