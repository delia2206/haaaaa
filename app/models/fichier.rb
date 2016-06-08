class Fichier < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :fichier_sous_categories
	has_many :sous_categories, through: :fichier_sous_categories

	has_attached_file :file, styles: {
		medium: '300x300>',
		thumb: '100x100>'
	}

	validates_attachment_content_type :file, content_type: /\Aimage/	
	validates_attachment_file_name :file, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
	validates_with AttachmentSizeValidator,
		attributes: :file,
		less_than: 1.megabytes
	do_not_validate_attachment_file_type :file


end
