module Admin::BranchesHelper

  def create_branch_path
    '/admin/branches/new/'
  end

  def branches_path
    '/admin/branches/index/'
  end

  def edit_branch_path(branch)
    "/admin/branches/#{branch.id}/edit/"
  end

  def update_branch_path(branch)
    "/admin/branches/#{branch.id}/update/"
  end

  def inactive_branches_path
    '/admin/branches/inactive/'
  end
end
