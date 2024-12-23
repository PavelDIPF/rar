-------------------------------------------------------------------------------------
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("🎮 CasualScript - V1", "RJTheme7") -- Замени RJTheme3 на твою тему, если нужно
local Tab = Window:NewTab("❓ Help")
-------------------------------------------------------------------------------------
local Section = Tab:NewSection("Добро пожаловать, рад видеть!")
Section:NewLabel("✨ CasualScript by 'PavelDIPF' ✨")
Section:NewLabel("❓ Вопросы и предложения: https://t.me/Pasha_Zoloto")
Section:NewLabel("🛠️ Разработано в одиночку by 'PavelDIPF'")
Section:NewLabel("🎮 Скрипт для CasualStock")
Section:NewLabel("📱 Telegram CasualStock: https://t.me/casualstockrbx")
Section:NewLabel("🙏 Спасибо, что играешь с моим скриптом! 🌟")
Section:NewLabel("⚠️ Версия 1.0 — много багов")
Section:NewLabel("🛠️ Работаю над улучшениями!")
-------------------------------------------------------------------------------------
local Tab = Window:NewTab("🏃‍♂️ Movement")
local Section = Tab:NewSection("Телепорты")
-------------------------------------------------------------------------------------
Section:NewButton("🚀 Телепорт к Барыге", "⚡ Мгновенное перемещение к Барыге — 'Флаг на месте' 🏁", function()
    local targetPlayer = game.Players.LocalPlayer  -- Получаем игрока, который нажал кнопку
    local targetPosition = Vector3.new(16.69569206237793, 165.5271453857422, -35.45377731323242)  -- Заданные координаты

    -- Функция для телепортации игрока на заданные координаты
    local function teleportPlayer()
        if targetPlayer and targetPlayer.Character then
            local character = targetPlayer.Character
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(targetPosition)  -- Телепортация на новые координаты
            print(targetPlayer.Name .. " телепортирован на позицию: " .. tostring(targetPosition))
        else
            print(targetPlayer.Name .. " не в игре или у него нет персонажа.")
        end
    end

    -- Выполняем телепортацию
    teleportPlayer()
end)
-------------------------------------------------------------------------------------
Section:NewButton("🚀 Телепорт в ТЦ", "⚡ Мгновенное перемещение в ТЦ — 'Флаг на месте' 🏬", function()
    local targetPlayer = game.Players.LocalPlayer  -- Получаем игрока, который нажал кнопку
    local targetPosition = Vector3.new(1.4840127229690552, 181.68943786621094, 138.5951690673828)  -- Заданные координаты

    -- Функция для телепортации игрока на заданные координаты
    local function teleportPlayer()
        if targetPlayer and targetPlayer.Character then
            local character = targetPlayer.Character
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(targetPosition)  -- Телепортация на новые координаты
            print(targetPlayer.Name .. " телепортирован на позицию: " .. tostring(targetPosition))
        else
            print(targetPlayer.Name .. " не в игре или у него нет персонажа.")
        end
    end

    -- Выполняем телепортацию
    teleportPlayer()
end)
-------------------------------------------------------------------------------------
Section:NewButton("💸 Телепорт в БАНК", "🏦 Телепортация в БАНК — Тьньконн 'Флаг на месте' 💰", function()
    local targetPlayer = game.Players.LocalPlayer  -- Получаем игрока, который нажал кнопку
    local targetPosition = Vector3.new(6.574471950531006, 190.4480438232422, -468.61065673828125)  -- Заданные координаты

    -- Функция для телепортации игрока на заданные координаты
    local function teleportPlayer()
        if targetPlayer and targetPlayer.Character then
            local character = targetPlayer.Character
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(targetPosition)  -- Телепортация на новые координаты
            print(targetPlayer.Name .. " телепортирован на позицию: " .. tostring(targetPosition))
        else
            print(targetPlayer.Name .. " не в игре или у него нет персонажа.")
        end
    end

    -- Выполняем телепортацию
    teleportPlayer()
end)
-------------------------------------------------------------------------------------
local Section = Tab:NewSection("🚶‍♂️ Ходьба")
-------------------------------------------------------------------------------------
-- Скрипт для переключателя
Section:NewToggle("🚫 NoClip", "🔧 Включить/выключить NoClip", function(state)
    if state then
        -- Включение NoClip
        _G.NoClip = true
        local function noclip()
            while _G.NoClip do
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
                game:GetService("RunService").Stepped:wait()
            end
        end
        -- Запуск функции NoClip в новом потоке
        spawn(noclip)
        print("NoClip On")
    else
        -- Выключение NoClip
        _G.NoClip = false
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
        print("NoClip Off")
    end
end)
-------------------------------------------------------------------------------------
Section:NewSlider("⚡ SpeedHack", "🚀 Увеличивает скорость от 16 до 40", 40, 16, function(SpeedHacks)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedHacks
end)
Section:NewSlider("⛅ HighJump", "💥 Увеличит высоту прыжка от 50 до 120", 120, 50, function(JumpHacks)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpHacks
end)
-------------------------------------------------------------------------------------
local Tab = Window:NewTab("🎨 Visuals")
local Section = Tab:NewSection("👕 Кофты")
-------------------------------------------------------------------------------------
local Players = game:GetService("Players")

