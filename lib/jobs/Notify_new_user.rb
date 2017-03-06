module Jobs
  class NotifyNewUser
      def perform
      puts "HELLOOOOOOOOOOOOOOOOOOOO"
      end

      def notify_new
        puts "HURAAAAAAAYYYYYYY"
      end
      #handle_asynchronously :notify_new, :run_at => 1.minutes.from_now, :queue=>"hello"

  end
end

