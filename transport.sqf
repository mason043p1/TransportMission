
// This is safeguard is intended to prevent reinitilization during active event.
if (isNil "timeLimit") then {
        timeLimit = 600; 
    };


// Allows for detection of already active transport, if not unable to start event.
if (!activeTransport) then {

    activeTransport = true;

    [] execVM "eventHudUpdate.sqf"; 

    cutRsc ["timerHUD", "PLAIN"];

    actionOne = dropoffOneNPC addAction["Drop Off Chemicals", {[[dropoffOneNPC, "dropoffOne", "1", "actionOne"], "processChemicals.sqf"] remoteExec ["execVM" , 2]}, [], 6, false, true, "dropoffOneNPC distance player < 5"];
    
    hint "Hop in the truck and be sure to make all the dropoffs on your map to complete your mission! You have 10 minutes or else the goods are worthless!";
    sleep 2; 
    hint "Stop at all the dropoffs, and process the goods for a big payout!";


    waitUntil {getMarkerColor "dropoffOne" == "colorGreen"};
    
    actionTwo = dropoffTwoNPC addAction["Drop Off Chemicals", {[[dropoffTwoNPC, "dropoffTwo", "2"], "processChemicals.sqf"] remoteExec ["execVM" , 2]}, [], 6, false, true, "dropoffTwoNPC distance player < 5"];
    
    waitUntil {getMarkerColor "dropoffTwo" == "colorGreen"};
    
    actionThree = finalDropNPC addAction["Drop off Truck + Complete Mission", {[]execVM "terminate.sqf"}, [], 6, false, true, "finalDropNPC distance player < 5"];
}

else {
    hint "There is currently an active drop off! You cannot start one until it's ceased."
};

