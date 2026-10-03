local self = ...

self:debug("Lógica Remota: Inicializando AJAX v0.2.0...")

function self:myCustomAction()
  self:debug("Lógica Remota: Ejecutando acción personalizada...")
end

function self:syncChildDevices()
  local childs = self.childDevices or {}
  for id, child in pairs(childs) do
    self:debug("Child device detectado: " .. tostring(id))
  end
end

hub.setTimeout(5000, function()
  self:debug("Lógica Remota: Ejecutando rutina periódica...")
end)
