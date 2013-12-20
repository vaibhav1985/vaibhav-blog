class RubiesController < ApplicationController
	before_action :set_ruby, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 
  # GET /rubies
  # GET /rubies.json
  def index
    @rubies = Ruby.all
  end

  # GET /rubies/1
  # GET /rubies/1.json
  def show
  end

  # GET /rubies/new
  def new
    @ruby = Ruby.new
     @ruby.build_topic
  end

  # GET /rubies/1/edit
  def edit
  end

  # POST /rubies
  # POST /rubies.json
  def create
    @ruby = Ruby.new(ruby_params)

    respond_to do |format|
      if @ruby.save
        format.html { redirect_to @ruby, notice: 'Ruby was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ruby }
      else
        format.html { render action: 'new' }
        format.json { render json: @ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubies/1
  # PATCH/PUT /rubies/1.json
  def update
    respond_to do |format|
      if @ruby.update(ruby_params)
        format.html { redirect_to @ruby, notice: 'Ruby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubies/1
  # DELETE /rubies/1.json
  def destroy
    @ruby.destroy
    respond_to do |format|
      format.html { redirect_to rubies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby
      @ruby = Ruby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruby_params
      # params[:ruby]
      params.require(:ruby).permit(topic_attributes:[:name,:description])
    end
end
