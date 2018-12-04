class WelcomeController < ApplicationController
    def index
        @user = cookies[:user]
    end
end
