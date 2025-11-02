function OnStatsLoaded()
    for _, resourceGuid in pairs(Ext.StaticData.GetAll("ClassDescription")) do
        local classDescription = Ext.StaticData.Get(resourceGuid, "ClassDescription")
        if (classDescription.BaseHp > 0) then
            classDescription.HasGod = true
        else
        end
    end
end

Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)