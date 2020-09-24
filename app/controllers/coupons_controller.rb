class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        # byebug
        @coupon = Coupon.find_by(id: params[:id])
    end
end