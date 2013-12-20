class UbuntusController < ApplicationController
	before_action :set_ubuntu, only: [:show, :edit, :update, :destroy]

  # GET /ubuntus
  # GET /ubuntus.json
  def index
    @ubuntus = Ubuntu.all
  end

  # GET /ubuntus/1
  # GET /ubuntus/1.json
  def show
  end

  # GET /ubuntus/new
  def new
    @ubuntu = Ubuntu.new
    @ubuntu.build_topic
  end

  # GET /ubuntus/1/edit
  def edit
  end

  # POST /ubuntus
  # POST /ubuntus.json
  def create
    @ubuntu = Ubuntu.new(ubuntu_params)

    respond_to do |format|
      if @ubuntu.save
        format.html { redirect_to @ubuntu, notice: 'Ubuntu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ubuntu }
      else
        format.html { render action: 'new' }
        format.json { render json: @ubuntu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ubuntus/1
  # PATCH/PUT /ubuntus/1.json
  def update
    respond_to do |format|
      if @ubuntu.update(ubuntu_params)
        format.html { redirect_to @ubuntu, notice: 'Ubuntu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ubuntu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubuntus/1
  # DELETE /ubuntus/1.json
  def destroy
    @ubuntu.destroy
    respond_to do |format|
      format.html { redirect_to ubuntus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ubuntu
      @ubuntu = Ubuntu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ubuntu_params
      # params[:ubuntu]
      params.require(:ubuntu).permit(topic_attributes:[:name,:description])
    end
end
