function QuickApp:startRemoteLogic()
  self:debug("Lógica remota iniciada correctamente en QA ID: " .. tostring(self.id))
  
  -- Ejecutamos la sincronización inicial de Child Devices
  self:syncChildDevices()

  -- Rutina periódica
  fibaro.setTimeout(5000, function()
    self:debug("Lógica Remota: Ejecutando rutina periódica...")
  end)
end

function QuickApp:miFuncion()
  self:debug("Ejecutando miFuncion...")
end

function QuickApp:myCustomAction()
  self:debug("Lógica Remota: Ejecutando acción personalizada...")
end

function QuickApp:syncChildDevices()
  local childs = self.childDevices or {}
  for id, child in pairs(childs) do
    self:debug("Child device detectado: " .. tostring(id))
  end
end
