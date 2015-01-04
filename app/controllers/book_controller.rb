class BookController < ApplicationController
  def redirect
    id = params[:id].to_i
    case id

    when 2
      redirect_to "https://www.youtube.com/watch?v=yPUaLbIpjt0"
    when 3
      redirect_to "https://www.youtube.com/user/ryumc92/videos"
    when 4
      redirect_to "https://www.youtube.com/watch?v=_2XOyNlb5FI"
    when 7
      redirect_to "https://www.youtube.com/watch?v=iub-u4VCZ-k"
    when 11
      redirect_to "https://www.youtube.com/watch?v=sbfOCZNct_k"
    when 14
      redirect_to "https://www.youtube.com/watch?v=L1sETnjeKjA"
    when 15
      redirect_to "https://www.youtube.com/watch?v=zY1w2xnwqvg"
    when 21
      redirect_to "https://www.youtube.com/watch?v=DUA9eAih-hQ"
    when 22
      redirect_to "https://www.youtube.com/watch?v=G-P3P_gOidY"
    when 23
      redirect_to "https://www.youtube.com/watch?v=GlvUyIl5wxQ"
    end
  end
end
