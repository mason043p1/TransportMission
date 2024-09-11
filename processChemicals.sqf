params ["_dropoffNPC", "_markerLocation", "_dropoffNum"];

_percentageLayer = ["percentageLayer"] call BIS_fnc_rscLayer;

_percentageLayer cutRsc ["percentageHUD", "PLAIN"];

_textCtrl = uiNamespace getVariable ["percentageHUD", displayNull] displayCtrl 1002;
percentComplete = 0;

while {percentComplete < 100 && player distance _dropoffNPC <5} do {
    percentComplete = percentComplete + 1;
    _textCtrl ctrlSetText format ["Unloading Goods: %1%2", percentComplete, "%"];
    sleep .25;
};

// implementation could be improved here
_textCtrl ctrlSetText "";

if (percentComplete < 100) then {
    hint "You need to stay closer to the chemical Drop Off! Try again!";
    sleep 2;
    hint "";
}

else {
    hint format ["You finished unloading goods here, make your way to the next  dropoff "];
    _markerLocation setMarkerColor "colorGreen";
};

