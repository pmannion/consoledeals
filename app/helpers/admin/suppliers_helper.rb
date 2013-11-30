module Admin::SuppliersHelper


  def suppliers_path
    '/admin/suppliers/index'
  end

  def create_supplier_path
    '/admin/suppliers/create/'
  end

  def edit_supplier_path(supplier)
    "/admin/suppliers/#{supplier.id}/edit/"
  end

  def update_supplier_path(supplier)
    "/admin/suppliers/#{supplier.id}/update/"
  end

  def destroy_supplier_path(supplier)
    "/admin/suppliers/#{supplier.id}/delete/"
  end

end
