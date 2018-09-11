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
env :PATH, ENV['PATH']
set :output, 'log/cron.log'

# Se deja configurada la ejecución del rake cada minuto para efectos de prueba, pero se deja comentado el requerimiento de la prueba de cada 8 horas.
# every 8.hours do
every 1.minute do
	rake "cargar:xml"
end


