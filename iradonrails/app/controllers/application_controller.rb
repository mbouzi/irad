class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def parse_string_to_a(string)
    string.gsub(' ', '').split(',')
  end
end
