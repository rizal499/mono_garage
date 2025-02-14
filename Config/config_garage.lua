-- ───────────────────────────────────────────────────────|
-- symbiote_ - Discord: https://discord.gg/Vk7eY8xYV2     |
--────────────────────────────────────────────────────────|
Garage                   = {}
Garage.Version           = true  -- Check GitHub version.
Garage.RadialCopyCoords  = true  -- Radial menu to copy coordinates and easily create garages, use this only on your development server!
Garage.CustomMenu        = false -- true = Custom Menu (Made By RawPaper.) | false = Default Menu (Ox_lib)
Garage.Debug             = {
    Prints = false,              -- Prints data events, functions etc...
    Zones = false,               -- Debug Zones
}
Garage.Commands          = {     -- The vehicle you are in will be saved in the database and become your property. (ADMIN)
    givecar = 'givecar',
    defaultGarage = 'Pillbox Hill',
    spawncar = 'spawncar',
    Group = 'admin',
}
Garage.Persistent        = true      -- When a player disconnects and the vehicle is out of the garage it will be eliminated and saves the position so that when it reconnects it will appear in the same place.
Garage.SELECT            = 'TEXTUI'  -- TARGET = ox_target, RADIAL = ox_lib RadialMenu, TEXTUI = ox_lib, textUI or custuom in functions.lua
Garage.Inventory         = 'ox'      -- ox / qs
Garage.textui            = 'custom'  -- ox_textui / esx_textui / custom - client/functions.lua
Garage.Fuel              = 'ox_fuel' -- Ox_fuel / LegacyFuel / esx-sna-fuelLevel
Garage.TargetNPCDistance = 10        -- Distance to open Menu in NPC
Garage.TargetCarDistance = 10        -- Distance to deposit the vehicle with ox_target
Garage.ShareCarFriend    = true      -- Share vehicles with friends.
Garage.TrasnferVehicles  = true      -- Transfer vehicle to another player free or paid
Garage.Mono_Carkeys      = true      -- Config_keys.lua / https://mono-2.gitbook.io/docs/mono-scrips/mono_carkeys
Garage.CarKeys           = true      -- Add keys when removing the vehicle and remove them when depositing it.
Garage.BlipsName         = false     -- True Blip garage name / False only "Garage"
Garage.BlipName          = 'Garage'  -- Default name blips.

Garage.AutoImpound       = {
    AutoImpound = true,         -- This function allows vehicles that are outside the garage and the entity is not present in the world to be sent directly to the impound.
    ImpoundIn = 'Auto Impound', -- The default impound where the vehicle will be sent if the entity does not exist in the world. (It has to match with an impound created.)
    TimeCheck = 1000 * 60,      --  (Default 1min) Time to check for vehicles that do not exist in the world and are not found in the garage in order to impound them.
}

