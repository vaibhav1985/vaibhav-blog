class RailsHamlsController < ApplicationController
	before_action :set_rails_haml, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /rails_hamls
  # GET /rails_hamls.json
  def index
    @rails_hamls = RailsHaml.all
  end

  # GET /rails_hamls/1
  # GET /rails_hamls/1.json
  def show
  end

  # GET /rails_hamls/new
  def new
    @rails_haml = RailsHaml.new
    @rails_haml.build_topic
  end

  # GET /rails_hamls/1/edit
  def edit
  end

  # POST /rails_hamls
  # POST /rails_hamls.json
  def create
    @rails_haml = RailsHaml.new(rails_haml_params)

    respond_to do |format|
      if @rails_haml.save
        format.html { redirect_to @rails_haml, notice: 'Rails haml was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rails_haml }
      else
        format.html { render action: 'new' }
        format.json { render json: @rails_haml.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rails_hamls/1
  # PATCH/PUT /rails_hamls/1.json
  def update
    respond_to do |format|
      if @rails_haml.update(rails_haml_params)
        format.html { redirect_to @rails_haml, notice: 'Rails haml was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rails_haml.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rails_hamls/1
  # DELETE /rails_hamls/1.json
  def destroy
    @rails_haml.destroy
    respond_to do |format|
      format.html { redirect_to rails_hamls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rails_haml
      @rails_haml = RailsHaml.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rails_haml_params
      params.require(:rails_haml).permit(topic_attributes:[:name,:description])	
      # params[:rails_haml]
    end
end
