class ApplicationController < ActionController::Base
    before_action :set_users
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend

    require 'pagy/extras/bootstrap'

    def set_users
        @users = User.all

        if params[:query_text].present?
        @users = @users.search_full_text(params[:query_text])
        end
    end
end
