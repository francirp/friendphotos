Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '449993895087372', '5be63f37b39be7905015608598fc41e2',
           :scope => 'email,user_photos,friends_photos', :display => 'popup'
end
