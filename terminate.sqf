// deletes truck + marker
deleteVehicle truck;
deleteMarker truckMarker;
// kills loop and removes HUD 
eventOver = true;

// clears HUD 
_textCtrl = uiNamespace getVariable ["timerHUD", displayNull] displayCtrl 1001;
_textCtrl ctrlSetText "";


if (seconds > 0) then {
    hint "Congratulations on completing the transport event! Great job in completing in under 10 minutes!! These goods will do me well.";
}

else {
    hint "Well you tried.. maybe a little faster next time?";
};


//iterates through markers and restores there color

eventMarkers = ["dropoffOne", "dropoffTwo", "StartLocation"];

colorPurple = [0.5, 0, 0.5]

{
    _markerName = _x;
    _markerName setMarkerColor colorPurple;
    

} forEach (eventMarkers);