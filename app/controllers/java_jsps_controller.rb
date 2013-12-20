class JavaJspsController < ApplicationController
	 before_action :set_java_jsp, only: [:show, :edit, :update, :destroy]

  # GET /java_jsps
  # GET /java_jsps.json
  def index
    @java_jsps = JavaJsp.all
  end

  # GET /java_jsps/1
  # GET /java_jsps/1.json
  def show
  end

  # GET /java_jsps/new
  def new
    @java_jsp = JavaJsp.new
    @java_jsp.build_topic
  end

  # GET /java_jsps/1/edit
  def edit
  end

  # POST /java_jsps
  # POST /java_jsps.json
  def create
    @java_jsp = JavaJsp.new(java_jsp_params)

    respond_to do |format|
      if @java_jsp.save
        format.html { redirect_to @java_jsp, notice: 'Java jsp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @java_jsp }
      else
        format.html { render action: 'new' }
        format.json { render json: @java_jsp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /java_jsps/1
  # PATCH/PUT /java_jsps/1.json
  def update
    respond_to do |format|
      if @java_jsp.update(java_jsp_params)
        format.html { redirect_to @java_jsp, notice: 'Java jsp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @java_jsp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /java_jsps/1
  # DELETE /java_jsps/1.json
  def destroy
    @java_jsp.destroy
    respond_to do |format|
      format.html { redirect_to java_jsps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_jsp
      @java_jsp = JavaJsp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_jsp_params
      params.require(:java_jsp).permit(topic_attributes:[:name,:description])		
      # params[:java_jsp]
    end
end
