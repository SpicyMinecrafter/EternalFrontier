/*
	A separate db connection for saving that is more thoroughly checked than the default connection.
*/
var/global/DBConnection/dbcon_save

/proc/establish_save_db_connection()
	if(!global.dbcon_save || !global.dbcon_save.IsConnected())
		return setup_save_database_connection()
	return global.dbcon_save.IsConnected()

/proc/close_save_db_connection()
	if(global.dbcon_save && global.dbcon_save.IsConnected())
		return global.dbcon_save.Disconnect()
	return !global.dbcon_save || !global.dbcon_save.IsConnected()

/proc/setup_save_database_connection()
	if(!global.dbcon_save)
		global.dbcon_save = new()

	global.dbcon_save.Connect("dbi:mysql:[sqldb]:[sqladdress]:[sqlport]","[sqllogin]","[sqlpass]")
	. = global.dbcon_save.IsConnected()
	if(.)
		// Setting encoding and comparison (4-byte UTF-8) for the DB server ~bear1ake
		var/DBQuery/unicode_query = global.dbcon_save.NewQuery("SET NAMES utf8mb4 COLLATE utf8mb4_general_ci")
		if(!unicode_query.Execute())
			to_world_log(unicode_query.ErrorMsg())
			return
	else
		to_world_log(global.dbcon_save.ErrorMsg())
