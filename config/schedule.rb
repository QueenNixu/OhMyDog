# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever


set :environment, 'development'
set :output, './log/cron.log'


every 1.days, at: '09:30' do
    runner "Turno.send_reminder_emails"
end

every 1.minutes do
    runner "Turno.delete_canceled_turns"
end

  every 1.days, at: '09.36' do
    runner "Perrito.enviar_vacunar"
end

  every 1.days, at: '09.36' do
    runner "Perrito.enviar_vacunae"
end
