class ComputersController < ApplicationController
  before_action :set_computer, only: [ :edit, :update, :destroy]
  
  def index
    @query_options = ['Everything', 'Users', 'Graphics Cards', 'Motherboards', 'Cases', 'RAM', 'Storage'] 
    search(params[:search], params[:option], params[:min], params[:max], params[:quality])
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
    @ram_options=Ram.all.map{|x| [x.name, x.id]}
    @harddrive_options=Harddrive.all.map{|x| [x.name, x.id]}
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
    if !Computer.joins(:user).exists?(:user_id => current_user.id)
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
      params.require(:computer).permit( :gcard_id, :cpu_id, :mboard_id, :case_id, :ram_id, :harddrive_id, :quality, :price)
    end 

    def search(query, choice, min, max, quality)
      if query
        if query.blank?
          @computers = Computer.all
           if (min && !min.blank? )
              @computers = @computers.where('price >= ?', "#{min}")
           end
           if (max && !max.blank?)
             @computers = @computers.where('price <= ?', "#{max}")
           end
           if (quality && !quality.blank?)
             @computers = @computers.where('quality = ?', "#{quality}")
           end
        else
          if choice == 'Everything'
            @computers = Computer.joins(:user).where('name LIKE ?', "%#{query}%")
            @computers += Computer.joins(:cpu).where('name LIKE ?', "%#{query}%")
            @computers += Computer.joins(:mboard).where('name LIKE ?', "%#{query}%")
            @computers += Computer.joins(:gcard).where('name LIKE ?', "%#{query}%")
            @computers += Computer.joins(:case).where('name LIKE ?', "%#{query}%")
            @computers += Computer.where( :quality => query)
            @computers += Computer.where( :price => query)
            @computers.uniq!
          elsif choice == 'Users'
            @computers = Computer.joins(:user).where('name LIKE ?', "%#{query}%")
          elsif choice == 'Cpus'
            @computers = Computer.joins(:user).where('name LIKE ?', "%#{query}%")
          elsif choice == 'Motherboard'
            @computers = Computer.joins(:mboard).where('name LIKE ?', "%#{query}%")
          elsif choice == 'Graphics Cards'
            @computers = Computer.joins(:gcard).where('name LIKE ?', "%#{query}%")
          elsif choice == 'Cases'
            @computers = Computer.joins(:case).where('name LIKE ?', "%#{query}%")
          elsif choice == 'RAM'
            @computers = Computer.joins(:ram).where('name LIKE ?', "%#{query}%")
          elsif choice == 'Storage'
            @computers = Computer.joins(:harddrive).where('name LIKE ?', "%#{query}%")
          end
        end
      else
        @computers = Computer.all
        if (min && !min.blank? )
          @computers = @computers.where('price >= ?', "#{min}")
        end
        if (max && !max.blank?)
          @computers = @computers.where('price <= ?', "#{max}")
        end
        if (quality && !quality.blank?)
          @computers = @computers.where('quality = ?', "#{quality}")
        end
      end
    end
   
end
