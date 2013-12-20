class JavaStrutsController < ApplicationController
  before_action :set_java_strut, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /java_struts
  # GET /java_struts.json
  def index
    @java_struts = JavaStrut.all
  end

  # GET /java_struts/1
  # GET /java_struts/1.json
  def show
  end

  # GET /java_struts/new
  def new
    @java_strut = JavaStrut.new
    @java_strut.build_topic
  end

  # GET /java_struts/1/edit
  def edit
  end

  # POST /java_struts
  # POST /java_struts.json
  def create
    @java_strut = JavaStrut.new(java_strut_params)

    respond_to do |format|
      if @java_strut.save
        format.html { redirect_to @java_strut, notice: 'Java strut was successfully created.' }
        format.json { render action: 'show', status: :created, location: @java_strut }
      else
        format.html { render action: 'new' }
        format.json { render json: @java_strut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /java_struts/1
  # PATCH/PUT /java_struts/1.json
  def update
    respond_to do |format|
      if @java_strut.update(java_strut_params)
        format.html { redirect_to @java_strut, notice: 'Java strut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @java_strut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /java_struts/1
  # DELETE /java_struts/1.json
  def destroy
    @java_strut.destroy
    respond_to do |format|
      format.html { redirect_to java_struts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_strut
      @java_strut = JavaStrut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_strut_params
      # params[:java_strut]
      params.require(:java_strut).permit(topic_attributes:[:name,:description])   
    end
end
