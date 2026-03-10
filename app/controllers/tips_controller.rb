class TipsController < ApplicationController
  def index
    @tips = Tip.all
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
