NamePlateBaseMixin.ApplyOffsets = function()
	if self.driverFrame:IsUsingLargerNamePlateStyle() then
	--Original Blizzard
		--self.UnitFrame.BuffFrame:SetBaseYOffset(20);
	--New Value
		self.UnitFrame.BuffFrame:SetBaseYOffset(-10);
	else
	--Unmodified
		self.UnitFrame.BuffFrame:SetBaseYOffset(0);
	end

	local targetMode = GetCVarBool("nameplateResourceOnTarget");
	if targetMode then
		self.UnitFrame.BuffFrame:SetTargetYOffset(18);
	else
		self.UnitFrame.BuffFrame:SetTargetYOffset(0);
	end
end