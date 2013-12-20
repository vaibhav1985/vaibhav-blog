class XpathsController < ApplicationController
	before_action :set_xpath, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /xpaths
  # GET /xpaths.json
  def index
    @xpaths = Xpath.all
  end

  # GET /xpaths/1
  # GET /xpaths/1.json
  def show
  end

  # GET /xpaths/new
  def new
    @xpath = Xpath.new
    @xpath.build_topic
  end

  # GET /xpaths/1/edit
  def edit
  end

  # POST /xpaths
  # POST /xpaths.json
  def create
    @xpath = Xpath.new(xpath_params)

    respond_to do |format|
      if @xpath.save
        format.html { redirect_to @xpath, notice: 'Xpath was successfully created.' }
        format.json { render action: 'show', status: :created, location: @xpath }
      else
        format.html { render action: 'new' }
        format.json { render json: @xpath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xpaths/1
  # PATCH/PUT /xpaths/1.json
  def update
    respond_to do |format|
      if @xpath.update(xpath_params)
        format.html { redirect_to @xpath, notice: 'Xpath was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @xpath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xpaths/1
  # DELETE /xpaths/1.json
  def destroy
    @xpath.destroy
    respond_to do |format|
      format.html { redirect_to xpaths_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xpath
      @xpath = Xpath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xpath_params
      #params[:xpath]
      params.require(:xpath).permit(topic_attributes:[:name,:description])
    end
end
