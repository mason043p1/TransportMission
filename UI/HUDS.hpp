class RscTitles{

    class percentageHUD
    {

        idd = 7001;
        onLoad = "uiNamespace setVariable ['percentageHUD', _this select 0];";
        duration = 1e+11;
        class Controls
        { 
            class percentProcessed: RscText
                {
                    idc = 1002;
                    text = "";
                    sizeEx = 0.09;
                    colorText[] = {0, 1, 0, 1};
                    w = 0.3 * safezoneW; 
                    x = 0.5 * safezoneW + safezoneX - (0.3 * safezoneW) / 2;
                    y = 0.5 * safezoneH + safezoneY; 
                    h = 0.1 * safezoneH; 
                };
        };
    };

    class timerHUD
    {   
        idd = 7000;
        onLoad = "uiNamespace setVariable ['timerHUD', _this select 0];";
        duration = 1e+11;
        class Controls
        { 
            class RscText_1000: RscText
            {
                idc = 1001;
                text = "";
                colorText[] = {0.5, 0, 0.5, 1};
                sizeEx = 0.09;
                x = 0.0153125 * safezoneW + safezoneX;
                y = 0.5 * safezoneH + safezoneY; 
                w = 0.12375 * safezoneW;
                h = 0.077 * safezoneH;
            };
        };
    };
}