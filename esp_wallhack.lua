    -- FONT DECLARATION
    surface.CreateFont( "B:HudSytem:Font", {
        font = "Arial",
        extended = false,
        size = 26,
        weight = 500,
    } )
    surface.CreateFont( "B:HudSytem:Font2", {
        font = "Arial",
        extended = false,
        size = 16,
        weight = 500,
    } )

     surface.CreateFont( "B:HudSytem:Font3", {
        font = "Arial",
        extended = false,
        size = 15,
        weight = 700,
    } )

    -- check if value is present in given array
    function present(tableau, valeur)
        for _, v in ipairs(tableau) do
            if v == valeur then
                return true
            end
        end
        return false
    end


    -- WALLHACK
    function wallhack(ply)
        local teamcol = Color( 70, 159, 218 )
        local pos = ply:GetPos()
        local pos2 = pos + Vector(0, 0, 70)
        local pos = pos:ToScreen()
        local pos2 = pos2:ToScreen()
        local h = pos.y - pos2.y
        if ply:LookupBone("ValveBiped.Bip01_L_Hand") ~= nil and ply:LookupBone("ValveBiped.Bip01_Spine2") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Forearm") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_UpperArm") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Clavicle") ~= nil and ply:LookupBone("ValveBiped.Bip01_Head1") ~= nil and ply:LookupBone("ValveBiped.Bip01_Neck1") ~= nil and ply:LookupBone("ValveBiped.Bip01_Spine1") ~= nil and ply:LookupBone("ValveBiped.Bip01_Spine") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Thigh") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Toe0") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Foot") ~= nil and ply:LookupBone("ValveBiped.Bip01_L_Calf") ~= nil then
            cam.Start3D( EyePos(), EyeAngles() )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Toe0")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Foot")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Toe0")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Foot")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Foot")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Calf")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Foot")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Calf")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Calf")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Thigh")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Calf")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Thigh")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Thigh")),    ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Thigh")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Spine")),      ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Spine1")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Spine1")),     ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Spine2")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Neck1")),      ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_Head1")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Clavicle")), ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_UpperArm")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Clavicle")), ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_UpperArm")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_UpperArm")), ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Forearm")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_UpperArm")), ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Forearm")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Forearm")),  ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_L_Hand")), teamcol, false )
                render.DrawLine( ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Forearm")),  ply:GetBonePosition(ply:LookupBone("ValveBiped.Bip01_R_Hand")), teamcol, false )
            cam.End3D()
        end
    end

    -- get players present in an other player perimeters return array
    local function GetPlayersInPerimeters()
        local grouper = {}
        for _, joueur in pairs(player.GetAll()) do
            local rayon = 10
            local positionJoueur = joueur:GetPos()
            for _, autreJoueur in pairs(player.GetAll()) do
                local distance = math.Round(positionJoueur:Distance(autreJoueur:GetPos()) / 15)
                if distance <= rayon and distance ~= 0 then
                    table.insert(grouper, joueur)
                    table.insert(grouper, autreJoueur)
                end
            end
        end
        return grouper
    end

    -- DRAW HUD
    function drawHudProche(ply, distance, iCenterPos)
        surface.SetDrawColor(0, 110, 255, 160)

        if distance <= 150 then
            draw.RoundedBox(8, iCenterPos.x - 120,iCenterPos.y - 100, 200, 30, Color(70, 159, 218))
            draw.RoundedBox(8, iCenterPos.x - 120, iCenterPos.y - 100, 200, 100, Color(32, 21, 34, 190))
                        
            draw.SimpleText(ply:Nick(), "B:HudSytem:Font", iCenterPos.x - 50, iCenterPos.y - 98, Color( 254, 254, 254 ))
            draw.SimpleText("Rank : "..ply:GetUserGroup(), "B:HudSytem:Font2", iCenterPos.x - 115, iCenterPos.y - 63, Color( 254, 254, 254 ))
            draw.SimpleText("Distance : "..math.Round(LocalPlayer():GetPos():Distance(ply:GetPos())/15) .. "m", "B:HudSytem:Font2", iCenterPos.x - 115, iCenterPos.y - 40, Color( 254, 254, 254 ))
            draw.SimpleText("dans la main : "..ply:GetActiveWeapon():GetClass(), "B:HudSytem:Font2", iCenterPos.x - 115, iCenterPos.y - 20, Color( 254, 254, 254 ))
        end
    end

    function drawHudLoin(ply, distance, iCenterPos)
            if distance >= 150 then
                draw.SimpleText(ply:Nick(), "B:HudSytem:Font3", iCenterPos.x - 25, iCenterPos.y - 30, Color( 70, 159, 218 ))
                draw.SimpleText(distance, "B:HudSytem:Font3", iCenterPos.x - 19, iCenterPos.y - 15, Color( 70, 159, 218 ))
            end
    end

    -- CONSTRUCTOR --

    hook.Add("HUDPaint", "WallhackEsp", function()
        for _, v in pairs( player.GetAll() ) do
            wallhack(v)
            local iCenterPos = (v:GetPos() + v:OBBMaxs()):ToScreen()
            distance = math.Round(LocalPlayer():GetPos():Distance(v:GetPos())/15)
            drawHudLoin(v, distance, iCenterPos)
            if distance > 5000 or v == LocalPlayer() or !IsValid(v) or !v:Alive() or v:GetObserverMode() != OBS_MODE_NONE or present(GetPlayersInPerimeters(), v) == true then continue end
            drawHudProche(v, distance, iCenterPos)
        end

        for _, v in pairs(GetPlayersInPerimeters()) do
            local pTarget = LocalPlayer():GetEyeTrace().Entity
            if !IsValid(pTarget) and !pTarget:IsPlayer() then continue end
            distance = math.Round(LocalPlayer():GetPos():Distance(pTarget:GetPos())/15)
            local iCenterPos = (pTarget:GetPos() + pTarget:OBBMaxs()):ToScreen()
            drawHudProche(pTarget, distance, iCenterPos)
        end

    end)


