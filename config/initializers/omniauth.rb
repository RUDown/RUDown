OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1045348475496239', '27ae2bfa79d0ed44f042cb18b5c86001', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end