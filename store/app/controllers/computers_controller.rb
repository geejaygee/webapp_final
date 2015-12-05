class ComputersController < ApplicationController
  before_action :set_computer, only: [ :show, :edit, :update, :destroy]
  
  def index
    @users=User.all
    @computers=Computer.all
  end
 
  def show
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
    @computer.user=current_user
    if @computer.save
      redirect_to root_path, notice: 'Computer Build Saved.'
    else
      render :new
    end
  end

  private
    def set_computer
      @computer=Computer.find(params[:id])
    end

    def computer_params
      params.require(:computer).permit( :gcard_id, :cpu_id, :mboard_id, :case_id, :price)
    end 
end
