local kou_model = {} --# assume kou_model: KOU_MODEL

--v function() --> KOU_MODEL
function kou_model.new()
    self = {}
    setmetatable(self, {
        __index = kou_model
    })
    --# assume self: KOU_MODEL
    self.tyrion = {}
    self.shadow_king = {}
    self.warden = {}
    self.everqueen = {}



    return self
end