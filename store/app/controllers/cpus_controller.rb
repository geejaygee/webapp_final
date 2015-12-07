class CpusController < ApplicationController
  def new
    @cpu=Cpu.new
  end
  
  def create 
  end

  private
    def cpu_params
      params.require(:cpu).permit(:name)
     end
end
