local RunService = game:GetService("RunService")

local Types = require(script.GameAnalytics.Types)

export type BusinessEventOptions = Types.BusinessEventOptions
export type ResourceEventOptions = Types.ResourceEventOptions
export type ProgressionEventOptions = Types.ProgressionEventOptions
export type DesignEventOptions = Types.DesignEventOptions
export type ErrorEventOptions = Types.ErrorEventOptions
export type CustomDimension = Types.CustomDimension
export type ProductInfo = Types.ProductInfo
export type ProcessReceiptInfo = Types.ProcessReceiptInfo
export type TeleportData = Types.TeleportData
export type RemoteConfigs = Types.RemoteConfigs
export type GameAnalyticsOptions = Types.GameAnalyticsOptions

--[[
	This script determines if we should load gameanalytics server or client.
]]

local isServer = RunService:IsServer()

if isServer then
	return require(script.GameAnalytics)
else
	return require(script.GameAnalyticsClient)
end
