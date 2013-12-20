class GlobalJqueriesController < ApplicationController
	before_action :set_global_jquery, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /global_jqueries
  # GET /global_jqueries.json
  def index
    @global_jqueries = GlobalJquery.all
  end

  # GET /global_jqueries/1
  # GET /global_jqueries/1.json
  def show
  end

  # GET /global_jqueries/new
  def new
    @global_jquery = GlobalJquery.new
    @global_jquery.build_topic
  end

  # GET /global_jqueries/1/edit
  def edit
  end

  # POST /global_jqueries
  # POST /global_jqueries.json
  def create
    @global_jquery = GlobalJquery.new(global_jquery_params)

    respond_to do |format|
      if @global_jquery.save
        format.html { redirect_to @global_jquery, notice: 'Global jquery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @global_jquery }
      else
        format.html { render action: 'new' }
        format.json { render json: @global_jquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /global_jqueries/1
  # PATCH/PUT /global_jqueries/1.json
  def update
    respond_to do |format|
      if @global_jquery.update(global_jquery_params)
        format.html { redirect_to @global_jquery, notice: 'Global jquery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @global_jquery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /global_jqueries/1
  # DELETE /global_jqueries/1.json
  def destroy
    @global_jquery.destroy
    respond_to do |format|
      format.html { redirect_to global_jqueries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_jquery
      @global_jquery = GlobalJquery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_jquery_params
      # params[:global_jquery]
      params.require(:global_jquery).permit(topic_attributes:[:name,:description])
    end
end
