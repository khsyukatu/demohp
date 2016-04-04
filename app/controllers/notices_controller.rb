class NoticesController < ApplicationController
  def index
    @notices = Notice.all
  end

  def show
    @notice = Notice.find(params[:id])
  end
  
  def new
    @notice = Notice.new
  end
  
  def create
    @notice = Notice.new(notice_params)
    @notice.save
    redirect_to root_path, notice: 'お知らせを追加しました。'
  end
  
  private
  def notice_params
    params.require(:notice).permit(:title, :body)
  end
  
end
