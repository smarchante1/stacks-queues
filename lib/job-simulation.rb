require_relative './Stack.rb'
require_relative './Queue.rb'

class JobSimulation
  attr_reader :workers, :waiting, :roll

  def initialize (jobs_available, job_seekers)

  end

  def cycle

  end
end

## Allows us to run our code and see what's happening:
sim = JobSimulation.new(6,10)
puts "------------------------------"
puts "Before the simulation starts"
puts "Employed: #{sim.workers}"
puts "Waitlist: #{sim.waiting}"
puts "------------------------------"
print "<enter to cycle, anything else to quit>\n"

count = 0
until gets.chomp != ""
  puts "-------Cycle #{count+=1}-------"
  sim.cycle
  puts "Employed: #{sim.workers}"
  puts "Waitlist: #{sim.waiting}"
end
