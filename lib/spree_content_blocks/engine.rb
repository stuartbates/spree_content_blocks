module SpreeContentBlocks
  class Engine < ::Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob Engine.root.join("app/**/*_decorator*.rb") do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Dir.glob Engine.root.join("app/helpers/*.rb") do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Dir.glob Engine.root.join("app/sweepers/*.rb") do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

  end
end