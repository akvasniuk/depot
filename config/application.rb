require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Depot
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.middleware.use I18n::JS::Middleware

    # Fix for Conductor throwing undefined method error
    config.to_prepare do 
      Rails::Conductor::ActionMailbox::InboundEmailsController.class_eval do
        private
        def new_mail
          Mail.new(mail_params.except(:attachments).to_h).tap do |mail|
            mail[:bcc]&.include_in_headers = true
            mail_params[:attachments].to_a.compact_blank.each do |attachment|
              mail.add_file(filename: attachment.original_filename, content: attachment.read)
            end
          end
        end
      end    
    end
  end
end
