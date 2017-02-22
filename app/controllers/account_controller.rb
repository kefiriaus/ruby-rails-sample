class AccountController < ApplicationController
  before_action :crm

  def login
    @cid = @crm.login(login_params)
    if @cid.present?
      @user = User.create(C_ID: @cid)
      sign_in :user, @user
      redirect_to root_path
    end
  end

  def autologin
    @cid = @crm.login(autologin: params[:autologin])
    if @cid.present?
      @user = User.create(C_ID: @cid)
      sign_in :user, @user
    end
    redirect_to root_path
  end

  def logout
    sign_out :user
    redirect_to root_path
  end

  def register
    user = User.new(register_params)
    if user.valid?
      @cid = @crm.registration(register_params)
    else
      @crm.errors = user.errors.messages.map{ |k, v| v.to_a.join('<br />').to_s }
    end
  end

  def restore_password
    @result = @crm.restore_password(restore_password_params).to_s == 'ALSOK'
  end

  private

  def crm
    @crm = ExternalCrm::Api.new # External API
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end

  def register_params
    params.require(:user).permit(:email, :first_name, :last_name, :workplace, :agree)
  end

  def restore_password_params
    params.require(:user).permit(:email)
  end

  def register_question_params
    params.require(:feedback).permit(:subject, :question, :cid)
  end
end
