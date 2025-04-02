Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*' # You can specify your frontend URL here like "http://localhost:3000" for dev
      resource '*',
        headers: :any,
        methods: [:get, :post, :options, :head]
    end
  end
  