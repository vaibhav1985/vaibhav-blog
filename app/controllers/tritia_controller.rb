class TritiaController < ApplicationController
	before_action :set_tritium, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /tritia
  # GET /tritia.json
  def index
    @tritia = Tritium.all
  end

  # GET /tritia/1
  # GET /tritia/1.json
  def show
  end

  # GET /tritia/new
  def new
    @tritium = Tritium.new
    @tritium.build_topic
  end

  # GET /tritia/1/edit
  def edit
  end

  # POST /tritia
  # POST /tritia.json
  def create
    @tritium = Tritium.new(tritium_params)

    respond_to do |format|
      if @tritium.save
        format.html { redirect_to @tritium, notice: 'Tritium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tritium }
      else
        format.html { render action: 'new' }
        format.json { render json: @tritium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tritia/1
  # PATCH/PUT /tritia/1.json
  def update
    respond_to do |format|
      if @tritium.update(tritium_params)
        format.html { redirect_to @tritium, notice: 'Tritium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tritium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tritia/1
  # DELETE /tritia/1.json
  def destroy
    @tritium.destroy
    respond_to do |format|
      format.html { redirect_to tritia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tritium
      @tritium = Tritium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tritium_params
      # params[:tritium]
      params.require(:tritium).permit(topic_attributes:[:name,:description]) 
    end
end
