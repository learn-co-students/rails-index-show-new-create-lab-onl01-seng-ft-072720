class CreateCoupons < ActiveRecord::Migrations[5.0]

    def change
        create_table :coupons do |t|
            t.string :coupon_code,
            t.string :store
        end
    end
end