Garage.NpcImpound        = {
    Command = 'impound',
    ProgressBarTime = 5000, 
    jobs = {
        [1] = 'police',
        --[420] = '',   -- Add more jobs
    }
}
Garage.Garages           = {
    -- Impounds
    ['Auto Impound'] = {
        impound        = true,
        ShareGarage    = false,
        impoundPrice   = 100,
        type           = 'car',
        pos            = vec4(408.81500244141, -1637.9078369141, 29.291925430298, 141.7584991455078),
        size           = vec3(15, 30, 3),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(407.93273925781, -1654.6179199219, 29.001836776733, 320.06909179688),
            vec4(405.76379394531, -1652.2020263672, 29.002393722534, 320.41540527344),
            vec4(403.46255493164, -1650.3392333984, 29.003999710083, 320.78207397461),
            vec4(420.50085449219, -1638.8636474609, 29.002016067505, 269.73226928711),
            vec4(420.73623657227, -1635.7631835938, 28.879852294922, 268.98785400391),
        },
        blip           = true,
        sprite         = 524,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(400.30816650391, -1627.5834960938, 28.291940689087, 230.88716125488),
    },
    ['Paleto Bay Impound'] = {
        impound        = true,
        ShareGarage    = false,
        impoundPrice   = 50,
        type           = 'car',
        pos            = vec4(-469.83917236328, 6032.5634765625, 31.34037399292, 313.0982666015625),
        size           = vec3(15, 40, 3),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-468.47308349609, 6038.390625, 30.928045272827, 224.43283081055),
            vec4(-472.20770263672, 6035.0908203125, 30.928321838379, 225.26126098633),
            vec4(-475.53344726563, 6031.2236328125, 30.928354263306, 224.62934875488),
            vec4(-478.90426635742, 6027.5659179688, 30.928239822388, 224.27416992188),
            vec4(-482.52709960938, 6024.615234375, 30.928611755371, 223.71766662598),
        },
        blip           = true,
        sprite         = 524,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-463.06100463867, 6025.5874023438, 30.44896697998, 135.05729675293),
    },
    -- Garages
    ['Pillbox Hill'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(227.27825927734, -785.90087890625, 30.716024398804, 250.1240),
        size           = vec3(55, 35, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(220.2780456543, -809.17193603516, 30.056179046631, 249.62936401367),
            vec4(221.07490539551, -806.69848632813, 30.390104293823, 248.47229003906),
            vec4(222.11103820801, -804.14074707031, 30.38419342041, 246.64263916016),
            vec4(223.20907592773, -801.78698730469, 30.369050979614, 247.40501403809),
            vec4(206.27438354492, -801.09350585938, 30.711149215698, 247.7689666748),
            vec4(207.43371582031, -798.52429199219, 30.690946578979, 247.72959899902),
            vec4(208.2936706543, -796.23156738281, 30.672399520874, 248.55288696289),
            vec4(209.48155212402, -793.83129882813, 30.646259307861, 249.14572143555),
            vec4(215.1284942627, -804.10589599609, 30.347541809082, 69.22452545166),
            vec4(216.35070800781, -801.84881591797, 30.325912475586, 68.610794067383),
            vec4(217.4236907959, -799.2294921875, 30.309574127197, 67.479904174805),
            vec4(218.359375, -796.85687255859, 30.297718048096, 67.339340209961),
            vec4(233.58877563477, -805.39239501953, 29.968862533569, 69.095611572266),
            vec4(232.12843322754, -807.85375976563, 29.973529815674, 68.418014526367),
            vec4(231.43034362793, -810.4765625, 30.428318023682, 68.37825012207)
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(214.69429016113, -807.11199951172, 29.800384521484, 339.01174926758),
    },
    ['Beach Garage'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(-1186.9885253906, -1485.1993408203, 4.3795204162598, 35.44283294677734),
        size           = vec3(34, 43, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-1183.7606201172, -1496.3354492188, 3.9706411361694, 124.90840148926),
            vec4(-1185.7902832031, -1493.615234375, 3.9681849479675, 125.64490509033),
            vec4(-1187.5167236328, -1490.9871826172, 3.9701550006866, 124.67469787598),
            vec4(-1189.0646972656, -1488.5158691406, 3.9695651531219, 123.46624755859),
            vec4(-1191.1324462891, -1485.9688720703, 3.9685642719269, 126.22340393066),
            vec4(-1192.7150878906, -1483.1861572266, 3.9685180187225, 124.46572113037),
            vec4(-1194.4948730469, -1480.1081542969, 3.970828294754, 124.8539276123),
            vec4(-1204.2700195313, -1484.6954345703, 3.9610035419464, 305.99017333984),
            vec4(-1202.2098388672, -1488.3464355469, 3.9569838047028, 306.90289306641),
            vec4(-1198.900390625, -1490.4631347656, 3.9644057750702, 306.28082275391),
            vec4(-1197.5792236328, -1493.8762207031, 3.9614400863647, 307.00152587891),
            vec4(-1196.1829833984, -1497.0876464844, 3.9586639404297, 304.75402832031),
            vec4(-1190.4721679688, -1503.7625732422, 3.9637606143951, 307.09887695313),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-1179.2971191406, -1494.8515625, 3.379668712616, 210.91143798828),
    },
    ['Grove Street'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        thickness      = 3,
        pos            = {
            vec3(-77.819999694824, -1832.4100341797, 27.0),
            vec3(-63.0, -1815.0, 27.0),
            vec3(-52.75, -1824.4699707031, 27.0),
            vec3(-43.0, -1833.0, 27.0),
            vec3(-36.0, -1839.0, 27.0),
            vec3(-50.279998779297, -1857.1199951172, 27.0),
        },
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-62.252979278564, -1840.2419433594, 26.036516189575, 320.94152832031),
            vec4(-59.994190216064, -1843.1228027344, 25.936275482178, 317.23867797852),
            vec4(-56.990619659424, -1844.4610595703, 25.839725494385, 318.81021118164),
            vec4(-54.305541992188, -1846.6292724609, 25.734300613403, 320.64782714844),
            vec4(-51.729019165039, -1848.7615966797, 25.633075714111, 320.58544921875),
            vec4(-45.249038696289, -1841.0782470703, 25.574605941772, 140.36061096191),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-68.724601745605, -1837.5048828125, 25.875747680664, 321.53924560547),
    },
    ['VineWood Center'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(372.28897094727, 280.52334594727, 102.97301483154, 70.706298828125),
        size           = vec3(34, 43, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(374.85760498047, 294.43109130859, 102.86688995361, 165.0818939209),
            vec4(378.56265258789, 293.04306030273, 102.78726959229, 163.20666503906),
            vec4(382.55520629883, 291.36309814453, 102.70172119141, 163.94944763184),
            vec4(386.67111206055, 290.53021240234, 102.63737487793, 164.09982299805),
            vec4(390.22622680664, 288.65908813477, 102.58652496338, 164.05674743652),
            vec4(361.58099365234, 293.32504272461, 103.08926391602, 249.62924194336),
            vec4(360.5810546875, 289.76022338867, 103.07821655273, 247.47273254395),
            vec4(358.81109619141, 286.13931274414, 103.07056427002, 253.79345703125),
            vec4(357.28283691406, 282.52239990234, 102.99289703369, 253.17288208008),
            vec4(360.27276611328, 272.29049682617, 102.69003295898, 338.95504760742),
            vec4(363.72314453125, 269.96838378906, 102.65316009521, 340.4401550293),
            vec4(370.71759033203, 284.26663208008, 102.8475112915, 336.60717773438),
            vec4(374.66918945313, 282.80575561523, 102.77003479004, 336.00482177734),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(363.22973632813, 298.1669921875, 102.88312530518, 252.08975219727),
    },
    ['Rockford Hills'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(-925.90130615234, -163.95550537109, 41.237731933594, 117.38288879395),
        size           = vec3(20, 70, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-902.03234863281, -159.38597106934, 41.239189147949, 27.315849304199),
            vec4(-905.37628173828, -161.12127685547, 41.237655639648, 28.225723266602),
            vec4(-908.24591064453, -163.25636291504, 41.235214233398, 27.807371139526),
            vec4(-911.99639892578, -164.7822265625, 41.234169006348, 26.61018371582),
            vec4(-915.17254638672, -166.43586730957, 41.234504699707, 26.974920272827),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-899.58874511719, -153.45178222656, 40.884296417236, 120.38389587402),
    },
    ['Río Zancudo'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        thickness      = 3,
        pos            = {
            vec3(-1136.0500488281, 2684.8200683594, 18.0),
            vec3(-1125.0, 2695.0, 18.0),
            vec3(-1133.0, 2703.0, 18.0),
            vec3(-1136.0, 2700.0, 18.0),
            vec3(-1141.0, 2685.0, 18.0),
            vec3(-1152.0, 2683.0, 18.0),
            vec3(-1157.0, 2680.0, 18.0),
            vec3(-1165.4000244141, 2673.5200195312, 18.0),
            vec3(-1161.9799804688, 2664.9499511719, 18.0),
            vec3(-1159.0, 2660.0, 18.0),
            vec3(-1148.6800537109, 2648.3601074219, 18.0),
            vec3(-1123.0, 2672.0, 18.0),
        },
        size           = vec3(20, 70, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-1134.6785888672, 2694.8293457031, 18.159317016602, 155.82429504395),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-1134.7037353516, 2682.8273925781, 17.479753494263, 133.75038146973),
    },
    ['Sandy Shores'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Paleto Bay Impound',
        thickness      = 3,
        pos            = {
            vec3(1722.0300292969, 3704.2099609375, 34.0),
            vec3(1737.7199707031, 3709.4299316406, 34.0),
            vec3(1746.0, 3715.0, 34.0),
            vec3(1733.0, 3738.0, 34.0),
            vec3(1713.0, 3727.0, 34.0),
        },
        SetInToVehicle = false,
        spawnpos       = {
            vec4(1724.5021972656, 3711.1147460938, 33.614978790283, 21.581743240356),
            vec4(1729.4622802734, 3713.5034179688, 33.539905548096, 20.609254837036),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(1729.2690429688, 3706.8315429688, 33.12340927124, 21.462055206299),
    },
    ['Grape Seed'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Paleto Bay Impound',
        pos            = vec4(1700.13671875, 4931.6333007813, 42.078128814697, 57.604652404785),
        size           = vec3(40, 30, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(1695.2021484375, 4940.17578125, 40.75191116333, 99.631744384766)


        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(1700.13671875, 4931.6333007813, 41.078128814697, 62.388843536377),
    },
    ['Little Seoul'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(-697.75500488281, -981.04711914063, 20.390176773071, 351.32122802734375),
        size           = vec3(20, 25, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-698.71136474609, -988.19073486328, 20.099597930908, 300.3828125),
            vec4(-701.25054931641, -985.26904296875, 20.099529266357, 298.08532714844),
            vec4(-703.17010498047, -982.14239501953, 20.099630355835, 299.89221191406),
            vec4(-705.10479736328, -979.02136230469, 20.099308013916, 299.97964477539),
            vec4(-686.54901123047, -982.19079589844, 20.100147247314, 86.923316955566),
            vec4(-686.50628662109, -975.06280517578, 20.10037612915, 88.99080657959),
            vec4(-686.35290527344, -978.50183105469, 19.978174209595, 89.784156799316),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-691.78546142578, -989.66162109375, 19.390161514282, 35.144943237305),
    },
    ['Paleto Bay'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(-199.8488, 6216.9556, 31.1998, 226.0117),
        size           = vec3(27, 27, 3),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-207.30862426758, 6219.4477539063, 31.200904846191, 225.60264587402),
            vec4(-205.18788146973, 6221.8974609375, 31.201028823853, 226.04624938965),
            vec4(-202.69532775879, 6224.2993164063, 31.199897766113, 225.46133422852),
            vec4(-200.43357849121, 6226.60546875, 31.204719543457, 225.56149291992),
            vec4(-197.94256591797, 6228.9672851563, 31.209632873535, 224.47320556641),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-215.56448364258, 6219.1748046875, 30.491662979126, 225.76336669922),
    },
    ['Alta'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = vec4(283.0696105957, -333.57049560547, 45.049133300781, 160.77209472656),
        size           = vec3(40, 35, 4),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(277.35653686523, -339.98162841797, 44.215549468994, 68.32861328125),
            vec4(277.88140869141, -336.55731201172, 44.217433929443, 71.43529510498),
            vec4(279.24600219727, -333.35458374023, 44.217414855957, 70.986328125),
            vec4(280.20541381836, -329.98733520508, 44.217254638672, 70.955963134766),
            vec4(281.82073974609, -326.92947387695, 44.217338562012, 70.118721008301),
            vec4(282.84487915039, -323.78787231445, 44.217254638672, 70.840255737305),
            vec4(283.91418457031, -342.58758544922, 44.21728515625, 251.70812988281),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(276.40383911133, -343.01165771484, 43.919834136963, 336.4690246582),
    },
    ['VineWood Oeste'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Auto Impound',
        pos            = {
            vec3(-560.75, 307.0, 85.0),
            vec3(-559.0, 324.0, 85.0),
            vec3(-544.0, 323.0, 85.0),
            vec3(-542.45001220703, 338.89999389648, 85.0),
            vec3(-589.95001220703, 348.20001220703, 85.0),
            vec3(-621.15002441406, 351.04998779297, 85.0),
            vec3(-623.34997558594, 328.25, 85.0),
            vec3(-590.0, 312.0, 85.0),
        },
        thickness      = 5.0,
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-562.02642822266, 318.55645751953, 83.699142456055, 85.739814758301),
            vec4(-562.71203613281, 315.21932983398, 83.703506469727, 85.188186645508),
            vec4(-562.93408203125, 311.93569946289, 83.718902587891, 84.259323120117),
            vec4(-573.67376708984, 314.27557373047, 84.181549072266, 355.41912841797),
            vec4(-577.48834228516, 314.23373413086, 84.309471130371, 355.45025634766),
            vec4(-580.83825683594, 314.513671875, 84.42919921875, 355.6572265625),
            vec4(-584.06896972656, 315.62106323242, 84.541076660156, 354.11755371094),
            vec4(-587.36138916016, 316.14929199219, 84.655349731445, 355.45288085938),
            vec4(-572.75866699219, 324.291015625, 83.842208862305, 354.32281494141),

        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-561.22235107422, 322.25607299805, 83.403457641602, 86.200233459473),
    },
    ['Grand Señora'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'Paleto Bay Impound',
        pos            = {
            vec3(1141.3000488281, 2643.7800292969, 38.0),
            vec3(1108.0, 2644.0, 38.0),
            vec3(1108.0799560547, 2659.2099609375, 38.0),
            vec3(1092.0, 2659.0, 38.0),
            vec3(1092.0, 2677.0, 38.0),
            vec3(1141.0, 2675.0, 38.0),
        },
        thickness      = 4.0,
        SetInToVehicle = false,
        spawnpos       = {
            vec4(1135.5157470703, 2648.0532226563, 37.584247589111, 0.65543812513351),
            vec4(1131.4323730469, 2647.7866210938, 37.583938598633, 1.5089942216873),
            vec4(1127.6351318359, 2647.9575195313, 37.584117889404, 1.4728109836578),
            vec4(1124.0914306641, 2648.2268066406, 37.584003448486, 0.9566867351532),
            vec4(1120.3621826172, 2648.0285644531, 37.583946228027, 1.4201003313065),
            vec4(1116.73046875, 2647.859375, 37.583950042725, 0.45165914297104),
            vec4(1112.1373291016, 2654.3718261719, 37.5842628479, 270.03909301758),
            vec4(1112.2163085938, 2657.7263183594, 37.583106994629, 269.82354736328),
            vec4(1105.6341552734, 2663.1408691406, 37.562431335449, 0.072764217853546),
            vec4(1101.6141357422, 2663.6770019531, 37.560901641846, 359.78393554688),
            vec4(1098.3282470703, 2663.6235351563, 37.556735992432, 1.2682294845581),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(1134.6866455078, 2659.9919433594, 37.14400100708, 1.6888802051544),
    },
    ['Mirror Park'] = {
        impound        = false,
        ShareGarage    = false,
        impoundPrice   = 100,
        type           = 'car',
        priceSend      = 20,
        thickness      = 3,
        pos            = {
            vec3(1022.0, -752.0, 58.0),
            vec3(1007.0, -765.0, 58.0),
            vec3(1031.0, -795.0, 58.0),
            vec3(1050.0, -795.0, 58.0),
            vec3(1050.0, -770.0, 58.0),
            vec3(1038.0, -763.0, 58.0),
        },
        SetInToVehicle = false,
        spawnpos       = {
            vec4(1031.0208740234, -773.68804931641, 57.420528411865, 144.82217407227),
            vec4(1027.8654785156, -771.61560058594, 57.396305084229, 146.25053405762),
            vec4(1029.3698730469, -763.65167236328, 57.342010498047, 55.350734710693),
            vec4(1014.7096557617, -763.07702636719, 57.251403808594, 219.57730102539),
            vec4(1017.4946899414, -760.66082763672, 57.332454681396, 221.27543640137),
            vec4(1020.3594360352, -758.37322998047, 57.347961425781, 221.6990814209),
            vec4(1023.1013183594, -755.68756103516, 57.324382781982, 225.28102111816),
            vec4(1016.3708496094, -770.4501953125, 57.260608673096, 308.84375),
            vec4(1018.7569580078, -773.81872558594, 57.263038635254, 309.23223876953),
            vec4(1020.9332275391, -776.15081787109, 57.257633209229, 309.04739379883),
            vec4(1023.2389526367, -779.12200927734, 57.251071929932, 310.11309814453),
            vec4(1025.6228027344, -782.16314697266, 57.243919372559, 307.69436645508),
            vec4(1027.9729003906, -785.03326416016, 57.242118835449, 310.36267089844),
            vec4(1038.1553955078, -791.40539550781, 57.312992095947, 2.0437705516815),
            vec4(1042.0911865234, -791.49481201172, 57.349227905273, 359.8967590332),
            vec4(1046.0810546875, -785.68212890625, 57.351173400879, 93.232841491699),
            vec4(1046.6002197266, -782.08197021484, 57.358936309814, 89.056213378906),
            vec4(1046.3989257813, -778.26098632813, 57.367191314697, 93.022323608398),
            vec4(1045.9250488281, -774.6181640625, 57.377620697021, 92.567596435547),
            vec4(1029.8688964844, -788.19445800781, 57.224864959717, 307.84320068359),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(1035.0712890625, -765.19659423828, 56.995044708252, 147.18421936035),
    },
    -- BOAT GARAGES
    ['La Puerta Boat'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'boat',
        impoundIn      = 'Boat Impound',
        pos            = vec4(-761.92810058594, -1370.1292724609, -0.47471886873245, 140.1520),
        size           = vec3(21, 126, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-727.81530761719, -1326.5987548828, -0.094071432948112, 229.80152893066),
            vec4(-733.33190917969, -1332.6695556641, -0.08595734834671, 229.80354309082),
            vec4(-739.35668945313, -1339.9422607422, -0.095463529229164, 229.78338623047),
            vec4(-745.50311279297, -1347.1071777344, -0.070759519934654, 229.80442810059),
            vec4(-750.82720947266, -1353.5904541016, -0.11510844528675, 229.79382324219),
            vec4(-757.01312255859, -1360.8302001953, -0.10407355427742, 229.79582214355),
            vec4(-771.07604980469, -1377.4093017578, -0.089632928371429, 229.81011962891),
            vec4(-775.16369628906, -1385.5844726563, -0.088174432516098, 234.73382568359),
            vec4(-780.06219482422, -1391.9166259766, -0.041924431920052, 234.73052978516),
            vec4(-787.36322021484, -1398.3914794922, -0.065565600991249, 231.17677307129),
            vec4(-794.11889648438, -1405.9254150391, -0.078368499875069, 231.18263244629),
            vec4(-799.26190185547, -1412.4825439453, -0.063017770648003, 231.16915893555),
        },
        blip           = true,
        sprite         = 427,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-718.55004882813, -1326.7746582031, 0.5962884426117, 48.328620910645),
    },
    ['Paleto Cove'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'boat',
        impoundIn      = 'Boat Impound',
        pos            = vec4(-1590.1145019531, 5263.9028320313, 0.36925473809242, 25.3668098449707),
        size           = vec3(35, 20, 7),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-1599.9913330078, 5260.8452148438, 0.45005643367767, 26.22989654541)
        },
        blip           = true,
        sprite         = 427,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-1604.6020507813, 5256.5966796875, 1.0740420818329, 27.048063278198),
    },
    ['Océano Pacífio'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'boat',
        impoundIn      = 'Boat Impound',
        pos            = {
            vec3(3873.0, 4429.0, 0.0),
            vec3(3837.0, 4429.0, 0.0),
            vec3(3833.0, 4464.0, 0.0),
            vec3(3874.0, 4472.0, 0.0),
        },
        thickness      = 7.0,
        SetInToVehicle = false,
        spawnpos       = {
            vec4(3854.6528320313, 4454.9545898438, 0.11927646398544, 267.66812133789),
        },
        blip           = true,
        sprite         = 427,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(3856.98828125, 4465.0546875, 1.7164289951324, 172.26901245117),

    },
    ['Boat Impound'] = {
        impound        = true,
        ShareGarage    = false,
        impoundPrice   = 1431,
        type           = 'boat',
        pos            = vec4(-781.90472412109, -1497.3582763672, 1.2815128564835, 242.03529357910156),
        size           = vec3(80, 80, 10),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-808.94744873047, -1508.1628417969, -0.55900025367737, 114.28608703613),
        },
        blip           = true,
        sprite         = 404,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-788.95941162109, -1490.6604003906, 0.5952168703079, 289.04177856445),
    },
    -- AIRCRAFT GARAGE
    ['Aeropuerto INYL. de los Santos'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'air',
        impoundIn      = 'AirCraft Impound',
        pos            = vec4(-973.48748779297, -2997.5534667969, 13.944133758545, 242.03529357910156),
        size           = vec3(80, 80, 10),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-969.91619873047, -3002.1491699219, 13.656873703003, 59.526836395264),
        },
        blip           = true,
        sprite         = 307,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-990.21435546875, -2949.2897949219, 12.945067405701, 239.44729614258),
    },
    ['Air Grand Senora'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'air',
        impoundIn      = 'AirCraft Impound',
        pos            = vec4(1691.5272216797, 3247.7075195313, 42.049549102783, 242.03529357910156),
        size           = vec3(80, 80, 10),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(1693.6160888672, 3247.6115722656, 42.06803894043, 105.45626831055),
        },
        blip           = true,
        sprite         = 307,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(1694.4133300781, 3267.849609375, 39.96208190918, 196.4981842041),
    },
    ['Air Grapeseed'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'air',
        impoundIn      = 'AirCraft Impound',
        pos            = {
            vec3(2115.0, 4787.0, 41.0),
            vec3(2104.0, 4811.0, 41.0),
            vec3(2145.0, 4830.0, 41.0),
            vec3(2156.0, 4803.0, 41.0),
            vec3(2137.0, 4794.0, 41.0),
            vec3(2147.0, 4779.0, 41.0),
            vec3(2126.0, 4769.0, 41.0),
        },
        size           = vec3(80, 80, 10),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(2135.99609375, 4808.251953125, 41.192138671875, 113.49552154541),
        },
        blip           = true,
        sprite         = 307,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(2120.1982421875, 4788.8974609375, 40.117012023926, 30.224967956543),
    },
    ['AirCraft Impound'] = {
        impound        = true,
        ShareGarage    = false,
        impoundPrice   = 15000,
        type           = 'air',
        pos            = vec4(-1273.9510498047, -3384.6257324219, 14.940139770508, 242.03529357910156),
        size           = vec3(80, 80, 10),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-1273.9510498047, -3384.6257324219, 14.940139770508, 327.8265991210935),
        },
        blip           = true,
        sprite         = 307,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-1284.7535400391, -3403.1101074219, 12.940143585205, 330.12164306641),
    },
    --JOB GARAGE
    --Police
    ['Mission Row'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        job            = 'police',
        thickness      = 3,
        pos            = {
            vec3(426.16000366211, -1017.8599853516, 29.0),
            vec3(410.0, -1018.0, 29.0),
            vec3(411.0, -1033.0, 29.0),
            vec3(459.0, -1027.0, 29.0),
            vec3(459.0, -1007.0, 29.0),
            vec3(427.0, -1007.0, 29.0),
        },
        size           = vec3(50, 50, 3),
        SetInToVehicle = true,
        SpawnCars      = true,
        jobcar         = {
            --  MODEL NAME        NUMBER/LABEL      MAX 8 CHARACTERS.
            { model = 'pbus',    grade = 1,      plate = 'RAWPAPEL' },
            { model = 'police',  grade = 2,      plate = 'RAWPAPEL' },
            { model = 'police2', grade = 3,      plate = 'RAWPAPEL' },
            { model = 'police3', grade = 4,      plate = 'RAWPAPEL' },
            { model = 'police4', grade = 'boss', plate = 'RAWPAPEL' },
        },
        spawnpos       = {
            vec4(449.47247314453, -1025.0061035156, 28.157459259033, 7.5106601715088),
            vec4(445.86441040039, -1025.4759521484, 28.228605270386, 6.0413208007813),
            vec4(442.45785522461, -1025.564453125, 28.284931182861, 5.17192029953),
            vec4(438.95941162109, -1025.791015625, 28.348941802979, 4.5642433166504),
            vec4(435.37606811523, -1026.4348144531, 28.428211212158, 6.4040336608887),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 29,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(459.26806640625, -1008.0474853516, 27.258068084717, 92.018943786621),
    },
    ['Mission Row Air'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'air',
        impoundIn      = 'AirCraft Impound',
        job            = 'police',
        pos            = vec4(450.50186157227, -981.42895507813, 43.404476165771, 90.6708526611328),
        size           = vec3(20, 20, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(450.50189208984, -981.42883300781, 43.404003143311, 90.670883178711),
        },
        blip           = true,
        sprite         = 64,
        scale          = 0.6,
        colorblip      = 29,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(458.42761230469, -985.85266113281, 42.691696166992, 293.28179931641),
    },
    ['Mission Row Impound'] = {
        impound        = true,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        job            = 'police',
        Society        = 'society_police',
        pos            = vec4(474.15145874023, -1095.3350830078, 29.202104568481, 270.60968017578),
        size           = vec3(15, 30, 3),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(442.40338134766, -1020.0192260742, 28.22324180603, 90.319671630859),
        },
        blip           = true,
        sprite         = 524,
        scale          = 0.6,
        colorblip      = 0,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(458.69915771484, -1017.1785888672, 27.191934585571, 98.036026000977),
    },
    --Ambulance
    ['PillBox EMS'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'AirCraft Impound',
        job            = 'ambulance',
        pos            = vec4(329.1852722168, -575.96899414063, 28.796846389771, 159.96160888671875),
        size           = vec3(15, 30, 2),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(333.36407470703, -575.63244628906, 28.384586334229, 338.10067749023),
            vec4(325.93121337891, -572.48254394531, 28.384176254272, 339.78042602539),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 1,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(339.97662353516, -577.39678955078, 27.796838760376, 69.405403137207),
    },
    ['PillBox EMS Air'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'air',
        impoundIn      = 'AirCraft Impound',
        job            = 'ambulance',
        pos            = vec4(352.23852539063, -588.17376708984, 74.161697387695, 159.96160888671875),
        size           = vec3(20, 20, 5),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(352.23303222656, -588.19903564453, 73.874557495117, 73.819213867188),
        },
        blip           = true,
        sprite         = 64,
        scale          = 0.6,
        colorblip      = 1,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(341.15667724609, -590.27893066406, 73.161689758301, 359.56204223633),
    },
    -- Paleto Ambulance
    ['Paleot Bay EMS'] = {
        impound        = false,
        ShareGarage    = false,
        type           = 'car',
        priceSend      = 20,
        impoundIn      = 'AirCraft Impound',
        job            = 'paletoems',
        pos            = vec4(-266.31524658203, 6335.0893554688, 32.363765716553, 133.3769683837891),
        size           = vec3(15, 30, 2),
        SetInToVehicle = false,
        spawnpos       = {
            vec4(-257.8176574707, 6347.7309570313, 32.014705657959, 269.04821777344),
        },
        blip           = true,
        sprite         = 50,
        scale          = 0.6,
        colorblip      = 1,
        NPCHash        = 'csb_trafficwarden',
        NPCPos         = vec4(-253.35675048828, 6338.904296875, 31.426189422607, 45.707008361816),
    },
}
