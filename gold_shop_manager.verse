using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Marketplace }

gold_shop_manager := class(creative_device):

    @editable PlayerSpawners : []player_spawner_device = array{}
    @editable GoldPacks : gold_store = gold_store{}

    var GoldPacksChangedEventMap : [player]?cancelable = map{}

    OnBegin<override>()<suspends>:void=
        for(SpawnerDevice : PlayerSpawners). SpawnerDevice.SpawnedEvent.Subscribe(OnSpawnedEvent)
        GetPlayspace().PlayerRemovedEvent().Subscribe(OnPlayerRemoved)
        GoldPacks.Button.InteractedWithEvent.Subscribe(GoldPacks.OpenStore)

    OnSpawnedEvent(Agent : agent):void=
        if(PlayerRef := player[Agent]):
            if(not GoldPacksChangedEventMap[PlayerRef]?):
                NewGoldPacksSubscription := GetEntitlementsChangedEvent(PlayerRef, GoldEntitlements.pack_entitlement).Subscribe(GoldPacks.OnEntitlementChanged)
                if. set GoldPacksChangedEventMap[PlayerRef] = option. NewGoldPacksSubscription

    OnPlayerRemoved(LeavingPlayerRef : player):void=
        if(GoldPacksSubscription := GoldPacksChangedEventMap[LeavingPlayerRef]?):
            GoldPacksSubscription.Cancel()

            var TempEventMap : [player]?cancelable = map{}

            for(PlayerRef -> Subscription : GoldPacksChangedEventMap, PlayerRef <> LeavingPlayerRef):
                set TempEventMap = ConcatenateMaps(TempEventMap, map{PlayerRef => Subscription})

                set GoldPacksChangedEventMap = TempEventMap