local outfits = {
    {"🧥 Enfants Riches Déprimés 3", "rbxassetid://16779593784", "🕶️ На вас оденется стиль Enfants Riches Déprimés 3"},
    {"👔 Enfants Riches Déprimés 4", "rbxassetid://13466748522", "🎽 На вас оденется стиль Enfants Riches Déprimés 4"},
    {"🖤 Black Рубашка Prada 2", "rbxassetid://14101685539", "👗 Стиль Black Рубашка Prada 2"},
    {"🔴 Красная Футболка Россия", "rbxassetid://2212959869", "👕 На вас оденется Красная Футболка Россия"},
    {"👔 Рубашка Junya Watanabe", "rbxassetid://11264199071", "👖 Стиль Рубашка Junya Watanabe"},
    {"👟 Спортивная кофта Balenciaga", "rbxassetid://15451032152", "🏃 На вас оденется Спортивная кофта Balenciaga"},
    {"👜 Кофта Gucci", "rbxassetid://6541107690", "🧥 На вас оденется стиль Кофта Gucci"},
    {"⭐ Vetements Limited Edition", "rbxassetid://9497926360", "🧥 Оденьтесь в Vetements Limited Edition"},
    {"💎 Balenciaga X Maison Margiela", "rbxassetid://15628687797", "🧥 Оденьтесь в Balenciaga X Maison Margiela"},
    {"💫 Sp4rkleTlme x Balenciaga", "rbxassetid://15848014577", "💎 На вас оденется Sp4rkleTlme x Balenciaga"},
    {"🚔 Кофта Полиция Vetements", "rbxassetid://16809533910", "👔 На вас оденется Кофта Полиция Vetements"},
    {"👗 Maison Margiela", "rbxassetid://13898853467", "🖤 Оденьте стиль Margiela"},
    {"🎄 Louis Vuitton", "rbxassetid://6105652166", "🎁 На вас оденется стиль Louis Vuitton"},
    {"🧥 Balenciaga x Adidas", "rbxassetid://15197528326", "👔 Оденьте стиль Balenciaga x Adidas"},
    {"👚 Vetements X Alpha Industries", "rbxassetid://16359573348", "🧥 Оденьте стиль Vetements X Alpha Industries"},
    {"👜 Balenciaga X Adidas 2", "rbxassetid://12158110227", "🎽 Оденьте стиль Balenciaga X Adidas 2"},
    {"🧤 Vivienne Westwood", "rbxassetid://17030256704", "🎀 Оденьте стиль Vivienne Westwood"},
    {"🎩 Enfants Riches Déprimés", "rbxassetid://16113798643", "🕶️ Оденьте стиль Enfants Riches Déprimés"},
    {"🧥 Enfants Riches Déprimés 2", "rbxassetid://18144309853", "🎩 Оденьте стиль Enfants Riches Déprimés 2"},
    {"👗 Ночнушка Chrome Hearts", "rbxassetid://17759378944", "🌙 Оденьте стиль Chrome Hearts"},
    {"💎 Supreme x Louis Vuitton Gold", "rbxassetid://1603075026", "👕 Оденьте стиль Supreme x Louis Vuitton"},
    {"🔴 Red Balenciaga x Adidas", "rbxassetid://11683970401", "🧢 Оденьте стиль Red Balenciaga x Adidas"},
    {"🌍 Europa Vetements", "rbxassetid://11661624414", "🧢 Оденьте стиль Europa Vetements"},
    {"🖤 Black Adidas x Balenciaga", "rbxassetid://11664305271", "👟 Оденьте стиль Black Adidas x Balenciaga"},
    {"🟢 Green Vetements Polizei", "rbxassetid://15054471691", "👕 Оденьте стиль Green Vetements Polizei"},
    {"🌐 Europa Balenciaga", "rbxassetid://5674420919", "👔 Оденьте стиль Europa Balenciaga"},
    {"🖤 Black Рубашка Prada", "rbxassetid://17865141623", "👕 Оденьте стиль Black Рубашка Prada"}
}

