class GcardsController < ApplicationController
  def new
    @gcard=Gcard.new
  end
  
  def create
    @gcard=Gcard.new(gcard_params)
    if @gcard.save
      redirect_to new_computer_path, notice: 'Graphics Card Added'
    else
      render :new
    end 
  end

  private
    def gcard_params
      params.require(:gcard).permit(:name)
     end
end
