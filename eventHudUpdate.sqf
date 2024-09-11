_npcPos = getPos transportNPC;
_offset = [10, 0 , 0];
_vehicleLocation = _npcPos vectorAdd _offset;
_truckType = "C_Truck_02_covered_F";

truck = createVehicle [_truckType, _vehicleLocation, [], 0, "NONE"];
truckMarker = createMarker ["Truck Location", position truck];
truckMarker setMarkerType "o_motor_inf";
truckMarker setMarkerText "Chemical Truck Location";

"startLocation" setMarkerColor "colorGreen";

while {!eventOver && timeLimit > 0} do {
        truckMarker setMarkerPos position truck;
        _textCtrl = uiNamespace getVariable ["timerHUD", displayNull] displayCtrl 1001;
        minutes = floor (timeLimit / 60);
        seconds = timeLimit % 60;
            if (seconds >= 10 ) then {
            _textCtrl ctrlSetText format ["%1:%2", minutes,  seconds];
            }

                else {
                _textCtrl ctrlSetText format ["%1:0%2", minutes,  seconds];
                };
    timeLimit = timeLimit - 1;
    sleep 1;
}   



