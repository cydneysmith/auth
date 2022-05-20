class SessionsController < ApplicationController

    def new
    end

    def create
        # step 1: check to see if there's a user with the email that was provided - "if" shows us if there's a record in the db
        @user = User.find_by({"email" => params["email"] })
                    #this is a row in the database. it represents a user from the db
        if @user 
            # step 1a: if yes, check the password (go to step 2)
            # step 2: check the password to see if it matches the user's password
            if params["password"] == @user["password"]
                # step 2a: if yes, go to the companies page
                flash["notice"] = "You're in!"
                redirect_to "/companies"
            else
                # step 2b: if no, go back to login page
                flash["notice"] = "Incorrect credentials"
                redirect_to "/sessions/new" 
            end
        else
            # step 1b: if no, go back to login page
            flash["notice"] = "Incorrect credentials"
            redirect_to "/sessions/new"
        end
    end
end
