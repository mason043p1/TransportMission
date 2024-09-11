class spawnMenu {
    idd = 1001;
    movingEnable = false;
    enableSimulation = true;

    class controls {
        class background: RscText {
            idc = -1; 
            x = 0.1;
            y = 0.1;
            w = 0.8;
            h = 0.6;
            colorBackground[] = {0.2, 0.2, 0.2, 1}; 
        };

        class RscButton_1600: RscButton {
            idc = 1600;
            text = "Transport Mission";
            x = 0.1;
            y = 0.35;
            w = 0.2;
            h = 0.1;
            colorText[] = {1, 1, 1, 1}; 
            colorBackground[] = {0.4, 0.4, 0.4, 1}; 
            colorBackgroundActive[] = {0.6, 0.6, 0.6, 1}; 
            action = "player setPos [23416.2, 17879.21, 0]; player setDir 90.7; closeDialog 0;";
        };

        class RscText_1000: RscText {
            idc = 1000;
            text = "Spawn Locations";
            x = 0.1;
            y = 0.2;
            w = 0.3;
            h = 0.05;
            sizeEx = .07;
            colorText[] = {1, 1, 1, 1};
            
        };

    
    };
};