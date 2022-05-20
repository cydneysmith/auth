class ApplicationController < ActionController::Base
before_action :set_current_user #before every action, do this code.

    def set_current_user
        @current_user = User.find_by({"id" => session["user_id"]}) #that's how we're going to grab the object from session cookies
    end

end
