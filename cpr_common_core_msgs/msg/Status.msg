# This message represents a CPR common core lower-frequency status updates
# Default publish frequency is 1Hz.

Header header

# Commit of firmware source.
string hardware_id
string firmware_version

# Times since MCU power-on and MCU rosserial connection, respectively.
duration uptime_mcu
duration uptime_ros_connection

# State of various stop monitors
bool stop_channel_1_monitor
bool stop_channel_2_monitor
bool stop_monitor_1
bool stop_monitor_2
bool stop_monitor_3

# State of contactor monitors
bool main_power_monitor
bool safety_contactor_monitor
bool safety2_contactor_monitor
bool charge_contactor_monitor
bool power_deck_contactor_monitor
bool c1_monitor
bool c2_monitor
bool aux_contactor_monitor

# Temperature of MCU in Celsius.
float32 mcu_temperature

# Voltage rails, in volts
# Averaged over the message period
float32 voltage_battery
float32 voltage_user_battery
float32 voltage_user_24v
float32 voltage_user_12v
float32 voltage_user_5v

# Current senses available on platform, in amps.
# Averaged over the message period
float32 current_battery
float32 current_pcba_total
float32 current_safety_24v
float32 current_computer_12v
float32 current_user_12v
float32 current_user_24v
float32 current_aux
