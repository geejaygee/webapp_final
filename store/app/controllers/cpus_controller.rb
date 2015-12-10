class CpusController < ApplicationController
  def new
    @cpu=Cpu.new
  end
  
  def create
    @cpu=Cpu.new(cpu_params)
    if @cpu.save
      redirect_to new_computer_path, notice: 'Cpu Added To The List'
    else
      render :new
    end 
  end

  private
    def cpu_params
      params.require(:cpu).permit(:name)
     end
end
