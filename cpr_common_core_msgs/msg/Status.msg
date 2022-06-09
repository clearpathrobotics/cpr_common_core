# This message represents lower-frequency status updates
# Default publish frequency is 1Hz.

std_msgs/Header header

# Robot Hardware ID
string hardware_id

# Firmware commit hash
string firmware_commit

# Times since MCU power-on.
builtin_interfaces/Duration mcu_uptime

# Temperature of MCU's PCB in Celsius.
float32 pcb_temperature
float32 mcu_temperature

# Monitoring the run/stop loop. Changes in these values trigger an immediate
# publish, outside the ordinarily-scheduled 1Hz updates.
bool stop_power_status  # True indicates the stop loop is operational (ie. it is powered).
bool stop_engaged  # True when a stop has been pressed on the robot.
bool drivers_active  # False when a stop is asserted to the motor drivers.
bool external_stop_present  # True indicates a external stop has been plugged in.

# AC Power
int8 NOT_APPLICABLE=-1

int8 shore_power_connected  # Indicates if AC power is connected.
int8 battery_connected      # Indicates if battery is connected.
int8 power_12v_user_nominal # Indicates if the 12V user power is good.
int8 charging_complete      # Indicates if charging is complete.

# Voltage rails, in volts
# Averaged over the message period

# Jackal
uint8 JACKAL_MEASURED_BATTERY=0
uint8 JACKAL_MEASURED_5V=1
uint8 JACKAL_MEASURED_12V=2

# Dingo
uint8 DINGO_MEASURED_BATTERY=0
uint8 DINGO_MEASURED_5V=1
uint8 DINGO_MEASURED_12V=2

# Warthog
uint8 WARTHOG_MEASURED_BATTERY=0
uint8 WARTHOG_MEASURED_12V=1
uint8 WARTHOG_MEASURED_24V=2
uint8 WARTHOG_MEASURED_48V=3

# Ridgeback
uint8 RIDGEBACK_MEASURED_BATTERY=0
uint8 RIDGEBACK_MEASURED_5V=1
uint8 RIDGEBACK_MEASURED_12V=2
uint8 RIDGEBACK_MEASURED_INVERTER=3
uint8 RIDGEBACK_MEASURED_FRONT_AXLE=4
uint8 RIDGEBACK_MEASURED_REAR_AXLE=5
uint8 RIDGEBACK_MEASURED_LIGHT=6

float32[] measured_voltage

# Current senses available on platform, in amps.
# Averaged over the message period

# Jackal
uint8 JACKAL_TOTAL_CURRENT=0
uint8 JACKAL_COMPUTER_CURRENT=1
uint8 JACKAL_DRIVE_CURRENT=2
uint8 JACKAL_USER_CURRENT=3

# Dingo
uint8 DINGO_TOTAL_CURRENT=0
uint8 DINGO_COMPUTER_CURRENT=1

# Warthog
uint8 WARTHOG_TOTAL_CURRENT=0
uint8 WARTHOG_COMPUTER_CURRENT=1
uint8 WARTHOG_12V_CURRENT=2
uint8 WARTHOG_24V_CURRENT=3
uint8 WARTHOG_48V_CURRENT=4

# Ridgeback
uint8 RIDGEBACK_TOTAL_CURRENT=0

float32[] measured_current

# Highest total system current peak as measured in a 1ms window.
float32 total_current_peak

# Integration of all power consumption since MCU power-on, in watt-hours.
float64 total_power_consumed 
