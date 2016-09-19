class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equip_params)
    if @equipment.save
      redirect_to @equipment
    else
      render 'new'
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  private

  def equip_params
    params.require(:equipment).permit(:description, :serial_number,
                                      :asset_number, :acquisition_price,
                                      :equipmentCategory_id)
  end
end
