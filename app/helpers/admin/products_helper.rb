module Admin::ProductsHelper

  def edit_product_path(product)
    "/admin/products/#{product.id}/edit/"
  end
end
