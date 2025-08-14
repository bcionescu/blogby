require 'pathname'

COMMANDS = {
  'server' => -> { start_server },
  'fetch' => -> { fetch_files },
  'rebuild' => -> { rebuild_site },
  'pin' => -> { pin_post },
  'publish' => -> { publish_post }
}

def start_server
  puts 'Blogby HTTP server started. Browser to http://localhost:27225 in order to see a preview.'
  system('python3 -m http.server 27225')
end

def fetch_path
  config_file = File.open('.config/blogby')
  config = config_file.readlines.map(&:chomp)
  config_file.close

  path = ''

  config.each do |element|
    if element.include?('path')
      path = element[8..-2]
      break
    end
  end
  path
end

def fetch_files
  path = fetch_path
  files = Dir[path + '/*.md']
  display_files(files)
end

def display_files(files)
  files.each do |file|
    puts Pathname.new(file).basename
  end
end

# def rebuild_site

# def pin_post

# def publish_post

def help_action
  puts 'Usage: app_name <command> [arguments]'
  puts 'Commands:'
  COMMANDS.keys.each { |command| puts "  - #{command}" }
  puts 'Example: app_name generate'
end

if ARGV.empty?
  help_action
else
  command = ARGV[0].downcase

  if COMMANDS.key?(command)
    COMMANDS[command].call
  else
    puts "Error: Unknown command '#{command}."
    help_action
  end
end
