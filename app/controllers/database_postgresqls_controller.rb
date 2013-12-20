class DatabasePostgresqlsController < ApplicationController
	 before_action :set_database_postgresql, only: [:show, :edit, :update, :destroy]

  # GET /database_postgresqls
  # GET /database_postgresqls.json
  def index
    @database_postgresqls = DatabasePostgresql.all
  end

  # GET /database_postgresqls/1
  # GET /database_postgresqls/1.json
  def show
  end

  # GET /database_postgresqls/new
  def new
    @database_postgresql = DatabasePostgresql.new
    @database_postgresql.build_topic
  end

  # GET /database_postgresqls/1/edit
  def edit
  end

  # POST /database_postgresqls
  # POST /database_postgresqls.json
  def create
    @database_postgresql = DatabasePostgresql.new(database_postgresql_params)

    respond_to do |format|
      if @database_postgresql.save
        format.html { redirect_to @database_postgresql, notice: 'Database postgresql was successfully created.' }
        format.json { render action: 'show', status: :created, location: @database_postgresql }
      else
        format.html { render action: 'new' }
        format.json { render json: @database_postgresql.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database_postgresqls/1
  # PATCH/PUT /database_postgresqls/1.json
  def update
    respond_to do |format|
      if @database_postgresql.update(database_postgresql_params)
        format.html { redirect_to @database_postgresql, notice: 'Database postgresql was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @database_postgresql.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database_postgresqls/1
  # DELETE /database_postgresqls/1.json
  def destroy
    @database_postgresql.destroy
    respond_to do |format|
      format.html { redirect_to database_postgresqls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database_postgresql
      @database_postgresql = DatabasePostgresql.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def database_postgresql_params
      # params[:database_postgresql]
      params.require(:database_postgresql).permit(topic_attributes:[:name,:description])
    end
end
