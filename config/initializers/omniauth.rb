Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '449993895087372', '5be63f37b39be7905015608598fc41e2',
           :scope => 'email,user_photos,friends_photos', :display => 'popup'
end

#production app id: 449993895087372
#production app secret: 5be63f37b39be7905015608598fc41e2


#test: app id 604342566245467
#test: app secret: e2ec688e66b71c421733498a00513116
