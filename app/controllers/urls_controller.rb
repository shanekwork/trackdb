require 'csv'
class UrlsController < ApplicationController


  def index
    @url = Url.order("urls.date DESC")
  end

  def welcome
    @url = Url.all
  end

  def new
    @url = Url.new#(:title => 'default')
  end

  def create
    @url = Url.new(params[:url])
    if @url.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def show
    @url = Url.find(params[:id])
  end
  def import
    Url.import(params[:file])
    redirect_to :action => 'welcome', notice: "Imported"
  end

  

  def search
    @search_term = params[:q]
    st = "%#{params[:q]}%"
    @url = Url.where("email ILIKE ? or custref ILIKE ? or order_number ILIKE ? or url4 ILIKE ? or trader_code ILIKE ? or trader_name ILIKE ?", st, st, st, st, st, st)
    respond_to do |format|
      format.html
      format.json {render json: @urls}
    end
  end

end
