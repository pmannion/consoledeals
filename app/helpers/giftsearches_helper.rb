module GiftsearchesHelper

  def gift_search_path
    "/search-for-your-perfect-console-deal/"
  end

  def gift_search_results_path
    '/showing-your-gift-search-results/'
  end

  def compare_products_path(product)
    "/compare-products/#{product.id}/"
  end

end
