#!/usr/bin/env ruby

# Print to standard error because standard input will likely be redirected
# away from the terminal.
STDERR.puts "control-c to terminate this process"

# Don't buffer output.
STDOUT.sync = true

# Gracefully catch control-c and avoid printing unnecessary backtrace.
Signal.trap("INT") { exit }

def random_string(length)
  ('a'..'z').to_a.sample(length).join
end

loop do
  if rand(4) != 0
    (rand(10) + 3).times do
      puts "some log line: #{random_string(10)}"
    end
  else
    puts "important context for a random issue (#{random_string(10)})"
    puts ["ERROR", "Error", "error"].sample
    puts "  backtrace line 1"
    puts "  backtrace line 2"
    puts "  backtrace line 3"
  end

  sleep 0.5
end
