class Admin::ProductsController < AdminController

  def index
    @products = Product.where(display: true).paginate(per_page: 20,page:params[:page], include: [:supplier, :console], order: ('created_at DESC'))
    respond_to do |format|
      format.html
      format.js { @products }
    end
  end

  def inactive
    @products = Product.where(display: false).paginate(per_page: 20,page: params[:page],include: [:supplier, :console], order: ('created_at DESC'))
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "You have created a new product"
      redirect_to admin_path
    else
      flash[:alert] ="That product could not be created"
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = "The product has been updated"
      redirect_to admin_path
    else
      flash[:alert] = "There was a problem with the update"
      redirect_to :back
    end
  end

end
