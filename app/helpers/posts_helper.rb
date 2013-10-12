module PostsHelper
  def clean_date datetime
    datetime.strftime('%B %d %Y')
  end
end
