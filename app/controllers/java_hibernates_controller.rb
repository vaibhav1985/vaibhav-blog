class JavaHibernatesController < ApplicationController
	before_action :set_java_hibernate, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /java_hibernates
  # GET /java_hibernates.json
  def index
    @java_hibernates = JavaHibernate.all
  end

  # GET /java_hibernates/1
  # GET /java_hibernates/1.json
  def show
  end

  # GET /java_hibernates/new
  def new
    @java_hibernate = JavaHibernate.new
     @java_hibernate.build_topic
  end

  # GET /java_hibernates/1/edit
  def edit
  end

  # POST /java_hibernates
  # POST /java_hibernates.json
  def create
    @java_hibernate = JavaHibernate.new(java_hibernate_params)

    respond_to do |format|
      if @java_hibernate.save
        format.html { redirect_to @java_hibernate, notice: 'Java hibernate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @java_hibernate }
      else
        format.html { render action: 'new' }
        format.json { render json: @java_hibernate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /java_hibernates/1
  # PATCH/PUT /java_hibernates/1.json
  def update
    respond_to do |format|
      if @java_hibernate.update(java_hibernate_params)
        format.html { redirect_to @java_hibernate, notice: 'Java hibernate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @java_hibernate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /java_hibernates/1
  # DELETE /java_hibernates/1.json
  def destroy
    @java_hibernate.destroy
    respond_to do |format|
      format.html { redirect_to java_hibernates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_hibernate
      @java_hibernate = JavaHibernate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_hibernate_params
      # params[:java_hibernate]
      params.require(:java_hibernate).permit(topic_attributes:[:name,:description])
    end
end
