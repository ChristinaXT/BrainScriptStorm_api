class ApplicationController < ActionController::API
  helper do
    def current_user
      #currently a mock verseion of being logged in 
      User.first
    end

    def logged_in?
      !!current_user
    end
  end
end
