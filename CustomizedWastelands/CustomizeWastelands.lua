
function CustomizeWastelands(game, standing)
    local numWastelands = game.Settings.NumberOfWastelands;
    local numUniqueWastelands = 2;
    local i = 0

	for _, territory in pairs(standing.Territories) do
        local numArmies = territory.NumArmies.NumArmies;
        if (territory.OwnerPlayerID == PlayerID.Neutral and numArmies == game.Settings.WastelandSize) then  
            i = i + 1   

            --[[Set wastelands to appropriate value based on provided weights. If the weights do not add up 
               to 100, the remaining % of wastelands will be given the default wasteland value. ]]
            local newArmies = nil;
            wasteland_counter = i / numWastelands * 100;
            if wasteland_counter <= Mod.Settings.wastelandWeight1 
                then newArmies = Mod.Settings.wastelandValue1
            elseif wasteland_counter <= Mod.Settings.wastelandWeight1 + Mod.Settings.wastelandWeight2
                then newArmies = Mod.Settings.wastelandValue2;
            else
                newArmies = game.Settings.WastelandSize
            end

            if (newArmies < 0) then newArmies = 0 end
            if (newArmies > 100000) then newArmies = 100000 end
            territory.NumArmies = Armies(newArmies);
        end
    end
end