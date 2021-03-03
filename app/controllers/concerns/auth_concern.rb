module AuthConcern
  extend ActiveSupport::Concern

  def decode_token
    token = request.headers['Authorization'].split[1]
    @decoded_token = JWT.decode token, nil, false
  end
end
