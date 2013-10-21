guard :rspec do

  # AutoGenerated by guard-rails
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})                  { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')               { "spec" }
  watch(%r{^app/(.+)\.rb$})                  { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$}) { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                  { |m| "spec/lib/#{m[1]}_spec.rb" }

  # Watch Factories
  watch('spec/factories.rb') { "spec" }

  # Watch Routing
  watch('config/routes.rb') { "spec/routing" }

  # Watch Controllers
  watch(%r{^app/controllers/(.+)_(controller)\.rb$}) do |m|
    [
      "spec/routing/#{m[1]}_routing_spec.rb",
      "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
      "spec/acceptance/#{m[1]}_spec.rb"
    ]
  end

  # Watch Views
  watch(%r{^app/views/(.+)/(.+)\.html\.slim$}) do |m|
    "spec/views/#{m[1]}/#{m[2]}_spec.rb"
  end

  # Watch '_' Views
  watch(%r{^app/views/shared/\_(.+)\.html\.slim$}) do |m|
    "spec/views/shared/#{m[1]}_spec.rb"
  end

  # Watch Models
  watch(%r{^app/models/(.+)\.rb$}) do |m|
    "spec/models/#{m[1]}_spec.rb"
  end

  # Watch Features
  watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$}) do |m|
    "spec/features/#{m[1]}_spec.rb"
  end
end