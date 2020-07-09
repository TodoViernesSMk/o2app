class CodesController < ApplicationController
  def create
   @lot = Lot.find(params[:lot_id])
   @code = @lot.codes.create(code_params)
   redirect_to lot_path(@lot)       
  end

  private
    def code_params
      params.require(:code).permit(:code_name, :code_area, :code_status)
    end
end
