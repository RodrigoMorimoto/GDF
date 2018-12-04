class WelcomeController < ApplicationController
    def index
        @user = User.find_by(id: cookies[:user])

    end
end
