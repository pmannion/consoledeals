class Admin::SuppliersController < AdminController


  def index
    @suppliers = Supplier.where(display: true).paginate(per_page: 10, page: params[:page], order: ('created_at DESC'))
  end

  def inactive
    @suppliers = Supplier.where(display: false).paginate(per_page: 10, page: params[:page], order: ('created_at DESC'))
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    if @supplier.save
      flash[:notice] = "You have created a new supplier"
      redirect_to root_path
    else
      flash[:alert] = "That supplier could not be saved"
      redirect_to 'new'
    end
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(params[:supplier])
      flash[:notice] = "suppliers details have been updated"
      redirect_to root_path
    else
      flash[:alert] = "That supplier could not be updated"
      render :edit
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    flash[:notice] = "that supplier has been deleted"
    redirect_to root_path
  end


end

