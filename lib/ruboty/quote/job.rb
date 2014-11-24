module Ruboty
  module Cron
    class Job
      attr_reader :attributes, :thread

      def initialize(attributes)
        @attributes = attributes.stringify_keys
      end

      def start(robot)
        @thread = Thread.new do


      end

      def id
        attributes["id"]
      end

      def schedule
        attributes["schedule"]
      end

      def boty
        attributes["body"]
      end

      def to
        attributes["to"]
      end
    end
  end
end