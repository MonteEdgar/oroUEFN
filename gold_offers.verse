using { /Fortnite.com/Devices }
using { /Fortnite.com/Marketplace }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Verse.org/Assets }
using { /Verse.org/Simulation }
using { /Fortnite.com/Marketplace }



GoldInfo<public> := module:
    Gold10000<public> := module:
        Name<public><localizes>: message = "10K Monedas de oro"
        Description<public><localizes>: message = "Obtendras 10,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "10,000 Monedas de oro."
        Icon<public>:texture = Store.oro1
    Gold30000<public> := module:
        Name<public><localizes>: message = "30K Monedas de oro"
        Description<public><localizes>: message = "Obtendras 30,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "30,000 Monedas de oro."
        Icon<public>:texture = Store.oro2
    Gold50000<public> := module:
        Name<public><localizes>: message = "50K Monedas de oro"
        Description<public><localizes>: message = "Obtendras 50,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "50,000 Monedas de oro."
        Icon<public>:texture = Store.oro3
    Gold70000<public> := module:
        Name<public><localizes>: message = "70K Monedas de oro"
        Description<public><localizes>: message = "Obtendras 70,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "70,000 Monedas de oro."
        Icon<public>:texture = Store.oro3
    Gold100000<public> := module:
        Name<public><localizes>: message = "100K Monedas de oro"
        Description<public><localizes>: message = "Obtendras 100,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "100,000 Monedas de oro."
        Icon<public>:texture = Store.oro4

GoldEntitlements<public> := module:
    using {GoldInfo}

    pack_entitlement<public> := class<abstract><castable>(entitlement){}
    
    Oro_10000<public> := class<concrete>(pack_entitlement):
        var Name<override>:message = Gold10000.Name
        var Description<override>:message = Gold10000.Description
        var ShortDescription<override>:message = Gold10000.ShortDescription
        var Icon<override>:texture = Gold10000.Icon
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 1000000

    Oro_30000<public> := class<concrete>(pack_entitlement):
        var Name<override>:message = Gold30000.Name
        var Description<override>:message = Gold30000.Description
        var ShortDescription<override>:message = Gold30000.ShortDescription
        var Icon<override>:texture = Gold30000.Icon
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 1000000
    Oro_50000<public> := class<concrete>(pack_entitlement):
        var Name<override>:message = Gold50000.Name
        var Description<override>:message = Gold50000.Description
        var ShortDescription<override>:message = Gold50000.ShortDescription
        var Icon<override>:texture = Gold50000.Icon
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 1000000
    Oro_70000<public> := class<concrete>(pack_entitlement):
        var Name<override>:message = Gold70000.Name
        var Description<override>:message = Gold70000.Description
        var ShortDescription<override>:message = Gold70000.ShortDescription
        var Icon<override>:texture = Gold70000.Icon
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 1000000
    Oro_100000<public> := class<concrete>(pack_entitlement):
        var Name<override>:message = Gold100000.Name
        var Description<override>:message = Gold100000.Description
        var ShortDescription<override>:message = Gold100000.ShortDescription
        var Icon<override>:texture = Gold100000.Icon
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 1000000

