private ["_txt","_coins","_vehicle"];
VehicleToPaint = cursorTarget;
ColourPrice = 7500;
_coins = 'YOURPATH\dollars.paa'; //<- Change the path here to your Coin display image!
_vehicle = getText(configFile >> "cfgVehicles" >> (typeOf VehicleToPaint) >> "displayName");
createdialog "VehicleColourDialog";
_txt = format ["<t>It will cost %1 <img image='%2'/><br/>to repaint your %3.</t>",ColourPrice,_coins,_vehicle];
((uiNamespace getVariable "VehicleColourDialog") displayCtrl 5703) ctrlSetStructuredText parseText _txt;
