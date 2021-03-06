class Photo < ActiveRecord::Base
  belongs_to :user

  def Photo.query_photos(friend_id, user)

  uid = user.uid
  access_token = user.access_token
  recipient_id = friend_id
  query1request = "SELECT src_big, caption, object_id, owner, aid, created FROM photo WHERE object_id IN(SELECT object_id FROM photo_tag WHERE subject = #{uid}) AND object_id IN(SELECT object_id FROM photo_tag WHERE subject=#{recipient_id})"

  options = { :access_token => "#{access_token}" }
    photos_api = Fql.execute({
    :query1 => query1request
    }, options)

  photos_clean_api = photos_api[0]["fql_result_set"]

    @photos = []

    photos_clean_api.each do |photo|
      s = Photo.new
      s.source_url = photo["src_big"]
      s.fb_object_id = photo["object_id"]
      s.user_id = photo["owner"]
      @photos << s
    end

    return @photos
  end
end
