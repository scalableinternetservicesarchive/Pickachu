class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end


  def comment
    if !user_signed_in?
      authenticate_user!
    end
    if params[:search]
      @user = User.find_by_name(params[:search])
      if @user.present?
        @pickups = Pickup.where("user_id=?",@user.id)
        @latestPickup = @pickups.order("updated_at").last
      end
    end
    if params[:username]
      @singlePickup= Pickup.find_by_id(params[:pickupid])
      if params[:rep].present?
        localRep = params[:rep].to_f
        if @singlePickup.rate.present? and params[:comment].present? and localRep>0 and localRep<=5 
          @user = User.find_by_name(params[:username])
          oldNum = @user.number_of_trades
          if @user.reputation!=nil
            newSum = oldNum * @user.reputation + localRep
          else
            newSum = localRep
          end
          @user.update(number_of_trades: (oldNum+1))
          @user.update(reputation: newSum/(oldNum+1))
          @singlePickup.update(rate: localRep)
          @singlePickup.update(comment: params[:comment])
          @latestPickup = @singlePickup
        end
      end
    end
  end

  def dashboard
    if !user_signed_in?
      authenticate_user!
    end
    if current_user.present?

      @pickups = Pickup.where("user_id=?",current_user.id)
      @paginatable_pickups = Kaminari.paginate_array(@pickups).page(params[:page]).per(10)

      @latestPickup = @pickups.order("updated_at").last
    end
  end

  private
	def user_params
	  params.require(:user).permit(:name, :email, :password,
	                               :password_confirmation)
	end
end
