# http://rubygems.org/gems/serialport
 
require "serialport"
 
port_str  = "/dev/ttyUSB0" # No such file or directory - /dev/ttyUSB0 (Errno::ENOENT)
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity    = SerialPort::NONE
 
serial_port = SerialPort.new(
  port_str,
  baud_rate,
  data_bits,
  stop_bits,
  parity
)
 
while(true) do
  while (things = serial_port.gets.chomp) do
    puts things
  end
end
 
serial_port.close
