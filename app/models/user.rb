class User < ApplicationRecord
	has_many :posts , dependent: :destroy

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :trackable, :validatable

#	has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "50x50#"}, default_url: "/images/:style/npp.png"
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100#" },
		default_url: "/images/:style/npp.png",
		url: ":s3_domain_url",
		path: "public/avatars/:id/:style_:basename.:extension",
		storage: :fog,
		fog_credentials: {
			provider: 'AWS',
			aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
			aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
		},
		fog_directory: ENV["FOG_DIRECTORY"]
	validates_attachment :avatar,
						content_type: { content_type: ["image/jpeg", "image/gif", "image/png"]}

	def full_name
		if !self.username.blank?
			self.username
		elsif !self.fullname.blank?
			self.fullname.truncate_words(1).remove('...')
		else
			self.email
		end
	end
end