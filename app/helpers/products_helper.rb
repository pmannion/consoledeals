module ProductsHelper

  def product_path(product)
    "/view-product-details/#{product.id}/"

  end
end
