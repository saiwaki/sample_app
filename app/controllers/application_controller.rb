class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # insta = Instagram.user_search("toritori0123")
  # images = Instagram.user_recent_media(insta[0][:id], {count:5})

  # images.each do |img|
  #   img_url = img[:images][:standard_resolution][:url]
  #   filename = File.basename(img_url)

  #   open("public/#{filename}", 'wb') do |output|
  #     open(img_url) do |data|
  #       output.write(data.read)
  #     end
  #   end
  # end

end
