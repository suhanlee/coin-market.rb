# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coin/market/version'

Gem::Specification.new do |spec|
  spec.name          = "coin-market"
  spec.version       = Coin::Market::VERSION
  spec.authors       = ["suhanlee"]
  spec.email         = ["suhan.lee.k@gmail.com"]

  spec.license       = 'MIT'
  spec.summary       = %q{Coin Markets API Library}
  spec.description   = %q{Coin Marekts API Libary including korbit, bitthumb, coinone, coinnest}
  spec.homepage      = "https://github.com/suhanlee/coin-market.rb"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  
  spec.add_dependency "rest-client", "~> 2.0"
  spec.required_ruby_version = ">= 2.0.0"
end
