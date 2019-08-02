class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper #save user session in helper
end
