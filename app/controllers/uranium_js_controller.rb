class UraniumJsController < ApplicationController
  before_action :set_uranium_j, only: [:show, :edit, :update, :destroy]

  # GET /uranium_js
  # GET /uranium_js.json
  def index
    @uranium_js = UraniumJ.all
  end

  # GET /uranium_js/1
  # GET /uranium_js/1.json
  def show
  end

  # GET /uranium_js/new
  def new
    @uranium_j = UraniumJ.new
    @uranium_j.build_topic
  end

  # GET /uranium_js/1/edit
  def edit
  end

  # POST /uranium_js
  # POST /uranium_js.json
  def create
    @uranium_j = UraniumJ.new(uranium_j_params)

    respond_to do |format|
      if @uranium_j.save
        format.html { redirect_to @uranium_j, notice: 'Uranium j was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uranium_j }
      else
        format.html { render action: 'new' }
        format.json { render json: @uranium_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uranium_js/1
  # PATCH/PUT /uranium_js/1.json
  def update
    respond_to do |format|
      if @uranium_j.update(uranium_j_params)
        format.html { redirect_to @uranium_j, notice: 'Uranium j was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uranium_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uranium_js/1
  # DELETE /uranium_js/1.json
  def destroy
    @uranium_j.destroy
    respond_to do |format|
      format.html { redirect_to uranium_js_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uranium_j
      @uranium_j = UraniumJ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uranium_j_params
      params.require(:uranium_j).permit(topic_attributes:[:name,:description])
      #params[:uranium_j]
    end
end
