module Api
  module V1
    class SubscriptionsController < ApplicationController
      def create
        subscription = Subscription.new(subscription_params)

        if subscription.save
          render json: SubscriptionSerializer.new(subscription).serialized_json
        else
          render json: { error: subscription.errors.messages }, status: 422
        end
      end

      def destroy
        subscription = Subscription.find(params[:id])

        if subscription.destroy
          head :no_content
        else
          render json: { error: subscription.errors.messages }, status: 422
        end
      end

      private

      def subscription_params
        params.require(:subscription).permit(:product_url, :start_price, :target_price, :is_subscribed, :user_id)
      end
    end
  end
end
