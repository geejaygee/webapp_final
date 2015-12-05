class HomeController < ApplicationController
  def index
    @CPU_list = Cpu.all
  end
end 
