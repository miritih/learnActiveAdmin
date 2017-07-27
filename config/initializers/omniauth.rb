OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '444134830637-jj09ksa6jvgrp420rcjpbmkapb6rkcju.apps.googleusercontent.com', 'V9H9ZozGUuexMjE4CNRzfGp6',
  {
    hd: 'nbo.samadc.org',
    scope: ['https://mail.google.com/','contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
  }
end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, '444134830637-jj09ksa6jvgrp420rcjpbmkapb6rkcju.apps.googleusercontent.com', 'V9H9ZozGUuexMjE4CNRzfGp6',
#   {
#     hd: 'nbo.samadc.org',
#     name: 'google',
#     scope: ['contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
#   }
# end