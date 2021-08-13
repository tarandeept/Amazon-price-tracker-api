class SubscriptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :product_url, :start_price, :target_price, :is_subscribed, :user_id
end
