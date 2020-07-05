class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include AuthConcern
  respond_to :json
end
