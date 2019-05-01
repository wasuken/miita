class ItemsController < ApplicationController
  include MarkdownHelper
  def index
    @items = Item.all
  end

  def create
    plain_body = markdown(params['item']['markdown_body'])
    Item.create(title: params['item']['title'],
                markdown_body: params['item']['markdown_body'],
                plain_body: plain_body)
    redirect_to action: 'index'
  end

  def new
    @item = Item.new
  end

  def show
    @id = params[:id]
    @item = Item.find(@id)
  end
end
