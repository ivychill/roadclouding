Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :weibo, '4054595895', 'bc4d96b5235742487a559f43a8b585fd'  
  provider :facebook, '4054595895', 'bc4d96b5235742487a559f43a8b585fd'  
  provider :github, '6c1cac8a856b82a2a86d', 'df02bd4b2d3248fb56a4bcb39627d9bc6826e9a9'  
end