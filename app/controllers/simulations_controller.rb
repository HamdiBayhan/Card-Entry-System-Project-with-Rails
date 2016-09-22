class SimulationsController < ApplicationController
  before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  def index
    @simulations = Simulation.all
  end

  def show
    redirect_to simulations_path
  end

  def new
    @simulation = Simulation.new
  end

  def edit
  end

  def create
    @simulation = Simulation.new(simulation_params)
    @inside_member = Member.where(cardId: @simulation.simId).first
    
    if Member.exists?(:cardId => @simulation.simId) && @inside_member.confirm == "YC"
      if @inside_member.inside == "off"
        respond_to do |format|
          if @simulation.save
            format.html { redirect_to @simulation, notice: 'Simulation was successfully created.' }
            format.json { render :show, status: :created, location: @simulation }
            i = @inside_member.useRate + 1        
            @inside_member.update_attributes(:useRate => i, :inside => "on")
          else
            format.html { render :new }
            format.json { render json: @simulation.errors, status: :unprocessable_entity }
          end
        end
      else
        @inside_member.update_attribute(:inside, "off")
        redirect_to :back
      end
    else
      redirect_to new_simulation_path
    end
  end

  def update
    respond_to do |format|
      if @simulation.update(simulation_params)
        format.html { redirect_to @simulation, notice: 'Simulation was successfully updated.' }
        format.json { render :show, status: :ok, location: @simulation }
      else
        format.html { render :edit }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @simulation.destroy
    respond_to do |format|
      format.html { redirect_to simulations_url, notice: 'Simulation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simulation
      @simulation = Simulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simulation_params
      params.require(:simulation).permit(:simId)
    end
  end
