class ApplicationLoggerMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    request_started_at = Time.now
    @status, @headers, @response = @app.call(env)
    request_ended_at = Time.now

    puts '=' * 50
    puts "GET: \"#{env['PATH_INFO']}\""
    puts "Request time: #{request_ended_at.to_f - request_started_at.to_f} seconds."
    puts '=' * 50

    [@status, @headers, @response]
  end
end
