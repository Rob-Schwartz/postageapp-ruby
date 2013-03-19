# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "postageapp"
  s.version = "1.0.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oleg Khabarov, The Working Group Inc"]
  s.date = "2013-03-19"
  s.description = "Gem that interfaces with PostageApp.com service to send emails from web apps"
  s.email = "oleg@twg.ca"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".travis.yml",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "generators/postageapp/postageapp_generator.rb",
    "generators/postageapp/templates/initializer.rb",
    "generators/postageapp/templates/postageapp_tasks.rake",
    "lib/generators/postageapp/postageapp_generator.rb",
    "lib/postageapp.rb",
    "lib/postageapp/configuration.rb",
    "lib/postageapp/failed_request.rb",
    "lib/postageapp/logger.rb",
    "lib/postageapp/mailer.rb",
    "lib/postageapp/mailer/mailer_2.rb",
    "lib/postageapp/mailer/mailer_3.rb",
    "lib/postageapp/rails/rails.rb",
    "lib/postageapp/rails/railtie.rb",
    "lib/postageapp/request.rb",
    "lib/postageapp/response.rb",
    "lib/postageapp/utils.rb",
    "lib/postageapp/version.rb",
    "postageapp.gemspec",
    "rails/init.rb",
    "test/configuration_test.rb",
    "test/failed_request_test.rb",
    "test/gemfiles/Gemfile.rails-2.3.x",
    "test/gemfiles/Gemfile.rails-3.0.x",
    "test/gemfiles/Gemfile.rails-3.1.x",
    "test/gemfiles/Gemfile.rails-3.2.x",
    "test/gemfiles/Gemfile.rails-4.0.x",
    "test/helper.rb",
    "test/live_test.rb",
    "test/mailer/action_mailer_2/notifier.rb",
    "test/mailer/action_mailer_2/notifier/with_body_and_attachment.erb",
    "test/mailer/action_mailer_2/notifier/with_custom_postage_variables.text.html.erb",
    "test/mailer/action_mailer_2/notifier/with_custom_postage_variables.text.plain.erb",
    "test/mailer/action_mailer_2/notifier/with_html_and_text_views.text.html.erb",
    "test/mailer/action_mailer_2/notifier/with_html_and_text_views.text.plain.erb",
    "test/mailer/action_mailer_2/notifier/with_simple_view.erb",
    "test/mailer/action_mailer_2/notifier/with_text_only_view.text.plain.erb",
    "test/mailer/action_mailer_3/layouts/notifier.html.erb",
    "test/mailer/action_mailer_3/notifier.rb",
    "test/mailer/action_mailer_3/notifier/with_custom_postage_variables.html.erb",
    "test/mailer/action_mailer_3/notifier/with_custom_postage_variables.text.erb",
    "test/mailer/action_mailer_3/notifier/with_html_and_text_views.html.erb",
    "test/mailer/action_mailer_3/notifier/with_html_and_text_views.text.erb",
    "test/mailer/action_mailer_3/notifier/with_old_api.html.erb",
    "test/mailer/action_mailer_3/notifier/with_old_api.text.erb",
    "test/mailer/action_mailer_3/notifier/with_simple_view.erb",
    "test/mailer/action_mailer_3/notifier/with_text_only_view.text.erb",
    "test/mailer_2_test.rb",
    "test/mailer_3_test.rb",
    "test/mailer_helper_methods_test.rb",
    "test/postageapp_test.rb",
    "test/rails_initialization_test.rb",
    "test/request_test.rb",
    "test/response_test.rb"
  ]
  s.homepage = "http://github.com/postageapp/postageapp-ruby"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Easier way to send email from web apps"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

