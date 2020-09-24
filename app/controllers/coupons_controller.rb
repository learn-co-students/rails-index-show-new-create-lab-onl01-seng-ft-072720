class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        find_coupon
    end

    def new

    end

    def create
        @coupon = Coupon.new(coupon_params)
        @coupon.save
        redirect_to @coupon
    end

    def edit
        find_coupon
    end

    def update
        find_coupon
    end

    def destroy
        find_coupon
    end

    private

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

    def find_coupon
        @coupon = Coupon.find_by(id: params[:id])
    end
end
