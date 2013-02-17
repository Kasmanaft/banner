class BannerRotateController < ActionController::Metal
  def show
    images=Image.find_by_sql(["SELECT * FROM images WHERE campaign_id=? AND max_show>`show` ORDER BY last_shown ASC LIMIT 1", params[:id]])
    self.content_type="text/javascript"
    self.response_body=";"
    unless images.blank?
      image=images.first
      ActiveRecord::Base.connection.execute "UPDATE images SET `show`=`show`+1, last_shown=NOW() WHERE id=#{image.id} LIMIT 1"
      self.response_body="document.write(\"<a href='#{request.protocol + request.host_with_port}/bc/#{image.id}' target='_blank'><img src='#{request.protocol + request.host_with_port + image.file.url}'></a>\");"
    end
    ensure ActiveRecord::Base.clear_active_connections!
  end

  def click
    images=Image.find_by_sql(["SELECT * FROM images WHERE id=? LIMIT 1", params[:id]])
    if images.blank?
      self.location=request.protocol + request.host_with_port
    else
      image=images.first
      ActiveRecord::Base.connection.execute "UPDATE images SET click=click+1 WHERE id=#{image.id} LIMIT 1"
      self.location=image.link
    end
    ensure ActiveRecord::Base.clear_active_connections!
    self.response_body=self.status=302
  end
end
