class WikisController < ApplicationController
  # givinf show, edit, update, destroy the Wiki.find code
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @wikis = Wiki.all
  end

  def create
    @wiki = Wiki.new(wiki_params)
    if @wiki.save
      redirect_to @wiki
    else
      render :new
    end
  end

  def new
    @wiki = Wiki.new
  end

  def edit
  end

  # not sure why before action wouldn't work is set for show
  def show
    @wiki = Wiki.find(params[:id])
  end

  def update
    if @wiki.update(wiki_params)
      redirect_to @wiki
    else
      render :edit
    end
  end

  def destroy
    @wiki.destroy
    redirect_to wikis_url, status: :see_other
  end

  private

  def set_wiki
    @wiki = Wiki.find(params[:id])
  end

  def wiki_params
    params.require(:wiki).permit(:title, :content)
  end
end
