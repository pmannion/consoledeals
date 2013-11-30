class Admin::BranchesController < ApplicationController

  def index
    @branches = Branch.where(display: true)
  end

  def inactive
    @branches = Branch.where(display: false)
  end

  def new
    @branch = Branch.new
  end

  def create
    @branch = Branch.new(params[:branch])
    if @branch.save
      flash[:notice] = "The branch was created"
      redirect_to admin_path
    else
      flash[:alert] = "That branch could not be created"
      render 'new'
    end
  end

  def edit
    @branch = Branch.find(params[:id])
  end

  def update
    @branch = Branch.find(params[:id])
    if @branch.update_attributes(params[:branch])
      flash[:notice] = 'Branch has been updated'
      redirect_to admin_path
    end
  end

end
