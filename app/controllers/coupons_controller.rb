class CouponsController < ApplicationController
	before_action :set_coupon, only: [:show, :edit, :destroy]

	def index
		@coupons = Coupon.all
	end

	def show
	end

	def new
		@coupon = Coupon.new
	end

	def create
		@coupon = Coupon.new#(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
		@coupon.coupon_code = params[:coupon][:coupon_code]
		@coupon.store = params[:coupon][:store]
		if @coupon.save
			redirect_to coupon_path(@coupon)
		else
			render :new
		end
	end

	def destroy
		@coupon.destroy
		redirect_to coupons_path
	end

	private

	def set_coupon
		@coupon = Coupon.find(params[:id])
	end
end
