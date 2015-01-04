class BookController < ApplicationController
  def redirect
    id = params[:id].to_i
    case id

    when 2
      redirect_to "https://www.youtube.com/watch?v=_2XOyNlb5FI"
    end
  end
end
