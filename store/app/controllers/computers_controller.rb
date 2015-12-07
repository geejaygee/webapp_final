class ComputersController < ApplicationController
  before_action :set_computer, only: [ :edit, :update, :destroy]
  
  def index
    @users=User.all
    @computers=Computer.all
  end
 
  def show
    @computer = Computer.joins(:user).where(:user_id => params[:id])
  end
 
  def new
    @computer=Computer.new
    @gcard_options=Gcard.all.map{|x| [x.name, x.id]}
    @cpu_options=Cpu.all.map{|x| [x.name, x.id]}
    @mboard_options=Mboard.all.map{|x| [x.name, x.id]}
    @case_options=Case.all.map{|x| [x.name, x.id]}
  end

  def create
    @computer=Computer.new(computer_params)
    @computer.user_id=current_user.id
    if @computer.save
      redirect_to root_path, notice: 'Computer Build Saved.'
    else
      render :new
    end
  end

  def destroy
    @computer.destroy
    if !Computer.exists?(current_user)
      redirect_to root_path, notice: 'Listing destroyed'
    else
      redirect_to computer_path(current_user), notice: 'Listing destroyed.'
    end 
  end

  private
    def set_computer
      @computer = Computer.find(params[:id])
    end

    def computer_params
      params.require(:computer).permit( :gcard_id, :cpu_id, :mboard_id, :case_id, :quality, :price)
    end 
end
