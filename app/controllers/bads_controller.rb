class BadsController < ApplicationController
  def create
    @bads = Bad.where("user_id = ? and item_id = ?", params[:user_id], params[:item_id])
    if @bads.count > 0
      @bads.map{|b| b.destroy }
    else
      Bad.create(item_id: params[:item_id], user_id: params[:user_id])
    end
    render json: [{count: Bad.all.count}]
  end
end
