class CategoriesController < ApplicationController
  def category_params
    params.require(:category).permit(:name, :age)
  end
end
