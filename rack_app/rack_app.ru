require_relative './application'
require_relative 'middlewares/favicon_middleware'
require_relative 'middlewares/application_logger_middleware'

use Rack::Reloader, 0
use FaviconMiddleware
use ApplicationLoggerMiddleware
run Application.new
