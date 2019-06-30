class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.string :store
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps null: false
    end
  end  
end 
