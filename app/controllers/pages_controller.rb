class PagesController < ApplicationController
  before_action :set_page, only: :show

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    redirect_to root_url unless @page
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = if params[:url].present?
                Page.find_by_url params[:url]
              else
                Page.find(params[:id]) if params[:id].present?
              end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :body)
    end
end
