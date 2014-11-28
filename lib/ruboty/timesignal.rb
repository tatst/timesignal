module Ruboty
  module TimeSignal
    class TimeSignal < Base
      loop {
        now = Time.now
        if now.sec == 0 && now.min == 0
          SlackBot.notify (
	    body: "It's #{now.hour} o'clock now !"
	  )
      	end
      }
    end
  end
end