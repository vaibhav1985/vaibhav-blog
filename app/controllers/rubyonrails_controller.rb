class RubyonrailsController < ApplicationController
	before_action :set_rubyonrail, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /rubyonrails
  # GET /rubyonrails.json
  def index
    @rubyonrails = Rubyonrail.all
  end

  # GET /rubyonrails/1
  # GET /rubyonrails/1.json
  def show
  end

  # GET /rubyonrails/new
  def new
    @rubyonrail = Rubyonrail.new
    @rubyonrail.build_topic
  end

  # GET /rubyonrails/1/edit
  def edit
  end

  # POST /rubyonrails
  # POST /rubyonrails.json
  def create
    @rubyonrail = Rubyonrail.new(rubyonrail_params)

    respond_to do |format|
      if @rubyonrail.save
        format.html { redirect_to @rubyonrail, notice: 'Rubyonrail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rubyonrail }
      else
        format.html { render action: 'new' }
        format.json { render json: @rubyonrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubyonrails/1
  # PATCH/PUT /rubyonrails/1.json
  def update
    respond_to do |format|
      if @rubyonrail.update(rubyonrail_params)
        format.html { redirect_to @rubyonrail, notice: 'Rubyonrail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rubyonrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyonrails/1
  # DELETE /rubyonrails/1.json
  def destroy
    @rubyonrail.destroy
    respond_to do |format|
      format.html { redirect_to rubyonrails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubyonrail
      @rubyonrail = Rubyonrail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubyonrail_params
      #params[:rubyonrail]
      params.require(:rubyonrail).permit(topic_attributes:[:name,:description])
    end
end
