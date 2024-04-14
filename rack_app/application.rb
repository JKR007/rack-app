class Application
  def call(env)
    status = 200
    headers = { 'Content-Type' => 'text/html' }
    response = ['Hello from Rack Application!']

    [status, headers, response]
  end
end
