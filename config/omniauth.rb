Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :sina, 'APP_ID', 'APP_SECRET'  
end