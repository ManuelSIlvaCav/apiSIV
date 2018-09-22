require 'sidekiq'
require 'sidekiq-scheduler'
require 'rubygems'

class HelloWorld
  include Sidekiq::Worker

  def perform
    db = Mdb.open("../../cotizaC.mdb")
    puts db[:sc][0]
    #puts 'Hello-World'
  end
end
