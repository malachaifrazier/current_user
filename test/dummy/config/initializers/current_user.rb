::CurrentUser.setup do |config|

  # Setup an authentication key.
  # If you want use your own key just remove the code block belong and
  # type something like this: config.authentication_key = '4242424242424242'
  key_file_path = File.expand_path 'config/current_user/key', Rails.root
  if File.exist? key_file_path
    key = File.open(key_file_path) { |f| f.readline }
    config.authentication_key = key
  end

end