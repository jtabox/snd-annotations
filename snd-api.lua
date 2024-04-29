---@meta

--- Definition file for the SND-ex addon's Lua functions.
--- Taken from the SND-ex addon's source code in C#.

----------------------------------------
--- Action Commands --------------------
----------------------------------------

---Leaves the current duty.
---@return nil
function LeaveDuty() end

---Teleports to the player's Grand Company city.
---@param useTickets? boolean Use return tickets if available (default: False).
---@return nil
function TeleportToGCTown(useTickets) end

---Get an action's elapsed recast time.
---@param actionId integer The action ID.
---@return number
function GetRecastTimeElapsed(actionId) end

---Get an action's elapsed recast time.
---@param actionId integer The action ID.
---@return number
function GetRealRecastTimeElapsed(actionId) end

---Get an action's remaining recast time.
---@param actionId integer The action ID.
---@return number
function GetRecastTime(actionId) end

---Get an action's real remaining recast time.
---@param actionId integer The action ID.
---@return number
function GetRealRecastTime(actionId) end

---Get an action's remaining cooldown time.
---@param actionId integer The action ID.
---@return number
function GetSpellCooldown(actionId) end

---Get an action's real remaining cooldown time.
---@param actionId integer The action ID.
---@return number
function GetRealSpellCooldown(actionId) end

---Get an action's remaining cooldown time as an integer.
---@param actionId integer The action ID.
---@return integer
function GetSpellCooldownInt(actionId) end

---Get an action's remaining stack count.
---@param maxStacks integer The maximum number of stacks.
---@param actionId integer The action ID.
---@return integer
function GetActionStackCount(maxStacks, actionId) end

---Executes an action.
---@param actionID integer
---@return nil
function ExecuteAction(actionID) end

---Executes a general action.
---@param actionID integer
---@return nil
function ExecuteGeneralAction(actionID) end



----------------------------------------
--- Addon Commands ---------------------
----------------------------------------

---Opens a duty from the Duty Finder roulette.
---@param contentRouletteID integer The roulette ID.
---@return nil
function OpenRouletteDuty(contentRouletteID) end

---Opens a regular duty.
---@param cfcID integer The duty ID.
---@return nil
function OpenRegularDuty(cfcID) end

---Selects a duty.
---@param dutyCode integer The duty code.
---@return nil
function SelectDuty(dutyCode) end

---Duty Finder settings: Accept Japanese as a possible group language.
---@param state boolean Yes/No.
---@return nil
function SetDFLanguageJ(state) end

---Duty Finder settings: Accept English as a possible group language.
---@param state boolean Yes/No.
---@return nil
function SetDFLanguageE(state) end

---Duty Finder settings: Accept German as a possible group language.
---@param state boolean Yes/No.
---@return nil
function SetDFLanguageD(state) end

---Duty Finder settings: Accept French as a possible group language.
---@param state boolean Yes/No.
---@return nil
function SetDFLanguageF(state) end

---Duty Finder setting: Join in-progress groups.
---@param state boolean Enable/Disable.
---@return nil
function SetDFJoinInProgress(state) end

---Duty Finder setting: Create unrestricted party.
---@param state boolean Enable/Disable.
---@return nil
function SetDFUnrestricted(state) end

---Duty Finder setting: Level sync.
---@param state boolean Enable/Disable.
---@return nil
function SetDFLevelSync(state) end

---Duty Finder settings: Create minimum item level party.
---@param state boolean Enable/Disable.
---@return nil
function SetDFMinILvl(state) end

---Duty Finder settings: The echo.
---@param state boolean Enable/Disable.
---@return nil
function SetDFSilenceEcho(state) end

---Duty Finder settings: Explorer mode.
---@param state boolean Enable/Disable.
---@return nil
function SetDFExplorerMode(state) end

---Duty Finder settings: Limited job leveling group.
---@param state boolean Enable/Disable.
---@return nil
function SetDFLimitedLeveling(state) end

---Get the Aether Gauge bar count in Diadem.
---@return integer
function GetDiademAetherGaugeBarCount() end

---Get the passage progress in Deep Dungeons.
---@return integer
function GetDDPassageProgress() end

---Check if an addon is visible.
---@param addonName string The addon name.
---@return boolean
function IsAddonVisible(addonName) end

---Check if one or more addon nodes are visible.
---@param addonName string The addon name.
---@param ids integer[] The node IDs.
---@return boolean
function IsNodeVisible(addonName, ids) end

