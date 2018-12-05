class SelecaoController < ApplicationController
    def index
        @fichas = Sheet.all
        @current_user = User.find_by(id: cookies[:user])
        if not(params[:sistema]=='1') #checa se sistema selecionado é "todos"
            @fichas = @fichas.where("sistema like ?","#{params[:sistema]}")#filtra sistema escolhido
        end
    end
    def new
    end
    def create
        @a = params
        @ficha = Sheet.new
        @ficha.name = @a[:name]
        @ficha.level = @a[:level]
        @ficha.classe = @a[:classe]
        @ficha.race = @a[:race]
        @ficha.hp = @a[:hp]
        @ficha.ac = @a[:ac]
        @ficha.sistema=@a[:sistema]
        @current_user = User.find_by(id: cookies[:user])
        @ficha.usuario =   @current_user.id # ALTERAR PARA ACESSAR A SESSÃO DO USER PELO COOKIE
        @ficha.save
        redirect_to selecao_path
    end
end
