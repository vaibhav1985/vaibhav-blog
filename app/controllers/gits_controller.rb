class GitsController < ApplicationController
	before_action :set_git, only: [:show, :edit, :update, :destroy]

  # GET /gits
  # GET /gits.json
  def index
    @gits = Git.all
  end

  # GET /gits/1
  # GET /gits/1.json
  def show
  end

  # GET /gits/new
  def new
    @git = Git.new
    @git.build_topic
  end

  # GET /gits/1/edit
  def edit
  end

  # POST /gits
  # POST /gits.json
  def create
    @git = Git.new(git_params)

    respond_to do |format|
      if @git.save
        format.html { redirect_to @git, notice: 'Git was successfully created.' }
        format.json { render action: 'show', status: :created, location: @git }
      else
        format.html { render action: 'new' }
        format.json { render json: @git.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gits/1
  # PATCH/PUT /gits/1.json
  def update
    respond_to do |format|
      if @git.update(git_params)
        format.html { redirect_to @git, notice: 'Git was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @git.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gits/1
  # DELETE /gits/1.json
  def destroy
    @git.destroy
    respond_to do |format|
      format.html { redirect_to gits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_git
      @git = Git.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def git_params
      # params[:git]
      params.require(:git).permit(topic_attributes:[:name,:description])
    end
end
