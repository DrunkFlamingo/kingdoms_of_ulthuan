isLogAllowed = true --:boolean
--v function(text: string, ftext: string)
function KOULOG(text, ftext)

    if not isLogAllowed then
      return;
    end

  local logText = tostring(text)
  local logContext = tostring(ftext)
  local logTimeStamp = os.date("%d, %m %Y %X")
  local popLog = io.open("KOU_LOG.txt","a")
  --# assume logTimeStamp: string
  popLog :write("WEC:  "..logText .. "    : [" .. logContext .. "] : [".. logTimeStamp .. "]\n")
  popLog :flush()
  popLog :close()
end

--v function()
function KOULOGSTART()
  if not isLogAllowed then
    return;
  end

  local logTimeStamp = os.date("%d, %m %Y %X")
  --# assume logTimeStamp: string

  local popLog = io.open("KOU_LOG.txt","w+")
  popLog :write("NEW LOG ["..logTimeStamp.."] \n")
  popLog :flush()
  popLog :close()
end

KOULOGSTART()
local kview = require("kou/view")
kou = require("kou/model")