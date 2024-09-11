activeTransport = false;
eventOver = false;
_health = (1 - damage player) * 100;


waitUntil {
	sleep 1;
	
	(!isNull player && time > 0)
		
};
	
	createDialog "spawnMenu";
	transportNPC addAction["Begin Chemical Transport Mission" , {["transport.sqf"] remoteExec ["execVM", 2] }, [] , 6 , false , true , "", "transportNPC distance player < 5"];


playerLoop = {
	while{true} do {
		_health = (1 - damage player) * 100;
		"playerLocation" setMarkerPos getPos player;
	}     


};

	[] spawn mapLoop;
