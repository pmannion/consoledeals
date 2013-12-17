class GiftsearchesController < ApplicationController
 # new action not needed for now all done int the results action !
   before_filter :fetch_seacrh, :only => :results

  def new
    if @giftsearch.nil?
      @giftsearch = Giftsearch.new
    end
  end

  def results
    # get the gift search parameters and if it saves use the filters
    # add more filters as needed ... city ?
    #save current user_id to giftsearch, ability to show users last searches
      if @giftsearch.nil? || @giftsearch.id.nil?
       @giftsearch = Giftsearch.new(params[:giftsearch])
      else
        @giftsearch = Giftsearch.update(@giftsearch.id, params[:giftseacrh])
      end

      if current_user
        @giftsearch.user_id  = current_user.id
      end

      @cart = current_cart

      if @giftsearch.save
        session[:giftsearch_id] = @giftsearch.id
        if @giftsearch.show_games == false
        conditions = Product.order('price ASC')
        conditions = conditions.where(console_id: @giftsearch.console_id)
        conditions = conditions.where("price <= ?", @giftsearch.max_spend)
        conditions = conditions.where(is_bundle: true)
        @products = conditions.includes([:supplier], [:console])
       end
        if @giftsearch.show_games == true
          conditions = Product.order('price ASC')
          conditions = conditions.where(console_id: @giftsearch.console_id)
          conditions = conditions.where("price <= ?", @giftsearch.max_spend)
          @products = conditions.includes([:supplier],[:console])
        end
      end
    respond_to do |format|
      format.html
      format.js { @products}
    end
  end


   # set up a compare action
  def compare
    unless params[:giftsearch]
      redirect_to :back
    end
    #create the empty array which will eventuall hold the compared products
    array = []
    #get all the params from the giftsearch, store in two variables
    params[:giftsearch].each do |key,value|
      # if a value is present put it in the array
      if (value == "1")
        array << key
      end
    end
    #if the array is not the required size, tell the customer !
    if array.size < 1 || array.size > 3
      flash[:alert] = "You must compare between 1 and three different products"
      redirect :back
    end
    # Product id is the array value
    @compare = Product.where({:id => array}).includes(:supplier)
  end

  private

  def fetch_seacrh
    if params[:giftsearch_id]
      @giftsearch = Giftsearch.find(session[:giftsearch_id])
    end
  end


end
















