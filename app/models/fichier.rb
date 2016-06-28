class Fichier < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :fichier_sous_categories
	has_many :sous_categories, through: :fichier_sous_categories

	has_attached_file :file,
                    styles: lambda { |a| a.instance.check_file_type}

    FileIcon = {

	:pdf => '/images/icons/pdf.png',
	:doc => '/images/icons/doc.png',
	:mp3 => '/images/icons/mp3.png',
	:mp4 => '/images/icons/mp4.png'

	}

	#validates_attachment_content_type :file, content_type: /\Aimage/	
	#validates_attachment_file_name :file, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
	#validates_with AttachmentSizeValidator,
	#	attributes: :file,
	#	less_than: 1.megabytes
	#do_not_validate_attachment_file_type :file
	def check_file_type
	    if is_image_type?
	      {:small => "x200>", :medium => "x300>", :large => "x400>"}
	    elsif is_video_type?
	      {
	          :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10, :processors => [:ffmpeg] },
	          :medium => {:geometry => "250x150#", :format => 'jpg', :time => 10, :processors => [:ffmpeg]}
	      }
	    else
	      {}
	    end
	end


	def is_image_type?
	    file_content_type =~ 	%r(image)
	end

	def is_video_type?
	    file_content_type =~ %r(video)
	end

	validates_attachment_content_type :file, :content_type => [/\Aimage\/.*\Z/, /\Avideo\/.*\Z/, /\Aaudio\/.*\Z/, /\Aapplication\/.*\Z/]


end
