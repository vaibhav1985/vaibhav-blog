class AjaxesController < ApplicationController
	before_action :set_ajax, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /ajaxes
  # GET /ajaxes.json
  def index
    @ajaxes = Ajax.all
  end

  # GET /ajaxes/1
  # GET /ajaxes/1.json
  def show
  end

  # GET /ajaxes/new
  def new
    @ajax = Ajax.new
    @ajax.build_topic
  end

  # GET /ajaxes/1/edit
  def edit
  end

  # POST /ajaxes
  # POST /ajaxes.json
  def create
    @ajax = Ajax.new(ajax_params)

    respond_to do |format|
      if @ajax.save
        format.html { redirect_to @ajax, notice: 'Ajax was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ajax }
      else
        format.html { render action: 'new' }
        format.json { render json: @ajax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ajaxes/1
  # PATCH/PUT /ajaxes/1.json
  def update
    respond_to do |format|
      if @ajax.update(ajax_params)
        format.html { redirect_to @ajax, notice: 'Ajax was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ajax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajaxes/1
  # DELETE /ajaxes/1.json
  def destroy
    @ajax.destroy
    respond_to do |format|
      format.html { redirect_to ajaxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ajax
      @ajax = Ajax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ajax_params
    	
      # params[:ajax]
      params.require(:ajax).permit(topic_attributes:[:name,:description])
    end
end
