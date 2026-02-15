---@diagnostic disable: undefined-global, lowercase-global, missing-parameter

-- Scripted By GodFather

-- variables for sync DataBase and notification
local accSys = exports["Accounts-System"]
local miscSys = exports["misc"]
local notf = exports["notf"]


-- ____________________Command order Lines_________________________ --
-- /banpadmin
function banpadmin(thePlayer, command, admin, ...)
    if tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pAdmin")) <= 26 then -- filter Rank to use command
        return false
    end

    local find = miscSys:findPlayer(admin)
    local reason = string.sub(table.concat({...}, " ")) -- variable for get Reason and show in loop
    local name = getplayerName(thePlayer)
    local find_name = getPlayerName(find)
    local Administrator_rank = tonumber(getElementData(accSys:getPlayerAcc(thePlayer), "pAdmin"))
    local find_rank = tonumber(getElementData(accSys:getPlayerAcc(find), "pAdmin"))
    if thePlayer then
        if find then
            if reason then
                if (Administrator_rank) > (find_rank) then
                    if (find_rank) <= 17 then
                        setElementData(accSys:getPlayerAcc(find), "pBanTime", 999999)
                        setElementData(accSys:getPlayerAcc(find), "pCash", 0)
                        setElementData(accSys:getPlayerAcc(find), "pBank", 0)
                        local Kick_reason = "You were banned from the server for cheating and violating the rules! reason:("..reason..")" 
                        kickPlayer(find, tostring(Kick_reason)) -- kick player after ban from server and show message and reason
                        for i, m in ipairs(getElementsByType("player")) do -- loop for show ban message from all players
                            if getElementData(allPlayers, "loggedIn") and getElementData(allPlayers, "loggedIn") == true then
                                outputChatBox("#FF0000[Punishment]: Admin #FFFFFF"..find_name.." #FF0000 Banned By Administrator #FFFFFF"..name.." #FF0000 Forever from server reason: #FFFFFF"..reason)
                            end
                        end
                    else
                        exports["notf"]:addNotification(thePlayer, "You are not allowed to ban admin members!", 'error')
                    end
                else
                    exports["notf"]:addNotification(thePlayer, "You are not allowed to ban higher ranks!", 'error')
                end
            else
                exports["notf"]:addNotification(thePlayer, "Enter Reason For Ban Admin"..find_name, 'error')
            end
        else
            exports["notf"]:addNotification(thePlayer, "Player Not Found", 'error')
        end
    else
        exports["notf"]:addNotification(thePlayer, "Syntax: /banpadmin <find Player> <Reason>", 'info')
    end
end