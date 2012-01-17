guard 'rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/egg_carton/(.+)\.rb}) { |m| "spec/egg_carton/#{m[1]}_spec.rb" }
end