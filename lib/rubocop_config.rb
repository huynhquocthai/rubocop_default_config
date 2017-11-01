require "erb"
require "yaml"
class RubocopConfig
  # Generate popular config for RuboCop.
  # Run *rubocop_config* to generate .rubocop.yml file.

  def generate_to_do_list
    generate_default_config
    puts "Generating rubocop todo config ..."
    # Comment because bugs missing offenses file Exclude
    # system('rubocop --auto-gen-config --exclude-limit 9999')
    system('rubocop --auto-gen-config')
  end

  def generate_default_config
    puts 'Generating rubocop default config ...'
    file_name = ".rubocop.yml"
    config_file = File.expand_path File.dirname(__FILE__) + '/.rubocop_default_config.yml'
    config = YAML.safe_load(ERB.new(File.read(config_file)).result)
    File.open(file_name, "w") { |f| f << config.to_yaml }
  end

  def generate_common_config
    puts "Generating rubocop common config ..."
    file_name = ".rubocop.yml"
    config_file = File.expand_path File.dirname(__FILE__) + '/.rubocop_popular_config.yml'
    config = YAML.safe_load(ERB.new(File.read(config_file)).result)
    File.open(file_name, "w") { |f| f << config.to_yaml }
  end
end