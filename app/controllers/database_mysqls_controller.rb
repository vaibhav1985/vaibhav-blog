class DatabaseMysqlsController < ApplicationController
	before_action :set_database_mysql, only: [:show, :edit, :update, :destroy]

  # GET /database_mysqls
  # GET /database_mysqls.json
  def index
    @database_mysqls = DatabaseMysql.all
  end

  # GET /database_mysqls/1
  # GET /database_mysqls/1.json
  def show
  end

  # GET /database_mysqls/new
  def new
    @database_mysql = DatabaseMysql.new
    @database_mysql.build_topic
  end

  # GET /database_mysqls/1/edit
  def edit
  end

  # POST /database_mysqls
  # POST /database_mysqls.json
  def create
    @database_mysql = DatabaseMysql.new(database_mysql_params)

    respond_to do |format|
      if @database_mysql.save
        format.html { redirect_to @database_mysql, notice: 'Database mysql was successfully created.' }
        format.json { render action: 'show', status: :created, location: @database_mysql }
      else
        format.html { render action: 'new' }
        format.json { render json: @database_mysql.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database_mysqls/1
  # PATCH/PUT /database_mysqls/1.json
  def update
    respond_to do |format|
      if @database_mysql.update(database_mysql_params)
        format.html { redirect_to @database_mysql, notice: 'Database mysql was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @database_mysql.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database_mysqls/1
  # DELETE /database_mysqls/1.json
  def destroy
    @database_mysql.destroy
    respond_to do |format|
      format.html { redirect_to database_mysqls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database_mysql
      @database_mysql = DatabaseMysql.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def database_mysql_params
      # params[:database_mysql]
      params.require(:database_mysql).permit(topic_attributes:[:name,:description])
    end
end
