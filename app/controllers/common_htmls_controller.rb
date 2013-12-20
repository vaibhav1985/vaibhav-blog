class CommonHtmlsController < ApplicationController
	 before_action :set_common_html, only: [:show, :edit, :update, :destroy]
   before_filter :authenticate_user! 
  # GET /common_htmls
  # GET /common_htmls.json
  def index
    @common_htmls = CommonHtml.all
  end

  # GET /common_htmls/1
  # GET /common_htmls/1.json
  def show
  end

  # GET /common_htmls/new
  def new
    @common_html = CommonHtml.new
    @common_html.build_topic
  end

  # GET /common_htmls/1/edit
  def edit
  end

  # POST /common_htmls
  # POST /common_htmls.json
  def create
    @common_html = CommonHtml.new(common_html_params)

    respond_to do |format|
      if @common_html.save
        format.html { redirect_to @common_html, notice: 'Common html was successfully created.' }
        format.json { render action: 'show', status: :created, location: @common_html }
      else
        format.html { render action: 'new' }
        format.json { render json: @common_html.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /common_htmls/1
  # PATCH/PUT /common_htmls/1.json
  def update
    respond_to do |format|
      if @common_html.update(common_html_params)
        format.html { redirect_to @common_html, notice: 'Common html was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @common_html.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /common_htmls/1
  # DELETE /common_htmls/1.json
  def destroy
    @common_html.destroy
    respond_to do |format|
      format.html { redirect_to common_htmls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_common_html
      @common_html = CommonHtml.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def common_html_params
      # params[:common_html]
      params.require(:common_html).permit(topic_attributes:[:name,:description])
    end
end
