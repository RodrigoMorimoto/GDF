class LogginsController < ApplicationController
  #before_action :block_access, except: [:destroy]
    def create
              @user = User.find_by(name: params[:loggin][:name].downcase)
              if @user.nil?
                  redirect_to loggin_path
              else
                  if @user[:password] == (params[:loggin][:password])
                                  #sign_in(@mestre)
                          cookies[:user] = @user[:id]
                          #redirect_to root_path
                          redirect_to root_path
                  else
                          redirect_to loggin_path
                  end
          end
    end
  end
