class UsersTable < ActiveRecord::Base
	has_attached_file :imagess,:url => "/system/:class/:attachment/:id/:style/:basename.:extension",:path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
	validates_attachment_content_type :imagess, :content_type => %w(image/jpeg image/jpg image/png)		
	
end
