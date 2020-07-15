class CodesController < ApplicationController
  def create
   @lot = Lot.find(params[:lot_id])
   @code = @lot.codes.create(code_params)
   redirect_to lot_path(@lot)       
  end
  def redeem
		# @lot = Lot.find(params[:id])
		# @lotId = @lot.id
		# lot.update_columns(lot_available_area: @lot.lot_area - @lot.codes.code_area)
		# @code = Code.find_by(params[:id])
		# @codes = Code.all
		# @codes = Code.where(params[:id])
		# if @codes = Code.where(params[:id])
		# 	@error = p 'oelo'
		# else
		# 	@error = p 'mal'
		# end
		# @code = Code.find(params[:id])
		# @codeCode = Code.first
		@code = Code.find(params[:id])
		# @code = @codes.find_by(@codes.code_name)
		# @lotId = Code.find_by(@codename.lot_id)
		# @lot = Lot.find_by(id: @lotId)
		# @redeemed_area = @lot.lot_available_area - @code.code_area
		# @redeem_action = @lot.update_columns(lot_available_area: @redeemed_area)
		
		

	end
  private
    def code_params
      params.require(:code).permit(:code_name, :code_area, :code_status)
    end
end
