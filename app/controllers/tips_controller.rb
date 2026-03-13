class TipsController < ApplicationController
  def index
    @categories = Category.all
    @tips = if params[:category_id].present?
              Tip.where(category_id: params[:category_id]).order(created_at: :desc)
            else
              Tip.order(created_at: :desc)
            end
  end
  
  def new
    @tip = Tip.new
  end

  def create
    @tip = current_user.tips.new(tips_params)
    if @tip.save
      redirect_to tip_path(@tip), success: t('tips.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def tips_params
    params.require(:tip).permit(:title, :problem, :hypothesis, :action, :learning, :category_id)
  end
end
