module Ruboty
  module TimeSignal
    class TimeSignal < Base
      def timer
        now = Time.now
      	alert_time = now.hour + 1
      	alert_time = alert_time.modulo(24)
      	min = 60 - now.min
      	sec = 60 - now.sec

      	sleep sec

      	while min > 0 do
	  min -= 1
	  #if min == 30
	  #  puts "It's #{now.hour}:30 now !"
	  #end
	  #puts "#{min} minutes to go"
	  sleep 60
      	end
    
	loop {
          SlackBot.notify (
            body: "It's #{alert_time} o'clock now !"
	  )
	  alert_time += 1
	  alert_time = alert_time.modulo(24)
	  sleep 3600
      	}
      end
    end
  end
end