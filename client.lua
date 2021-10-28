Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

        exports['qtarget']:AddTargetModel(Config.Coffee, {
            options = {
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-coffee", 
                    label = "Coffee", 
                    item = "coffee",
                    price = 30,
                },
            },
            distance = Config.DistFrmModel
        })
        exports['qtarget']:AddTargetModel(Config.Soda, {
            options = {
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-glass-whiskey", 
                    label = "Coca-Cola", 
                    item = "cola", 
                    price = 40, 
                },
            },
            distance = Config.DistFrmModel
        })
        exports['qtarget']:AddTargetModel(Config.Snacks, {
            options = {
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-cookie", 
                    label = "Twix", 
                    item = "twix", 
                    price = 25, 
                },
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-cookie",
                    label = "Snickers",
                    item = "snickers",
                    price = 25,
                },
            },
            distance = Config.DistFrmModel
    })   
        exports['qtarget']:AddTargetModel(Config.Slushy, {
            options = {
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-glass-whiskey", 
                    label = "Slush Puppie", 
                    item = "slushy", 
                    price = 50, 
                },
                {
                    event = "OT_vending:buyclient",
                    icon = "fas fa-glass-whiskey", 
                    label = "Tango Ice Blast", 
                    item = "tangoiceblast", 
                    price = 50, 
                },
            },
            distance = Config.DistFrmModel
    })



RegisterNetEvent('OT_vending:buyclient')
AddEventHandler('OT_vending:buyclient', function(data)
    TriggerServerEvent('OT_vending:buy', data.item, data.price)
end)