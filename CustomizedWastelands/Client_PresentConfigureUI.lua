
function Client_PresentConfigureUI(rootParent)
	local initialValue = 5;

    local mainContainer = UI.CreateVerticalLayoutGroup(rootParent);
	local numberOfUniqueWastelandValuesContainer = UI.CreateHorizontalLayoutGroup(mainContainer);
	UI.CreateLabel(numberOfUniqueWastelandValuesContainer).SetText('Number of Unique Wasteland Values');
    numberOfUniqueWastelandValues = UI.CreateNumberInputField(numberOfUniqueWastelandValuesContainer)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(15)
		.SetValue(2);
	
	local wastelandContainer1 = UI.CreateHorizontalLayoutGroup(mainContainer);
	UI.CreateLabel(wastelandContainer1).SetText('Wasteland Value 1');
	wastelandValue1 = UI.CreateNumberInputField(wastelandContainer1)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(15)
		.SetValue(initialValue);
	UI.CreateLabel(wastelandContainer1).SetText('% of Wastelands with this value');
	wastelandWeight1 = UI.CreateNumberInputField(wastelandContainer1)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(100)
		.SetValue(50);
	
	local wastelandContainer2 = UI.CreateHorizontalLayoutGroup(mainContainer);
	UI.CreateLabel(wastelandContainer2).SetText('Wasteland Value 2');		
	wastelandValue2 = UI.CreateNumberInputField(wastelandContainer2)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(15)
		.SetValue(initialValue);	
	UI.CreateLabel(wastelandContainer2).SetText('% of Wastelands with this value');
	wastelandWeight2 = UI.CreateNumberInputField(wastelandContainer2)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(100)
		.SetValue(50);
end