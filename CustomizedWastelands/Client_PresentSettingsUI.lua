
function Client_PresentSettingsUI(rootParent)
	UI.CreateLabel(rootParent).SetText('Create wastelands of customized sizes');
	local vert = UI.CreateVerticalLayoutGroup(rootParent);
	UI.CreateLabel(vert).SetText('Number of unique wastelands = ' .. Mod.Settings.NumberOfUniqueWastelandValues);
	UI.CreateLabel(vert).SetText('Wasteland value 1 = ' .. Mod.Settings.wastelandValue1);
	UI.CreateLabel(vert).SetText('% of Wastelands with value1 = ' .. Mod.Settings.wastelandWeight1);
	UI.CreateLabel(vert).SetText('Wasteland value 2 = ' .. Mod.Settings.wastelandValue2);
	UI.CreateLabel(vert).SetText('% of Wastelands with value2 = ' .. Mod.Settings.wastelandWeight2);
end