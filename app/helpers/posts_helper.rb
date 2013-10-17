module PostsHelper
  def clean_date datetime
    # FIXME: why isn't 'posted' / 'datetime' getting set in tests?
    datetime.strftime('%B %d %Y') if datetime
  end
end