GoldOffers<public> := module:
    using {GoldInfo}
    using {GoldEntitlements}

    Oro10000<public> := class(entitlement_offer):
        var Name<override>:message = Gold10000.Name
        var Description<override>:message = Gold10000.Description
        var ShortDescription<override>:message = Gold10000.ShortDescription
        var Icon<override>:texture = Gold10000.Icon

        EntitlementType<override>:concrete_subtype(entitlement) = GoldEntitlements.Oro_10000
        Price<override>:price_dimension = MakePriceVBucks(100.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro30000<public> := class(entitlement_offer):
        var Name<override>:message = Gold30000.Name
        var Description<override>:message = Gold30000.Description
        var ShortDescription<override>:message = Gold30000.ShortDescription
        var Icon<override>:texture = Gold30000.Icon

        EntitlementType<override>:concrete_subtype(entitlement) = GoldEntitlements.Oro_30000
        Price<override>:price_dimension = MakePriceVBucks(300.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro50000<public> := class(entitlement_offer):
        var Name<override>:message = Gold50000.Name
        var Description<override>:message = Gold50000.Description
        var ShortDescription<override>:message = Gold50000.ShortDescription
        var Icon<override>:texture = Gold50000.Icon

        EntitlementType<override>:concrete_subtype(entitlement) = GoldEntitlements.Oro_50000
        Price<override>:price_dimension = MakePriceVBucks(500.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50
    
    Oro70000<public> := class(entitlement_offer):
        var Name<override>:message = Gold70000.Name
        var Description<override>:message = Gold70000.Description
        var ShortDescription<override>:message = Gold70000.ShortDescription
        var Icon<override>:texture = Gold70000.Icon

        EntitlementType<override>:concrete_subtype(entitlement) = GoldEntitlements.Oro_70000
        Price<override>:price_dimension = MakePriceVBucks(700.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50
    
    Oro100000<public> := class(entitlement_offer):
        var Name<override>:message = Gold100000.Name
        var Description<override>:message = Gold100000.Description
        var ShortDescription<override>:message = Gold100000.ShortDescription
        var Icon<override>:texture = Gold100000.Icon

        EntitlementType<override>:concrete_subtype(entitlement) = GoldEntitlements.Oro_100000
        Price<override>:price_dimension = MakePriceVBucks(800.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50
        
using { GoldEntitlements }
gold_store<public> := class:

    @editable Button : button_device = button_device{}
    @editable Gold_10K : item_granter_device = item_granter_device{}
    @editable Gold_30K : item_granter_device = item_granter_device{}
    @editable Gold_50K : item_granter_device = item_granter_device{}
    @editable Gold_70K : item_granter_device = item_granter_device{}
    @editable Gold_100K : item_granter_device = item_granter_device{}

    OnEntitlementChanged(Result : tuple(player, []entitlement_change(entitlement))):void=
        for(ChangedOffer : Result(1), PlayerRef := Result(0)):

            EntitlementType := ChangedOffer.Entitlement
            ProductChange := ChangedOffer.Change

            if(Oro_10000[EntitlementType]):
                spawn. ConsumeGoldPack10k(PlayerRef, GoldEntitlements.Oro_10000, ProductChange)
            if(Oro_30000[EntitlementType]):
                spawn. ConsumeGoldPack30k(PlayerRef, GoldEntitlements.Oro_30000, ProductChange)
            if(Oro_50000[EntitlementType]):
                spawn. ConsumeGoldPack50k(PlayerRef, GoldEntitlements.Oro_50000, ProductChange)
            if(Oro_70000[EntitlementType]):
                spawn. ConsumeGoldPack70k(PlayerRef, GoldEntitlements.Oro_70000, ProductChange)
            if(Oro_100000[EntitlementType]):
                spawn. ConsumeGoldPack100k(PlayerRef, GoldEntitlements.Oro_100000, ProductChange)

    ConsumeGoldPack10k(PlayerRef : player, Entitlement : concrete_subtype(entitlement), NumberConsuming : int)<suspends>:void=
        Result := ConsumeEntitlement(PlayerRef, Entitlement, ?Count := NumberConsuming)
        for(I := 0 .. NumberConsuming-1, Result?). Gold_10K.GrantItem(PlayerRef)

    ConsumeGoldPack30k(PlayerRef : player, Entitlement : concrete_subtype(entitlement), NumberConsuming : int)<suspends>:void=
        Result := ConsumeEntitlement(PlayerRef, Entitlement, ?Count := NumberConsuming)
        for(I := 0 .. NumberConsuming-1, Result?). Gold_30K.GrantItem(PlayerRef)
    ConsumeGoldPack50k(PlayerRef : player, Entitlement : concrete_subtype(entitlement), NumberConsuming : int)<suspends>:void=
        Result := ConsumeEntitlement(PlayerRef, Entitlement, ?Count := NumberConsuming)
        for(I := 0 .. NumberConsuming-1, Result?). Gold_50K.GrantItem(PlayerRef)
    ConsumeGoldPack70k(PlayerRef : player, Entitlement : concrete_subtype(entitlement), NumberConsuming : int)<suspends>:void=
        Result := ConsumeEntitlement(PlayerRef, Entitlement, ?Count := NumberConsuming)
        for(I := 0 .. NumberConsuming-1, Result?). Gold_70K.GrantItem(PlayerRef)
    ConsumeGoldPack100k(PlayerRef : player, Entitlement : concrete_subtype(entitlement), NumberConsuming : int)<suspends>:void=
        Result := ConsumeEntitlement(PlayerRef, Entitlement, ?Count := NumberConsuming)
        for(I := 0 .. NumberConsuming-1, Result?). Gold_100K.GrantItem(PlayerRef)

    OpenStore(Agent : agent):void=
        if(PlayerRef := player[Agent]):
            spawn{ShowOffersDialog(PlayerRef, array{
                GoldOffers.Oro10000{},
                GoldOffers.Oro30000{},
                GoldOffers.Oro50000{},
                GoldOffers.Oro70000{},
                GoldOffers.Oro100000{}
            })}

