using { /Fortnite.com/Devices }
using { /Fortnite.com/Marketplace }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Verse.org/Assets }
using { /Verse.org/Simulation }

ProductInfo<public> := module:
    Oro10000<public> := module:
        Name<public><localizes>: message = "Oro 10,000 Monedas"
        Description<public><localizes>: message = "Obtendras 10,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "10,000 Monedas de oro."
    Oro30000<public> := module:
        Name<public><localizes>: message = "Oro 30,000 Monedas"
        Description<public><localizes>: message = "Obtendras 30,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "30,000 Monedas de oro."
    Oro50000<public> := module:
        Name<public><localizes>: message = "Oro 50,000 Monedas"
        Description<public><localizes>: message = "Obtendras 50,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "50,000 Monedas de oro."
    Oro70000<public> := module:
        Name<public><localizes>: message = "Oro 70,000 Monedas"
        Description<public><localizes>: message = "Obtendras 70,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "70,000 Monedas de oro."
    Oro100000<public> := module:
        Name<public><localizes>: message = "Oro 100,000 Monedas"
        Description<public><localizes>: message = "Obtendras 100,000 Monedas de oro."
        ShortDescription<public><localizes>: message = "100,000 Monedas de oro."


Products<public> := module:
    using {ProductInfo}

    # The base entitlement you should define for ALL your entitlements in your experience
    feature_product<public> := class<abstract><castable>(entitlement){}

    Oro_10000<public> := class<concrete>(feature_product):
        var Name<override>:message = Oro10000.Name
        var Description<override>:message = Oro10000.Description
        var ShortDescription<override>:message = Oro10000.ShortDescription
         # This MUST have an Icon from your project defined here as the class is <concrete>
        var Icon<override>:texture = Store.oro1
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 100000

    Oro_30000<public> := class<concrete>(feature_product):
        var Name<override>:message = Oro30000.Name
        var Description<override>:message = Oro30000.Description
        var ShortDescription<override>:message = Oro30000.ShortDescription
         # This MUST have an Icon from your project defined here as the class is <concrete>
        var Icon<override>:texture = Store.oro2
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 100000
    
    Oro_50000<public> := class<concrete>(feature_product):
        var Name<override>:message = Oro50000.Name
        var Description<override>:message = Oro50000.Description
        var ShortDescription<override>:message = Oro50000.ShortDescription
         # This MUST have an Icon from your project defined here as the class is <concrete>
        var Icon<override>:texture = Store.oro3
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 100000

    Oro_70000<public> := class<concrete>(feature_product):
        var Name<override>:message = Oro70000.Name
        var Description<override>:message = Oro70000.Description
        var ShortDescription<override>:message = Oro70000.ShortDescription
         # This MUST have an Icon from your project defined here as the class is <concrete>
        var Icon<override>:texture = Store.oro3
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 100000

    Oro_100000<public> := class<concrete>(feature_product):
        var Name<override>:message = Oro100000.Name
        var Description<override>:message = Oro100000.Description
        var ShortDescription<override>:message = Oro100000.ShortDescription
         # This MUST have an Icon from your project defined here as the class is <concrete>
        var Icon<override>:texture = Store.oro4
        # This is a sword, not a entitlement that gives a player a random item
        PaidRandomItem<override>:logic = false
        # This is a sword, not a entitlement that controls if a player has access to
        PaidArea<override>:logic = false
        # As a weapon, this is consequential to gameplay
        ConsequentialToGameplay<override>:logic = true
        Consumable<override>:logic = true
        MaxCount<override>:int = 100000

OffersInfo<public> := module:
    using {ProductInfo}

    Oro_10000<public> := class(entitlement_offer):
        var Name<override>:message                = ProductInfo.Oro10000.Name
        var Description<override>:message         = ProductInfo.Oro10000.Description
        var ShortDescription<override>:message    = ProductInfo.Oro10000.ShortDescription
        var Icon<override>:texture                = Store.oro1
        # Offers are linked to entitlements by entitlement type, not an instantiated entitlement object
        EntitlementType<override>:concrete_subtype(entitlement) = Products.Oro_10000
        Price<override>:price_dimension = MakePriceVBucks(100.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro_30000<public> := class(entitlement_offer):
        var Name<override>:message                = ProductInfo.Oro30000.Name
        var Description<override>:message         = ProductInfo.Oro30000.Description
        var ShortDescription<override>:message    = ProductInfo.Oro30000.ShortDescription
        var Icon<override>:texture                = Store.oro2
        # Offers are linked to entitlements by entitlement type, not an instantiated entitlement object
        EntitlementType<override>:concrete_subtype(entitlement) = Products.Oro_30000
        Price<override>:price_dimension = MakePriceVBucks(300.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro_50000<public> := class(entitlement_offer):
        var Name<override>:message                = ProductInfo.Oro50000.Name
        var Description<override>:message         = ProductInfo.Oro50000.Description
        var ShortDescription<override>:message    = ProductInfo.Oro50000.ShortDescription
        var Icon<override>:texture                = Store.oro3
        # Offers are linked to entitlements by entitlement type, not an instantiated entitlement object
        EntitlementType<override>:concrete_subtype(entitlement) = Products.Oro_50000
        Price<override>:price_dimension = MakePriceVBucks(500.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro_70000<public> := class(entitlement_offer):
        var Name<override>:message                = ProductInfo.Oro70000.Name
        var Description<override>:message         = ProductInfo.Oro70000.Description
        var ShortDescription<override>:message    = ProductInfo.Oro70000.ShortDescription
        var Icon<override>:texture                = Store.oro3
        # Offers are linked to entitlements by entitlement type, not an instantiated entitlement object
        EntitlementType<override>:concrete_subtype(entitlement) = Products.Oro_70000
        Price<override>:price_dimension = MakePriceVBucks(700.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

    Oro_100000<public> := class(entitlement_offer):
        var Name<override>:message                = ProductInfo.Oro100000.Name
        var Description<override>:message         = ProductInfo.Oro100000.Description
        var ShortDescription<override>:message    = ProductInfo.Oro100000.ShortDescription
        var Icon<override>:texture                = Store.oro4

        # Offers are linked to entitlements by entitlement type, not an instantiated entitlement object
        EntitlementType<override>:concrete_subtype(entitlement) = Products.Oro_100000
        Price<override>:price_dimension = MakePriceVBucks(900.0) # Prices should be between 50 and 5000 Vbucks and in increments of 50

offer_dialogue_device<public> := class(creative_device):
    @editable
    Button : button_device = button_device{}

    OnBegin<override>()<suspends>:void=
        Button.InteractedWithEvent.Subscribe(OnButtonInteraction)

    OnButtonInteraction(Agent:agent):void=
        if (Player := player[Agent]):
        # Shows shop UI with list of selected offers
            spawn{ShowOffersDialog(Player, array{
                OffersInfo.Oro_10000{},
                OffersInfo.Oro_30000{},
                OffersInfo.Oro_50000{},
                OffersInfo.Oro_70000{},
                OffersInfo.Oro_100000{}
            })}