class CardsController < ApplicationController
  layout 'cards'

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    if request.post? then
      Card.create(card_params)
      goback
    else
      @card = Card.new
    end
  end

  def edit
    @card = Card.find(params[:id])
    if request.patch? then
      @card.update(card_params)
      goback
    end
  end

  def delete
    Card.find(params[:id])
    goback
  end

  def find
    @msg  = "please type search word..."
    @people = Array.new
    if request.post? then
      @people = Person.where name: params[:find]
    end
  end
  
  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end

  def goback
    redirect_to '/cards'
  end
end
