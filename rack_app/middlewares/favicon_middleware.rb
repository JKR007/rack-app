class FaviconMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    @status, @headers, @response = @app.call(env)
    return [@status, @headers, ['favicon.ico']] if env['PATH_INFO'] == '/favicon.ico'

    [@status, @headers, @response]
  end
end
