class LotsController < ApplicationController
	def index
		@lots = Lot.all
	end

	def show
		# connection = ActiveRecord::Base.connection
		# # returns total area being used by redeemed codes
		# codes_used_q = %Q(
		# 	SELECT code_status, SUM(code_area) AS total_code_area_used
		# 	FROM codes
		# 	INNER JOIN lots
		# 		ON codes.lot_id = lots.id
		# 	GROUP BY code_status
		# 		HAVING code_status = 'f';
		# 	)
			
		# @total_area_used_by_codes = connection.execute(codes_used_q)
		@lot = Lot.find(params[:id])
		
		# refactor this
		# if @total_area_used_by_codes.size > 0
		# 	@lot_available_area = @lot.lot_area - @total_area_used_by_codes[0]['total_code_area_used']
		# else
		# 	@lot_available_area = @lot.lot_area
		# end
			

	end

	def new
		@lot = Lot.new
	end

	def edit
		@lot = Lot.find(params[:id])
	end

	def create
		@lot = Lot.new(lot_params)


		if @lot.save
			redirect_to @lot
		else
			render 'new'
		end
		#render plain: params[:lot].inspect
	end

	def update
		@lot = Lot.find(params[:id])

		if @lot.update(lot_params)
			redirect_to @lot
		else
			render 'edit'
		end
	end

	

	def destroy
		@lot = Lot.find(params[:id])
		@lot.destroy

		redirect_to lots_path
	end
	
	private
		def lot_params
			params.require(:lot).permit(:lot_name, :lot_area, :lot_available_area)
		end
	
end