for _, outfit in ipairs(outfits) do
    Section:NewButton(outfit[1], outfit[3], function()
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local shirt = character:FindFirstChildOfClass("Shirt")
        
        if shirt then
            shirt.ShirtTemplate = outfit[2]
            print(player.Name .. " в " .. outfit[1])
        else
            print(player.Name .. " не имеет Shirt в своем персонаже!")
        end
    end)
end
-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👖 Штаны")
-------------------------------------------------------------------------------------
local Players = game:GetService("Players")

local pantsOutfits = {
    {"🔥 The North Face x Supreme 2", "rbxassetid://4966190466", "👖 На вас оденутся штаны The North Face x Supreme 2"},
    {"⚡ Rick Owens x Champion", "rbxassetid://14956104811", "👖 На вас оденутся штаны Rick Owens x Champion"},
    {"🩳 Какиш Боксеры", "rbxassetid://15091472279", "👖 На вас оденутся Боксеры"},
    {"💼 Carhartt x Chrome Hearts", "rbxassetid://8643013382", "👖 На вас оденутся штаны Carhartt x Chrome Hearts"},
    {"🌸 Pink Chrome Hearts", "rbxassetid://7113469887", "👖 На вас оденутся штаны Pink Chrome Hearts"},
    {"❤️ Red Chrome Hearts", "rbxassetid://6419276153", "👖 На вас оденутся штаны Red Chrome Hearts"},
    {"🧡 Orange The North Face x Supreme", "rbxassetid://546958877", "👖 На вас оденутся штаны Orange The North Face x Supreme"},
    {"💙 Blue Chrome Hearts з Хрестами", "rbxassetid://11773666578", "👖 На вас оденутся штаны Blue Chrome Hearts з Хрестами"},
    {"💜 Purple Camouflage Supreme", "rbxassetid://2020173790", "👖 На вас оденутся штаны Purple Camouflage Supreme"}
}

for _, outfit in ipairs(pantsOutfits) do
    Section:NewButton(outfit[1], outfit[3], function()
        -- Получаем персонажа игрока
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        -- Ищем Pants в персонаже
        local pants = character:FindFirstChildOfClass("Pants")
        
        -- Устанавливаем новый шаблон для штанов
        if pants then
            pants.PantsTemplate = outfit[2]
        end

        -- Выводим информацию в консоль
        print("Одежда для " .. player.Name .. " обновлена!")
    end)
