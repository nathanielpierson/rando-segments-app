Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Wildcard origins "*" cannot be used with credentials: true (browser CORS rule).
    origins ENV.fetch("CORS_ALLOWED_ORIGINS", "http://localhost:5173,http://localhost:5174,http://localhost:3000").split(",").map(&:strip)

    resource "*", headers: :any, credentials: true, methods: [ :get, :post, :patch, :put, :delete ]
  end
end
