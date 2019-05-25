class GoodsController < ApplicationController
  def create
    @goods = Good.where("user_id = ? and item_id = ?", params[:user_id], params[:item_id])
    if @goods.count > 0
      @goods.map{|g| g.destroy }
    else
      Good.create(item_id: params[:item_id], user_id: params[:user_id])
    end
    render json: [{count: Good.all.count}]
  end
end
