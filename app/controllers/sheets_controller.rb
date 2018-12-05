class SheetsController < ApplicationController
    #before_action :set_sheet, only: [:show, :edit, :update, :destroy]

    # GET /sheets
    # GET /sheets.json
    def index
      @sheets = Sheet.all
      @users = User.all
      @current_user = User.find_by(id: cookies[:user])
      @esta_ficha = @sheets.find(params[:param1])
    end

    # GET /sheets/1
    # GET /sheets/1.json
    def show
    end

    # GET /sheets/new
    def new
      @sheet = Sheet.new
    end

    # GET /sheets/1/edit
    def edit
    end

    # POST /sheets
    # POST /sheets.json
    def create
      #@sheet = Sheet.new(sheet_params)

      respond_to do |format|
        if @sheet.save
          cookies[:sheet] = @sheet[:id]
          logger.debug "Person attributes hash: #{cookies[:sheet]}"
          format.html { redirect_to @sheet, notice: 'Sheet was successfully created.' }
          format.json { render :show, status: :created, location: @sheet }
        else
          format.html { render :new }
          format.json { render json: @sheet.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /sheets/1
    # PATCH/PUT /sheets/1.json
    def update
      respond_to do |format|
        if @sheet.update(sheet_params)
          format.html { redirect_to @sheet, notice: 'Sheet was successfully updated.' }
          format.json { render :show, status: :ok, location: @sheet }
        else
          format.html { render :edit }
          format.json { render json: @sheet.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /sheets/1
    # DELETE /sheets/1.json
    def destroy
      Sheet.find(params[:id]).destroy
    end

    def edit
      @a = Sheet.find(params[:id])
    end

    def update
      #recebe params e muda valores da sheet
      @a = Sheet.find(params[:id])
      @a.name = params[:name]
      @a.level = params[:level]
      @a.classe = params[:classe]
      @a.race = params[:race]
      @a.hp = params[:hp]
      @a.ac = params[:ac]
      @a.sistema = params[:sistema]
      @a.id = params[:id]
      @a.save
      redirect_to selecao_path
    end



    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sheet
        @sheet = Sheet.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
#      def sheet_params
#        params.require(:sheet).permit(:name, :password, :email)
#      end
end