end
-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👥 Игроки")
-------------------------------------------------------------------------------------
Section:NewToggle("🌟 Подсветить Игроков", "🔦 Подсветка игроков через стены", function(state)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")
    local intChams = ReplicatedStorage:FindFirstChild("IntChams") or Instance.new("IntValue")
    intChams.Name = "IntChams"
    intChams.Parent = ReplicatedStorage

    if state then
        local function addHighlight(player)
            if player.Character and not player.Character:FindFirstChild("PlayerHighlight") then
                local highlight = Instance.new("Highlight")
                highlight.Name = "PlayerHighlight"
                highlight.Parent = player.Character
                highlight.FillTransparency = 0.5
                highlight.OutlineTransparency = 0
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                
                player.Character:WaitForChild("Humanoid").Died:Connect(function()
                    highlight:Destroy()
                end)
            end
        end
        
        while ReplicatedStorage:FindFirstChild("IntChams") do
            for _, player in pairs(Players:GetPlayers()) do
                addHighlight(player)
            end
            wait(1)
        end
    else
        intChams:Destroy()
        
        for _, player in pairs(Players:GetPlayers()) do
            local highlight = player.Character and player.Character:FindFirstChild("PlayerHighlight")
            if highlight then
                highlight:Destroy()
            end
        end
    end
end)
-------------------------------------------------------------------------------------
local Tab = Window:NewTab("👁️ Esp")
-------------------------------------------------------------------------------------
local Section = Tab:NewSection("💸 Смешные Цены")

-- Функция для обработки переключателя
Section:NewToggle("✨ Подсветить Магазин 🏪", "Активируйте, чтобы подсветить магазины с определённым значением!", function(state)
    -- Переменная для контроля обновления
    local toggleActive = state
    print(toggleActive and "✅ Подсветка включена!" or "❌ Подсветка выключена!")

    -- Функция для обновления подсветки
    local function updateHighlights()
        -- Если выключено, сразу выходим
        if not toggleActive then return end

        -- Проверяем папку Stores в workspace
        local storesFolder = game.Workspace.World.Debris.Stores
        if storesFolder and storesFolder:IsA("Folder") then
            for _, model in ipairs(storesFolder:GetChildren()) do
                if model:IsA("Model") then
                    -- Ищем IntValue внутри модели
                    local intValue = model:FindFirstChildWhichIsA("IntValue")
                    if intValue and intValue.Value == 189082896 then
                        -- Проверяем, есть ли уже Highlight
                        if not model:FindFirstChild("Highlight") then
                            -- Создаём Highlight и настраиваем его
                            local highlight = Instance.new("Highlight")
                            highlight.Name = "Highlight"
                            highlight.Adornee = model
                            highlight.FillColor = Color3.new(1, 1, 0) -- Жёлтый цвет
                            highlight.FillTransparency = 0.5 -- Полупрозрачность
                            highlight.OutlineTransparency = 0.3 -- Полупрозрачность контура
                            highlight.Parent = model
                        end
                    else
                        -- Удаляем Highlight, если значение больше не соответствует
                        local highlight = model:FindFirstChild("Highlight")
                        if highlight then
                            highlight:Destroy()
                        end
                    end
                end
            end
        else
            print("❗ Папка Stores не найдена или не является папкой.")
        end
    end

    -- Цикл для обновления подсветки каждую секунду
    spawn(function()
        while toggleActive do
            updateHighlights()
            wait(1) -- Обновление каждые 1 секунду
        end
    end)

    -- Удаление всех Highlight при выключении
    if not toggleActive then
        local storesFolder = game.Workspace.World.Debris.Stores
        if storesFolder and storesFolder:IsA("Folder") then
            for _, model in ipairs(storesFolder:GetChildren()) do
                if model:IsA("Model") then
                    local highlight = model:FindFirstChild("Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end
        print("🛑 Подсветка отключена!")
    end
end)


-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👚 Секонд Стиль")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("🏋️‍♂️ Спорт Мастер")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("🧥 The North Face")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👚 Rick Owens")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("🧥 Moncler")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👗 Chrome Hearts")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👜 Louis Vuitton")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👠 Balenciaga")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("🍏 Bape")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
local Section = Tab:NewSection("👕 Vetements")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-------------------------------------------------------------------------------------
