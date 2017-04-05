
function CustomizeWastelands(game, standing)
    local numWastelands = game.Settings.NumberOfWastelands;
    local numUniqueWastelands = Mod.Settings.NumberOfUniqueWastelandValues;
    local i = 0

	for _, territory in pairs(standing.Territories) do
        local numArmies = territory.NumArmies.NumArmies;
        if (territory.OwnerPlayerID == PlayerID.Neutral and numArmies == game.Settings.WastelandSize) then  
            i = i + 1   

            -- Set one half of the wastelands to the first value, and the other half to the second      
            local newArmies = nil;
            if i % numUniqueWastelands == 0 then newArmies = Mod.Settings.wastelandValue1;
            else newArmies = Mod.Settings.wastelandValue2; end

            if (newArmies < 0) then newArmies = 0 end
            if (newArmies > 100000) then newArmies = 100000 end
            territory.NumArmies = Armies(newArmies);
        end
    end
end