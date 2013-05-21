class WebServiceProxy < Rack::Proxy
  def initialize(app)
    @app = app
  end

  def call(env)
    proxy = env["PATH_INFO"].starts_with? "/service/"
    if proxy then
      super(env)
    else
      @app.call(env)
    end
  end

  def rewrite_env(env)
    env["HTTP_HOST"] = "localhost:3001"
    env
  end

  def rewrite_response(triplet)
    status, headers, body = triplet

    #headers["X-Foo"] = "Bar"

    triplet
  end
end