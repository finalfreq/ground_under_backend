class Song < ActiveRecord::Base
  has_many :users,  :through => :libraries

  has_attached_file :track
  do_not_validate_attachment_file_type :track

end
