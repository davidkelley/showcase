group :api do
  guard 'pow' do
    watch(%r{^config/.*\.rb$})
    watch(%r{^lib/.*\.rb$})
    watch(%r{^system/.*\.rb$})
    watch('config.ru')
  end

  # guard 'rspec', version: 2, cli: '--colour', focus: true, all_on_start: false, all_after_pass: false, keep_failed: false do
  #   watch(%r{^spec/.+_spec\.rb$})
  #   watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  #   watch(%r{^system/(.+)\.rb$}) { |m| "spec/system/#{m[1]}_spec.rb" }
  #   watch('spec/spec_helper.rb') { "spec" }
  # end
end
