group :api do
  guard 'pow', daemon: true do
    watch(%r{^config/.*\.rb$})
    watch(%r{^lib/.*\.rb$})
    watch(%r{^system/.*\.rb$})
    watch('config.ru')
  end

  # group :development, halt_on_fail: true do
  #   guard 'rspec', version: 2, cli: '--colour --require spec_helper', focus: true, all_on_start: false, all_after_pass: false, keep_failed: false do
  #     watch(%r{^spec/.+_spec\.rb$})
  #     watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  #     watch(%r{^system/(.+)\.rb$}) { |m| "spec/system/#{m[1]}_spec.rb" }
  #     watch('spec/spec_helper.rb') { "spec" }
  #   end
  #
  #   guard 'rubocop', all_on_start: false, cli: ['--format', 'clang', '--rails'] do
  #     watch(%r{^config/.*\.rb$})
  #     watch(%r{^lib/.*\.rb$})
  #     watch(%r{^system/.*\.rb$})
  #   end
  # end
end
