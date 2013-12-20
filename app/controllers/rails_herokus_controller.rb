class RailsHerokusController < ApplicationController
	 before_action :set_rails_heroku, only: [:show, :edit, :update, :destroy]

  # GET /rails_herokus
  # GET /rails_herokus.json
  def index
    @rails_herokus = RailsHeroku.all
  end

  # GET /rails_herokus/1
  # GET /rails_herokus/1.json
  def show
  end

  # GET /rails_herokus/new
  def new
    @rails_heroku = RailsHeroku.new
    @rails_heroku.build_topic
  end

  # GET /rails_herokus/1/edit
  def edit
  end

  # POST /rails_herokus
  # POST /rails_herokus.json
  def create
    @rails_heroku = RailsHeroku.new(rails_heroku_params)

    respond_to do |format|
      if @rails_heroku.save
        format.html { redirect_to @rails_heroku, notice: 'Rails heroku was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rails_heroku }
      else
        format.html { render action: 'new' }
        format.json { render json: @rails_heroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rails_herokus/1
  # PATCH/PUT /rails_herokus/1.json
  def update
    respond_to do |format|
      if @rails_heroku.update(rails_heroku_params)
        format.html { redirect_to @rails_heroku, notice: 'Rails heroku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rails_heroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rails_herokus/1
  # DELETE /rails_herokus/1.json
  def destroy
    @rails_heroku.destroy
    respond_to do |format|
      format.html { redirect_to rails_herokus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rails_heroku
      @rails_heroku = RailsHeroku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rails_heroku_params
      # params[:rails_heroku]
      params.require(:rails_heroku).permit(topic_attributes:[:name,:description])
    end
end
