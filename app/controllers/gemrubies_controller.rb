class GemrubiesController < ApplicationController
	before_action :set_gemruby, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /gemrubies
  # GET /gemrubies.json
  def index
    @gemrubies = Gemruby.all
  end

  # GET /gemrubies/1
  # GET /gemrubies/1.json
  def show
  end

  # GET /gemrubies/new
  def new
    @gemruby = Gemruby.new
     @gemruby.build_topic
  end

  # GET /gemrubies/1/edit
  def edit
  end

  # POST /gemrubies
  # POST /gemrubies.json
  def create
    @gemruby = Gemruby.new(gemruby_params)

    respond_to do |format|
      if @gemruby.save
        format.html { redirect_to @gemruby, notice: 'Gemruby was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gemruby }
      else
        format.html { render action: 'new' }
        format.json { render json: @gemruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gemrubies/1
  # PATCH/PUT /gemrubies/1.json
  def update
    respond_to do |format|
      if @gemruby.update(gemruby_params)
        format.html { redirect_to @gemruby, notice: 'Gemruby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gemruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemrubies/1
  # DELETE /gemrubies/1.json
  def destroy
    @gemruby.destroy
    respond_to do |format|
      format.html { redirect_to gemrubies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gemruby
      @gemruby = Gemruby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gemruby_params
      # params[:gemruby]
      params.require(:gemruby).permit(topic_attributes:[:name,:description])
    end
end
