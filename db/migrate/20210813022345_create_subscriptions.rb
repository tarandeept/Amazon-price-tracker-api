class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :product_url
      t.decimal :start_price
      t.decimal :target_price
      t.boolean :is_subscribed
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
