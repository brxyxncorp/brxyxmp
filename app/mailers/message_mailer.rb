class MessageMailer < ApplicationMailer
	default from: "noreply@brxyxmp.xyz"
	default to: "brxyxmp@gmail.com"

	def new_message(message)
		@message = message
		mail subject: "Message from #{message.name}"
	end
	
end
