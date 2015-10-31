class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def comment
    if !user_signed_in?
      authenticate_user!
    end
    if params[:search]
      @user = User.find_by_name(params[:search])
      if @user.present?
        @pickups = Pickup.where("uid=?",@user.id)
      end
    end
    if params[:username]
      @user = User.find_by_name(params[:username])
      oldNum = @user.number_of_trades
      if @user.reputation!=nil
        newSum = oldNum * @user.reputation + params[:rep].to_f
      else
        newSum = params[:rep].to_f
      end
      @user.update(number_of_trades: (oldNum+1))
      @user.update(reputation: newSum/(oldNum+1))
      @singlePickup= Pickup.find_by_id(params[:pickupid])
      @singlePickup.update(rate: params[:rep].to_f)
      # @singlePickup.update(comment: params[comment])
    end
  end



  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private
	def user_params
	  params.require(:user).permit(:name, :email, :password,
	                               :password_confirmation)
	end
end
