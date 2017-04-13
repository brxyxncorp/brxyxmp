class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable

# Header is: class User < ApplicationRecord::Base
# In the tutorial isset: class User < ActiveRecord::Base
# But here is without '::Base'... Take in count later
	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "50x50#"}, default_url: "/images/:style/npp.png"
	validates_attachment :avatar,
						content_type: { content_type: ["image/jpeg", "image/gif", "image/png"]}, 
						size: { in: 0..300.kilobytes }
end