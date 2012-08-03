Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :weibo, '4054595895', 'bc4d96b5235742487a559f43a8b585fd'  
end