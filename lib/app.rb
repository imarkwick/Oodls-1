require 'sinatra'
require 'sinatra/base'
require 'sinatra/partial'
require 'data_mapper'
require 'sinatra/flash'
require_relative 'model/user'
require_relative 'data_mapper_setup'

class Oodls < Sinatra::Base

	enable :sessions
	register Sinatra::Flash
	set :session_secret, 'super secret'
  require_relative 'helpers/helper.rb'

  set :root, File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, "/views") }

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require_relative 'controllers/application.rb'
require_relative 'controllers/about_oodls.rb'
require_relative 'controllers/user.rb'
