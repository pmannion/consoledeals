module Admin::ProductsHelper

  def edit_product_path(product)
    "/admin/products/#{product.id}/edit/"
  end

  def admin_products_path
    '/admin/products/index/'
  end
end
