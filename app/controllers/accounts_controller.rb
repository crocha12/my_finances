class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account, only: [:show, :edit, :update, :destory]
  
  def show
  end

  def new
    @account = current_user.accounts.new
  end

  def create
    @account = current_user.accounts.new(account_params)
    if @account.save
      redirect_to root_path, notice: 'Account created successfully'
    else
      render :new, alert: 'Something went wrong'
    end
  end

  def edit
  end

  def update
  end

  def destory
    if @account.destroy
      redirect_to root_path, notice: 'Account deleted successfully'
    else
      redirect_to root_path, alert: 'Something went wrong'
    end
  end

  private
    def set_account
      @account = current_user.accounts.find(params[:id]) rescue redirect_to(root_path)
    end

    def account_params
      params.require(:account).permit(:name)
    end
end
