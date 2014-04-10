class Document < ActiveRecord::Base
	has_attached_file :attachment
	attr_accessor :remove_attachment
	do_not_validate_attachment_file_type :document
	

	before_save :perform_attachment_removal

	def perform_attachment_removal
		if remove_attachment == '1' && !attachment.dirty?
			self.attachment = nil
		end
	end
end
