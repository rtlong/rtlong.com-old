Dir[Rails.root.join('lib/core_extensions/**/*.rb')].each do |file|
  load file
end
