module Admin::ConsolesHelper

  def create_console_path
    '/admin/consoles/new/'
  end

  def consoles_path
    '/admin/consoles/index/'
  end

  def edit_console_path(console)
    "/admin/consoles/#{console.id}/edit/"
  end

  def update_console_path(console)
    "/admin/consoles/#{console.id}/update/"
  end

  def destroy_console_path(console)
    "/admin/consoles/#{console.id}/delete/"
  end
end
