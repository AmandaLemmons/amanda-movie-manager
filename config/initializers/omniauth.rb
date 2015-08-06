# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, "402026696658612", "549e1804e657a8569dfc915cfa2711fd",
#   :scope => 'user_birthday,user_about_me,email', :display => 'popup'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'], {
  scope: ['email',
    'https://www.googleapis.com/auth/gmail.modify'],
    access_type: 'offline'}
end
