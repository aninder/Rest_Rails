class MyMiddleware
  def initialize(app)
  end

  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello Hello!"]]
  end
end
