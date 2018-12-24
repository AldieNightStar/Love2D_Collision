--[[
DOCUMENTATION:
	[!] Let's assume that 'c' is the name of this module
		>>> local c = require "collision"
	c.rect(x, y[, w, h]) -- Creates [ Rectangle ]
	c.check(r1, r2)      -- Check both rectangle for collision

	Rectangle:check(r2)  -- Check collision for second Rectangle
--]]

local c = {}

-- Rectangle Class
local Rectangle = {w=20, h=20}
local RectangleM = {__index=Rectangle}

function Rectangle:check(r)
	return c.check(self, r)
end

-- Static Functions
function c.check(r1, r2)
	local x1 = r1.x or 0
	local y1 = r1.y or 0
	local w1 = r1.w or Rectangle.w
	local h1 = r1.h or Rectangle.h

	local x2 = r2.x or w1 * 3
	local y2 = r2.y or 0
	local w2 = r2.w or Rectangle.w
	local h2 = r2.h or Rectangle.h

	if x1+w1 < x2 then return false end
	if y1+h1 < y2 then return false end
	if x2+w2 < x1 then return false end
	if y2+h2 < y1 then return false end
	return true
end

function c.rect(x, y, w, h) -- Creates an rectangle
	local t = {x=x, y=y, w=w, h=h}
	return setmetatable(t, RectangleM)
end

return c