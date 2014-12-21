class ApiController < ApplicationController
  skip_filter :verify_authenticity_token
  
  private
    def current_api_key
        @api_key ||= ApiKey.find_by(access_token: params[:access_token])
        @api_key
    end

    def current_user
        unless current_api_key.nil?
            @current_user ||= current_api_key.user
            @current_user
        end
    end
end