module AdvertsHelper

  def create_advert_path
    '/create-advert/'
  end

  def new_advert_path
    '/create-new-advert/'
  end

  def adverts_path
    '/view-adverts/'
  end

  def destroy_advert_path(advert)
    "/adverts/#{advert.id}/delete/"
  end

end

