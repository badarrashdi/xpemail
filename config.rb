preferred_syntax = :sass
http_path = '/'
css_dir = 'assets/css'
sass_dir = 'assets/sass'
images_dir = 'assets/images'
javascripts_dir = 'assets/javascripts'
relative_assets = true
line_comments = true
# You can select your preferred output style here (can be overridden via the command line):
output_style = :compressed # :expanded or :nested or :compact or :compressed
 
 require "fileutils"

on_stylesheet_saved do |file|
  if File.exists?(file)
    filename = File.basename(file, File.extname(file))
    File.rename(file, css_dir + "/" + filename + ".min" + File.extname(file))
  end
end
# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
 
# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false
 
 
# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass