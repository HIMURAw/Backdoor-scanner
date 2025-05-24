-- A: random_char
local a = "random_char"

-- B: Enchanced_Tabs
local b = "Enchanced_Tabs"

-- C: helpCode
local c = "helpCode"

-- D: assert(load(
local d = assert(load("return 1 + 1"))

-- E: Hex encoded function (bu base64 değil ama hex: PerformHttpRequest)
local e = "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74"

-- F: helperServer
local f = "helperServer"

-- G: loadstring
local g = loadstring("print('evil code')")

-- I: require(
local i = require("some_module")

-- L: Base64 gibi bir string
local l = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

-- M: Discord Token benzeri
local m = "NjUxMzc4ODczYzA"

-- O: PerformHttpRequest
PerformHttpRequest("http://malicious.url", function(err, text, headers) end)

-- P: http.Get
http.Get("http://suspicious.url")
