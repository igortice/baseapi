# frozen_string_literal: true

# Always allow requests from localhost
# (blocklist & throttles are skipped)
Rack::Attack.safelist('allow from localhost') do |req|
  # Requests are allowed if the return value is truthy
  '127.0.0.1' == req.ip || '::1' == req.ip
end


# Allow an IP address to make 10 requests every 10 seconds
Rack::Attack.throttle('req/ip', limit: 5, period: 5) do |req|
  req.ip
end
