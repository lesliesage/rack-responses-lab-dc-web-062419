class Application
  def call(env)

    resp = Rack::Response.new

    time = Time.now

    resp.write "The time is #{time}. "

    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
