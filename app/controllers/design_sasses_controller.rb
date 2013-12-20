class DesignSassesController < ApplicationController
	 before_action :set_design_sass, only: [:show, :edit, :update, :destroy]

  # GET /design_sasses
  # GET /design_sasses.json
  def index
    @design_sasses = DesignSass.all
  end

  # GET /design_sasses/1
  # GET /design_sasses/1.json
  def show
  end

  # GET /design_sasses/new
  def new
    @design_sass = DesignSass.new
    @design_sass.build_topic
  end

  # GET /design_sasses/1/edit
  def edit
  end

  # POST /design_sasses
  # POST /design_sasses.json
  def create
    @design_sass = DesignSass.new(design_sass_params)

    respond_to do |format|
      if @design_sass.save
        format.html { redirect_to @design_sass, notice: 'Design sass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @design_sass }
      else
        format.html { render action: 'new' }
        format.json { render json: @design_sass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_sasses/1
  # PATCH/PUT /design_sasses/1.json
  def update
    respond_to do |format|
      if @design_sass.update(design_sass_params)
        format.html { redirect_to @design_sass, notice: 'Design sass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @design_sass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_sasses/1
  # DELETE /design_sasses/1.json
  def destroy
    @design_sass.destroy
    respond_to do |format|
      format.html { redirect_to design_sasses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_sass
      @design_sass = DesignSass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_sass_params
      # params[:design_sass]
      params.require(:design_sass).permit(topic_attributes:[:name,:description])
    end
end
