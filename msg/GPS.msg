# GPS status flags
uint32 GPS_STATUS_FIX_STATUS_NO_FIX 				= 0    #
uint32 GPS_STATUS_FIX_STATUS_DEAD_RECKONING_ONLY 	= 256  # 0x0100
uint32 GPS_STATUS_FIX_STATUS_2D_FIX 				= 512  # 0x0200
uint32 GPS_STATUS_FIX_STATUS_3D_FIX 				= 768  # 0x0300
uint32 GPS_STATUS_FIX_STATUS_GPS_PLUS_DEAD_RECK 	= 1024 # 0x0400
uint32 GPS_STATUS_FIX_STATUS_TIME_ONLY_FIX 			= 1280 # 0x0500
uint32 GPS_STATUS_FIX_STATUS_RTK_DGPS 				= 2048 # 0x0800
uint32 GPS_STATUS_FIX_STATUS_RTK_SBAS 				= 2304 # 0x0900
uint32 GPS_STATUS_FIX_STATUS_RTK_SINGLE 			= 2560 # 0x0A00
uint32 GPS_STATUS_FIX_STATUS_RTK_FLOAT 				= 2816 # 0x0B00
uint32 GPS_STATUS_FIX_STATUS_RTK_FIX 				= 3072 # 0x0C00

Header header
int8 num_sat 							# Number of satellites used in solution
uint32 fix_type 						# Fix type, one of STATUS_FIX_TYPE flags
int32 cno 								# mean carrier noise ratio (dBHz)
float64 latitude 						# latitude (degrees) 
float64 longitude						# longitude (degrees)
float64 altitude						# height above ellipsoid (not MSL) (m)
geometry_msgs/Vector3 linear_velocity 	# Velocity (m/s) in NED
float32 hMSL							# height above MSL
float32 hAcc							# horizontal accuracy
float32 vAcc							# vertical accuracy
float32 sAcc							# speed accuracy (m/s)
float32 pDop							# Position Dilution of Precision (m)	
float32 differentialAge					# Time since last base station update (s)
float32 arRatio							# Ambiguity Resolution Ratio Factor
float32 distanceToBase					# Distance to base station (m)

