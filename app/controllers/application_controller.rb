class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end

# to memoize @_current_user ||= 
# if calling user multiple times in a transaction, 
# check if anything has been stored to the instance variable @_current_user, 
# if not, performs the next action and stores it