---Check if an addon is ready to use (it doesn't need to be visible too).
---@param addonName string The addon name.
---@return boolean
function IsAddonReady(addonName) end

---Get a toast addon's node's text.
---@param index integer The node's zero-based index.
---@param nodeNumbers integer[] The node's ID chain.
---@return string
function GetToastNodeText(index, nodeNumbers) end

---Get an addon's node's text.
---@param addonName string The addon name.
---@param nodeNumbers integer[] The node's ID chain.
---@return string
function GetNodeText(addonName, nodeNumbers) end

---Get the text of a 0-indexed SelectString entry, or an empty string.
---@param index integer The entry index.
---@return string
function GetSelectStringText(index) end

---Get the text of a 0-indexed SelectIconString entry, or an empty string.
---@param index integer The entry index.
---@return string
function GetSelectIconStringText(index) end

---Get the number of nodes in an addon.
---@param addonName string The addon name.
---@return integer
function GetNodeListCount(addonName) end



----------------------------------------
--- CharacterStateCommands -------------
----------------------------------------

---Check if the player character is available.
---@return boolean
function IsPlayerAvailable() end

---Check if the player character has a specific status effect by name.
---@param statusName string The status effect name.
---@return boolean
function HasStatus(statusName) end

---Check if the player character has specific status effects by IDs.
---@param statusIDs integer[] The status effect IDs.
---@return boolean
function HasStatusId(statusIDs) end

---Get the stack count of a status effect.
---@param statusID integer The status effect IDs.
---@return integer
function GetStatusStackCount(statusID) end

---Get the remaining time of a status effect.
---@param statusID integer The status effect IDs.
---@return number
function GetStatusTimeRemaining(statusID) end

---Get the source ID of a status effect.
---@param statusID integer The status effect IDs.
---@return integer
function GetStatusSourceID(statusID) end

---Check if the player character has a specific condition or not.
---@param flagID integer The condition flag ID.
---@param hasCondition? boolean Check if the player character has or has not the condition. Default is true.
---@return boolean
function GetCharacterCondition(flagID, hasCondition) end

---Get the player character's name.
---@param includeWorld boolean Include the world name (default: False).
---@return string
function GetCharacterName(includeWorld) end

---Check if the player character is in a specific zone.
---@param zoneID integer The zone ID.
---@return boolean
function IsInZone(zoneID) end

---Check if the player character is null.
---@return boolean
function IsLocalPlayerNull() end

---Check if the player character is dead.
---@return boolean
function IsPlayerDead() end

---Check if the player character is casting.
---@return boolean
function IsPlayerCasting() end

---Check if the player character is moving.
---@return boolean
function IsMoving() end

---Check if the player character has occupied status.
---@return boolean
function IsPlayerOccupied() end

---Get the player character's gil amount.
---@return integer
function GetGil() end

---Get the player character's class/job ID.
---@return integer
function GetClassJobId() end

---Get the player character's current HP.
---@return integer
function GetHP() end

---Get the player character's maximum HP.
---@return integer
function GetMaxHP() end

---Get the player character's current MP.
---@return integer
function GetMP() end

---Get the player character's maximum MP.
---@return integer
function GetMaxMP() end

---Get a character's raw X position.
---@param character? string The character name or ID (default: "" for the player character).
---@return number
function GetPlayerRawXPos(character) end

---Get a character's raw Y position.
---@param character? string The character name or ID (default: "" for the player character).
---@return number
function GetPlayerRawYPos(character) end

---Get a character's raw Z position.
---@param character? string The character name or ID (default: "" for the player character).
---@return number
function GetPlayerRawZPos(character) end

---Get the player character's level.
---@param expArrayIndex? integer The experience array index (default: -1).
---@return integer
function GetLevel(expArrayIndex) end

---Get the player character's Grand Company.
---@return integer
function GetPlayerGC() end

---Get the player character's Free Company rank.
---@return integer
function GetFCRank() end

---Get the player character's Free Company Grand Company.
---@return string
function GetFCGrandCompany() end

---Get the player character's Free Company online members count.
---@return integer
function GetFCOnlineMembers() end

---Get the player character's Free Company total members count.
---@return integer
function GetFCTotalMembers() end

---Make a request for an achievement's progress.
---@param id integer The achievement ID.
---@return nil
function RequestAchievementProgress(id) end

---Get the requested achievement's progress.
---@return integer
function GetRequestedAchievementProgress() end

---Get the player character's currently used bait.
---@return integer
function GetCurrentBait() end

---Get the player character's current Limit Break value.
---@return integer
function GetLimitBreakCurrentValue() end

---Get the player character's Limit Break bar value.
---@return integer
function GetLimitBreakBarValue() end

---Get the player character's Limit Break bar count.
---@return integer
function GetLimitBreakBarCount() end

---Get the player character's remaining penalty time in minutes.
---@return integer
function GetPenaltyRemainingInMinutes() end

---Get the player character's Maelstrom Grand Company rank.
---@return integer
function GetMaelstromGCRank() end

---Get the player character's Immortal Flames Grand Company rank.
---@return integer
function GetFlamesGCRank() end

---Get the player character's Twin Adders Grand Company rank.
---@return integer
function GetAddersGCRank() end

---Set the player character's Maelstrom Grand Company rank.
---@param rank integer The rank.
---@return nil
function SetMaelstromGCRank(rank) end

---Set the player character's Immortal Flames Grand Company rank.
---@param rank integer The rank.
---@return nil
function SetFlamesGCRank(rank) end

---Set the player character's Twin Adders Grand Company rank.
---@param rank integer The rank.
---@return nil
function SetAddersGCRank(rank) end



----------------------------------------
--- Crafting Commands ------------------
----------------------------------------

---Check if the player character is crafting.
---@return boolean
function IsCrafting() end

---Check if the player character is not crafting.
---@return boolean
function IsNotCrafting() end

---Check if the player character is crafting a collectable item.
---@return boolean
function IsCollectable() end

---Get the current synthesis' condition
---@param lower? boolean Returns the condition in lowercase (default: True).
---@return string
function GetCondition(lower) end

---Check if the current synthesis has a specific condition
---@param condition string The condition to check for.
---@param lower? boolean The condition to check for is in lowercase (default: True).
---@return boolean
function HasCondition(condition, lower) end

---Get the current progress value.
---@return integer
function GetProgress() end

---Get the max progress value.
---@return integer
function GetMaxProgress() end

---Get a value indicating whether max progress has been achieved.
---@return boolean
function HasMaxProgress() end

---Get the current quality value.
---@return integer
function GetQuality() end

---Get the max quality value.
---@return integer
function GetMaxQuality() end

---Get a value indicating whether max quality has been achieved.
---@return boolean
function HasMaxQuality() end

---Get the current durability value.
---@return integer
function GetDurability() end

---Get the max durability value.
---@return integer
function GetMaxDurability() end

---Get the current CP value.
---@return integer
function GetCp() end

---Get the max CP value.
---@return integer
function GetMaxCp() end

---Get the current GP value.
---@return integer
function GetGp() end

---Get the max GP value.
---@return integer
function GetMaxGp() end

---Get the current step number.
---@return integer
function GetStep() end

---Get the current percent HQ (and collectable) value.
---@return integer
function GetPercentHQ() end

---Checks if any of the player's worn equipment is broken (or below a specific value).
---@param below? number The condition value to check against (default: 0).
---@return boolean
function NeedsRepair(below) end

---Check if any of the player's worn equipment can have materia extracted (or has spiritbond higher than a specific value).
---@param within? number The spiritbond value to check against (greater than or equal, default: 100 meaning ready to extract).
---@return boolean
function CanExtractMateria(within) end

---Check if the player character has the required crafting stats.
---@param craftsmanship integer The required craftsmanship.
---@param control integer The required control.
---@param cp integer The required control points.
---@return boolean
function HasStats(craftsmanship, control, cp) end

---Get the amount of progress increase an action would provide.
---@param actionID integer The action ID.
---@return number
function GetProgressIncrease(actionID) end

---Get the amount of quality increase an action would provide.
---@param actionID integer The action ID.
---@return number
function GetQualityIncrease(actionID) end

---Get the amount of progress and quality increase an action would provide.
---@param actionID integer The action ID.
---@return number, number
function GetActionResult(actionID) end



----------------------------------------
--- Entity State Commands --------------
----------------------------------------

---Get the player's distance to a specific 3D-point.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@return number
function GetDistanceToPoint(x, y, z) end

---Get the target's name.
---@return string
function GetTargetName() end

---Get the target's raw X position.
---@return number
function GetTargetRawXPos() end

---Get the target's raw Y position.
---@return number
function GetTargetRawYPos() end

---Get the target's raw Z position.
---@return number
function GetTargetRawZPos() end

---Check if the target is casting.
---@return boolean
function IsTargetCasting() end

---Get the target's currently casting action ID.
---@return integer
function GetTargetActionID() end

---Get the target's last used action ID.
---@return integer
function GetTargetUsedActionID() end

---Get the target's current HP.
---@return number
function GetTargetHP() end

---Get the target's maximum HP.
---@return number
function GetTargetMaxHP() end

---Get the target's HP percentage.
---@return number
function GetTargetHPP() end

---Get the target's facing rotation.
---@return number
function GetTargetRotation() end

---Get the target's object kind.
---@return number
function GetTargetObjectKind() end

---Get the target's sub kind.
---@return number
function GetTargetSubKind() end

---Target the closest enemy.
---@param distance? number The maximum distance to the target (default: 0 - no limit).
---@return nil
function TargetClosestEnemy(distance) end

---Clear the current target.
---@return nil
function ClearTarget() end

---Get the player's distance to the target.
---@return number
function GetDistanceToTarget() end

---Check if the target has a specific status effect by ID.
---@param statusID integer The status effect ID.
---@return boolean
function TargetHasStatus(statusID) end

---Get the target's FATE ID (for FATE targets).
---@return integer
function GetTargetFateID() end

---Check if the target is mounted.
---@return boolean
function IsTargetMounted() end

---Check if the target is in combat.
---@return boolean
function IsTargetInCombat() end

---Get the target's hunt rank  (for hunt targets).
---@return number
function GetTargetHuntRank() end

---Get the target's hitbox radius.
---@return number
function GetTargetHitboxRadius() end

---Get the focus target's name.
---@return string
function GetFocusTargetName() end

---Get the focus target's raw X position.
---@return number
function GetFocusTargetRawXPos() end

---Get the focus target's raw Y position.
---@return number
function GetFocusTargetRawYPos() end

---Get the focus target's raw Z position.
---@return number
function GetFocusTargetRawZPos() end

---Check if the focus target is casting.
---@return boolean
function IsFocusTargetCasting() end

---Get the focus target's currently casting action ID.
---@return integer
function GetFocusTargetActionID() end

---Get the focus target's last used action ID.
---@return integer
function GetFocusTargetUsedActionID() end

---Get the focus target's current HP.
---@return number
function GetFocusTargetHP() end

---Get the focus target's maximum HP.
---@return number
function GetFocusTargetMaxHP() end

---Get the focus target's HP percentage.
---@return number
function GetFocusTargetHPP() end

---Get the focus target's facing rotation.
---@return number
function GetFocusTargetRotation() end

---Clear the focus target.
---@return nil
function ClearFocusTarget() end

---Get the player's distance to the focus target.
---@return number
function GetDistanceToFocusTarget() end

---Check if the focus target has a specific status effect by ID.
---@param statusID integer The status effect ID.
---@return boolean
function FocusTargetHasStatus(statusID) end

---Get the focus target's FATE ID (for FATE targets).
---@return integer
function GetFocusTargetFateID() end

---Get any object's raw X position.
---@param name string The object's name.
---@return number
function GetObjectRawXPos(name) end

---Get any object's raw Y position.
---@param name string The object's name.
---@return number
function GetObjectRawYPos(name) end

---Get any object's raw Z position.
---@param name string The object's name.
---@return number
function GetObjectRawZPos(name) end

---Get the player's distance to an object.
---@param name string The object's name.
---@return number
function GetDistanceToObject(name) end

---Check if an object is casting.
---@param name string The object's name.
---@return boolean
function IsObjectCasting(name) end

---Get an object's currently casting action ID.
---@param name string The object's name.
---@return integer
function GetObjectActionID(name) end

---Get an object's last used action ID.
---@param name string The object's name.
---@return integer
function GetObjectUsedActionID(name) end

---Get an object's current HP.
---@param name string The object's name.
---@return number
function GetObjectHP(name) end

---Get an object's maximum HP.
---@param name string The object's name.
---@return number
function GetObjectMaxHP(name) end

---Get an object's HP percentage.
---@param name string The object's name.
---@return number
function GetObjectHPP(name) end

---Get an object's facing rotation.
---@param name string The object's name.
---@return number
function GetObjectRotation(name) end

---Check if an object has a specific status effect by ID.
---@param name string The object's name.
---@param statusID integer The status effect ID.
---@return boolean
function ObjectHasStatus(name, statusID) end

---Get an object's FATE ID (for FATE targets).
---@param name string The object's name.
---@return integer
function GetObjectFateID(name) end

---Check if an object exists.
---@param name string The object's name.
---@return boolean
function DoesObjectExist(name) end

---Check if an object is mounted.
---@param name string The object's name.
---@return boolean
function IsObjectMounted(name) end

---Get an object's data ID.
---@param name string The object's name.
---@return integer
function GetObjectDataID(name) end

---Check if an object is in combat.
---@param name string The object's name.
---@return boolean
function IsObjectInCombat(name) end

---Get an object's hunt rank  (for hunt targets).
---@param name string The object's name.
---@return number
function GetObjectHuntRank(name) end

---Get an object's hitbox radius.
---@param name string The object's name.
---@return number
function GetObjectHitboxRadius(name) end

---Get a party member's name using their index.
---@param index integer The party member's index.
---@return string
function GetPartyMemberName(index) end

---Get a party member's raw X position using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberRawXPos(index) end

---Get a party member's raw Y position using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberRawYPos(index) end

---Get a party member's raw Z position using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberRawZPos(index) end

---Get the player's distance to a party member using their index.
---@param index integer The party member's index.
---@return number
function GetDistanceToPartyMember(index) end

---Check if a party member is casting using their index.
---@param index integer The party member's index.
---@return boolean
function IsPartyMemberCasting(index) end

---Get a party member's currently casting action ID using their index.
---@param index integer The party member's index.
---@return integer
function GetPartyMemberActionID(index) end

---Get a party member's last used action ID using their index.
---@param index integer The party member's index.
---@return integer
function GetPartyMemberUsedActionID(index) end

---Get a party member's current HP using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberHP(index) end

---Get a party member's maximum HP using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberMaxHP(index) end

---Get a party member's HP percentage using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberHPP(index) end

---Get a party member's facing rotation using their index.
---@param index integer The party member's index.
---@return number
function GetPartyMemberRotation(index) end

---Check if a party member has a specific status effect by ID using their index.
---@param index integer The party member's index.
---@param statusID integer The status effect ID.
---@return boolean
function PartyMemberHasStatus(index, statusID) end

---Check if a party member is mounted using their index.
---@param index integer The party member's index.
---@return boolean
function IsPartyMemberMounted(index) end

---Check if a party member is in combat using their index.
---@param index integer The party member's index.
---@return boolean
function IsPartyMemberInCombat(index) end

---Get the remaining time for the player's Chocobo to despawn.
---@return number
function GetBuddyTimeRemaining() end



----------------------------------------
--- Internal Commands ------------------
----------------------------------------

---Get a macro's text.
---@param name string The macro's name.
---@return string
function InternalGetMacroText(name) end

---Set an internal configuration property for SND.
---@param key string The property key.
---@param value string The property value.
---@return nil
function SetSNDProperty(key, value) end

---Get an internal configuration property for SND.
---@param key string The property key.
---@return any
function GetSNDProperty(key) end



----------------------------------------
--- Inventory Commands -----------------
----------------------------------------

---Get the amount of an item in the player's inventory.
---@param itemID integer The item ID.
---@param includeHQ? boolean Include high-quality items (default: True).
---@return integer
function GetItemCount(itemID, includeHQ) end

---Get the amount of free slots in the player's inventory.
---@return integer
function GetInventoryFreeSlotCount() end



----------------------------------------
--- Ipc Commands -----------------------
----------------------------------------

---Pandora's Box: Check if a feature is enabled.
---@param feature string The feature name.
---@return boolean
function PandoraGetFeatureEnabled(feature) end

---Pandora's Box: Check if a feature's configuration is enabled.
---@param feature string The feature name.
---@param config string The configuration name.
---@return boolean
function PandoraGetFeatureConfigEnabled(feature, config) end

---Pandora's Box: Enable/disable a feature.
---@param feature string The feature name.
---@param state boolean The state to set.
---@return nil
function PandoraSetFeatureState(feature, state) end

---Pandora's Box: Enable/disable a feature's configuration.
---@param feature string The feature name.
---@param config string The configuration name.
---@param state boolean The state to set.
---@return nil
function PandoraSetFeatureConfigState(feature, config, state) end

---Pandora's Box: Pause a feature for a specific amount of time.
---@param feature string The feature name.
---@param ms integer The pause duration in milliseconds.
---@return nil
function PandoraPauseFeature(feature, ms) end

---AutoHook: Enable/Disable the plugin.
---@param state boolean The state to set.
---@return nil
function SetAutoHookState(state) end

---AutoHook: Enable/Disable auto-gig.
---@param state boolean The state to set.
---@return nil
function SetAutoHookAutoGigState(state) end

---AutoHook: Set the auto-gig fish size.
---@param size integer The size to set.
---@return nil
function SetAutoHookAutoGigSize(size) end

---AutoHook: Set the auto-gig fish speed.
---@param speed integer The speed to set.
---@return nil
function SetAutoHookAutoGigSpeed(speed) end

---AutoHook: Set a preset.
---@param preset string The preset to set.
---@return nil
function SetAutoHookPreset(preset) end

---AutoHook: Use the anonymous (generic) preset.
---@param preset string The preset to set.
---@return nil
function UseAutoHookAnonymousPreset(preset) end

---AutoHook: Delete the selected preset.
---@return nil
function DeletedSelectedAutoHookPreset() end

---AutoHook: Delete all anonymous presets.
---@return nil
function DeleteAllAutoHookAnonymousPresets() end

---Deliveroo: Check if a turn-in is running.
---@return boolean
function DeliverooIsTurnInRunning() end

---Visland: Check if a route is running.
---@return boolean
function IsVislandRouteRunning() end

---NavMesh: Check if the navmesh is ready.
---@return boolean
function NavIsReady() end

---NavMesh: Get the navmesh build progress.
---@return number
function NavBuildProgress() end

---NavMesh: Reload the navmesh from cache.
---@return nil
function NavReload() end

---NavMesh: Rebuild the navmesh from scratch.
---@return nil
function NavRebuild() end

---NavMesh: Pathfind to a specific 3D-point. Supports flying.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param fly? boolean Use flying pathfinding (default: False).
---@return nil
function NavPathfind(x, y, z, fly) end

---NavMesh: Check if the navmesh is set to auto-load.
---@return boolean
function NavIsAutoLoad() end

---NavMesh: Set the navmesh to auto-load.
---@param state boolean The state to set.
---@return nil
function NavSetAutoLoad(state) end

---NavMesh: Get the nearest mesh's X-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param halfExtentXZ number The half extent XZ.
---@param halfExtentY number The half extent Y.
---@return number
function QueryMeshNearestPointX(x, y, z, halfExtentXZ, halfExtentY) end

---NavMesh: Get the nearest mesh's Y-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param halfExtentXZ number The half extent XZ.
---@param halfExtentY number The half extent Y.
---@return number
function QueryMeshNearestPointY(x, y, z, halfExtentXZ, halfExtentY) end

---NavMesh: Get the nearest mesh's Z-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param halfExtentXZ number The half extent XZ.
---@param halfExtentY number The half extent Y.
---@return number
function QueryMeshNearestPointZ(x, y, z, halfExtentXZ, halfExtentY) end

---NavMesh: Get a mesh's floor point's X-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param allowUnlandable boolean Allow unlandable points.
---@param halfExtentXZ number The half extent XZ.
---@return number
function QueryMeshPointOnFloorX(x, y, z, allowUnlandable, halfExtentXZ) end

---NavMesh: Get a mesh's floor point's Y-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param allowUnlandable boolean Allow unlandable points.
---@param halfExtentXZ number The half extent XZ.
---@return number
function QueryMeshPointOnFloorY(x, y, z, allowUnlandable, halfExtentXZ) end

---NavMesh: Get a mesh's floor point's Z-coordinate.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param allowUnlandable boolean Allow unlandable points.
---@param halfExtentXZ number The half extent XZ.
---@return number
function QueryMeshPointOnFloorZ(x, y, z, allowUnlandable, halfExtentXZ) end

---NavMesh: Move to a specific 3D-point. Supports flying.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param fly? boolean Use flying pathfinding (default: False).
---@return nil
function PathMoveTo(x, y, z, fly) end

---NavMesh: Stop the current path.
---@return nil
function PathStop() end

---NavMesh: Check if a path is running.
---@return boolean
function PathIsRunning() end

---NavMesh: Get the number of waypoints in the current path.
---@return integer
function PathNumWaypoints() end

---NavMesh: Check if movement is allowed in the current path.
---@return boolean
function PathGetMovementAllowed() end

---NavMesh: Set if movement is allowed in the current path.
---@param state boolean The state to set.
---@return nil
function PathSetMovementAllowed(state) end

---NavMesh: Check if the camera should align with the current path.
---@return boolean
function PathGetAlignCamera() end

---NavMesh: Set if the camera should align with the current path.
---@param state boolean The state to set.
---@return nil
function PathSetAlignCamera(state) end

---NavMesh: Get the path tolerance.
---@return number
function PathGetTolerance() end

---NavMesh: Set the path tolerance.
---@param t number The tolerance to set.
---@return nil
function PathSetTolerance(t) end

---NavMesh: Pathfind to a specific 3D-point and move to it. Supports flying.
---@param x number The X-coordinate.
---@param y number The Y-coordinate.
---@param z number The Z-coordinate.
---@param fly? boolean Use flying pathfinding (default: False).
---@return nil
function PathfindAndMoveTo(x, y, z, fly) end

---NavMesh: Check if a pathfind is in progress.
---@return boolean
function PathfindInProgress() end

---AutoRetainer: Suppress the addon.
---@param state boolean The state to set.
---@return nil
function ARSetSuppressed(state) end

---AutoRetainer: Get a list of registered characters.
---@return string[]
function ARGetRegisteredCharacters() end

---AutoRetainer: Get a list of registered enabled characters.
---@return string[]
function ARGetRegisteredEnabledCharacters() end

---AutoRetainer: Get a list of registered retainers.
---@return string[]
function ARGetRegisteredRetainers() end

---AutoRetainer: Get a list of registered enabled retainers.
---@return string[]
function ARGetRegisteredEnabledRetainers() end

---AutoRetainer: Check if anything is waiting to be processed.
---@param allCharacters? boolean Check all characters (default: False).
---@return boolean
function ARAnyWaitingToBeProcessed(allCharacters) end

---AutoRetainer: Check if any retainers are waiting to be processed.
---@param allCharacters? boolean Check all characters (default: False).
---@return boolean
function ARRetainersWaitingToBeProcessed(allCharacters) end

---AutoRetainer: Check if any submarines are waiting to be processed.
---@param allCharacters? boolean Check all characters (default: False).
---@return boolean
function ARSubsWaitingToBeProcessed(allCharacters) end

---YesAlready: Pause the addon.
---@return nil
function PauseYesAlready() end

---YesAlready: Restore the addon.
---@return nil
function RestoreYesAlready() end

---TextAdvance: Pause the addon.
---@return nil
function PauseTextAdvance() end

---TextAdvance: Restore the addon.
---@return nil
function RestoreTextAdvance() end



----------------------------------------
--- Quest Commands ---------------------
----------------------------------------

---Get the quest name by ID.
---@param id integer The quest ID.
---@return string
function GetQuestNameByID(id) end

---Check if a quest is accepted.
---@param id integer The quest ID.
---@return boolean
function IsQuestAccepted(id) end

---Check if a quest is complete.
---@param id integer The quest ID.
---@return boolean
function IsQuestComplete(id) end

---Get the quest sequence.
---@param id integer The quest ID.
---@return integer
function GetQuestSequence(id) end

---Get the quest ID by name.
---@param name string The quest name.
---@return integer
function GetQuestIDByName(name) end



----------------------------------------
--- System Commands --------------------
----------------------------------------

---Get the clipboard text.
---@return string
function GetClipboard() end

---Set the clipboard text.
---@param text string The text to set.
---@return nil
function SetClipboard(text) end

---Crash the game.
---@return nil
function CrashTheGame() end

---Write a text as info in the log.
---@param text string The text to write.
---@return nil
function LogInfo(text) end

---Write a text as debug in the log.
---@param text string The text to write.
---@return nil
function LogDebug(text) end

---Write a text as verbose in the log.
---@param text string The text to write.
---@return nil
function LogVerbose(text) end



----------------------------------------
--- World State Commands ---------------
----------------------------------------

---Get the current zone ID.
---@return integer
function GetZoneID() end

---Get the map flag's X-coordinate.
---@return number
function GetFlagXCoord() end

---Get the map flag's Y-coordinate.
---@return number
function GetFlagYCoord() end

---Get the map flag's zone ID.
---@return number
function GetFlagZone() end

---Get the active weather ID.
---@return number
function GetActiveWeatherID() end

---Get the current Eorzea timestamp.
---@return number
function GetCurrentEorzeaTimestamp() end

---Get the current Eorzea second.
---@return number
function GetCurrentEorzeaSecond() end

---Get the current Eorzea minute.
---@return number
function GetCurrentEorzeaMinute() end

---Get the current Eorzea hour.
---@return number
function GetCurrentEorzeaHour() end

---Get the active FATEs in the zone.
---@return integer[]
function GetActiveFates() end

---Get the nearest FATE in the zone.
---@return integer
function GetNearestFate() end

---Check if the player character is in a FATE.
---@return boolean
function IsInFate() end

---Get the FATE duration.
---@param fateID integer The FATE ID.
---@return number
function GetFateDuration(fateID) end

---Get the FATE hand-in count.
---@param fateID integer The FATE ID.
---@return number
function GetFateHandInCount(fateID) end

---Get the FATE location's X-coordinate.
---@param fateID integer The FATE ID.
---@return number
function GetFateLocationX(fateID) end

---Get the FATE location's Y-coordinate.
---@param fateID integer The FATE ID.
---@return number
function GetFateLocationY(fateID) end

---Get the FATE location's Z-coordinate.
---@param fateID integer The FATE ID.
---@return number
function GetFateLocationZ(fateID) end

---Get the FATE progress.
---@param fateID integer The FATE ID.
---@return number
function GetFateProgress(fateID) end

---Get the content time left.
---@return number
function GetContentTimeLeft() end

---Get the current ocean fishing route.
---@return number
function GetCurrentOceanFishingRoute() end

---Get the current ocean fishing time of day.
---@return number
function GetCurrentOceanFishingTimeOfDay() end

---Get the current ocean fishing status.
---@return number
function GetCurrentOceanFishingStatus() end

---Get the current ocean fishing zone.
---@return number
function GetCurrentOceanFishingZone() end

---Get the current ocean fishing zone time left.
---@return number
function GetCurrentOceanFishingZoneTimeLeft() end

---Get the current ocean fishing time offset.
---@return number
function GetCurrentOceanFishingTimeOffset() end

---Get the current ocean fishing weather ID.
---@return number
function GetCurrentOceanFishingWeatherID() end

---Check if ocean fishing spectral is active.
---@return boolean
function OceanFishingIsSpectralActive() end

---Get the current ocean fishing mission 1 type.
---@return number
function GetCurrentOceanFishingMission1Type() end

---Get the current ocean fishing mission 2 type.
---@return number
function GetCurrentOceanFishingMission2Type() end

---Get the current ocean fishing mission 3 type.
---@return number
function GetCurrentOceanFishingMission3Type() end

---Get the current ocean fishing mission 1 goal.
---@return number
function GetCurrentOceanFishingMission1Goal() end

---Get the current ocean fishing mission 2 goal.
---@return number
function GetCurrentOceanFishingMission2Goal() end

---Get the current ocean fishing mission 3 goal.
---@return number
function GetCurrentOceanFishingMission3Goal() end

---Get the current ocean fishing mission 1 name.
---@return string
function GetCurrentOceanFishingMission1Name() end

---Get the current ocean fishing mission 2 name.
---@return string
function GetCurrentOceanFishingMission2Name() end

---Get the current ocean fishing mission 3 name.
---@return string
function GetCurrentOceanFishingMission3Name() end

---Get the current ocean fishing mission 1 progress.
---@return number
function GetCurrentOceanFishingMission1Progress() end

---Get the current ocean fishing mission 2 progress.
---@return number
function GetCurrentOceanFishingMission2Progress() end

---Get the current ocean fishing mission 3 progress.
---@return number
function GetCurrentOceanFishingMission3Progress() end

---Get the current ocean fishing points.
---@return number
function GetCurrentOceanFishingPoints() end

---Get the current ocean fishing score.
---@return number
function GetCurrentOceanFishingScore() end

---Get the current ocean fishing total score.
---@return number
function GetCurrentOceanFishingTotalScore() end

---Get the current floor's Accursed Hoard X-coordinate.
---@return number
function GetAccursedHoardRawX() end

---Get the current floor's Accursed Hoard Y-coordinate.
---@return number
function GetAccursedHoardRawY() end

---Get the current floor's Accursed Hoard Z-coordinate.
---@return number
function GetAccursedHoardRawZ() end

---Get the current floor's bronze chest locations.
---@return number[]
function GetBronzeChestLocations() end

---Get the current floor's silver chest locations.
---@return number[]
function GetSilverChestLocations() end

---Get the current floor's gold chest locations.
---@return number[]
function GetGoldChestLocations() end

---Get the current floor's mimic chest locations.
---@return number[]
function GetMimicChestLocations() end

---Get the current floor's passage location.
---@return number[]
function GetPassageLocation() end

---Get the current floor's trap locations.
---@return number[]
function GetTrapLocations() end

---Get the nearby object names.
---@param distance? number The maximum distance from the player (default: 0 - no limit).
---@param objectKind? number The object kind to look for (default: 0).
---@return string[]
function GetNearbyObjectNames(distance, objectKind) end



----------------------------------------
--- Yield Command ----------------------
----------------------------------------

---Main command, yields commands back to the macro engine:
---yield(""/echo done!"")
---@param command string The command to yield.
---@return nil
function yield(command) end
