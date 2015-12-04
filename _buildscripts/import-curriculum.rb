#!/bin/ruby

begin
  require 'git'
rescue LoadError
  puts "\n#{'=' * 52}\nOops...\nIt looks like you don't have the git gem installed.\n\You can install it using: `gem install git`.\nThen try running `jekyll serve` again.\n#{'=' * 52}\n\n"
  exit
end

FileUtils.mkdir('_modules') unless File.directory?('_modules')
FileUtils.mkdir('_modulesjp') unless File.directory?('_modulesjp')
FileUtils.mkdir('_courses') unless File.directory?('_courses')
FileUtils.mkdir('_coursesjp') unless File.directory?('_coursesjp')
FileUtils.mkdir('images') unless File.directory?('images')

def out_with_the_old(directory)

  puts "Removing old #{directory.sub('_', '')}..."

  Dir.foreach(directory) do | file |

    # Skip directory listings
    next if file == '.' or file == '..'
    filepath = "#{directory}/#{file}"
    File.delete(filepath)

  end

end


def in_with_the_new(directory)

  Dir.foreach("curriculum-github/#{directory}") do | file |

    # Only import pertinent file types
    next unless ['.jpg', '.png', '.gif', '.yml'].include?(File.extname(file))

    puts "Importing #{file}..."

    if File.extname(file) != '.yml'

      # File is an image.  Move it to the images directory
      FileUtils.cp "curriculum-github/images/#{file}", "images/#{file}"

    else

      # We have a .yml file.
      # Read contents of current .yml file
      yml = File.open("curriculum-github/#{directory}/#{file}").read

      # Write .yml file contents to .md file with necessary frontmatter
      md = File.new("_#{directory}/#{File.basename(file, '.yml')}.md", "w")
      md.write("---\nlayout: #{directory.chomp('s')}\nleadingpath: ../\n#{yml}\n---")
      md.close
    end
  end
end

# Clear out old content
out_with_the_old('_modules')
# out_with_the_old('_modulesjp')
out_with_the_old('_courses')
# out_with_the_old('_coursesjp')

# Clone curriculum-github repository from Certify org
puts "Cloning curriculum-github repository from Certify organization..."
# repo = Git.clone('https://github.com/certify/curriculum-github', 'curriculum-github')
repo = Git.clone('https://github.com/ikeike443/curriculum-github', 'curriculum-github') //TODO: should be confiurable

# Import the fresh content from the repository
in_with_the_new('modules')
# in_with_the_new('modulesjp')
in_with_the_new('courses')
# in_with_the_new('coursesjp')
in_with_the_new('images')

# Remove local curriculum-github repository
FileUtils.rm_rf("curriculum-github")
