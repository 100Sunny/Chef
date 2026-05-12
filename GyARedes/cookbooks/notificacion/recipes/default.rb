
ip_nodo = node['ipaddress']
# Usamos el primer rol que aparezca en la lista
rol_nodo = node.run_list.roles.first || "Sin rol específico"

execute 'enviar_notificacion_evento' do
  command <<-EOH
    curl -s -X POST https://api.telegram.org/bot8739684648:AAHi-IPjZJhLdEvGqkZFHjemb8rwvRUVWmk/sendMessage \
    -d chat_id=6436774132 \
    -d text="Evento: Nodo Aprovisionado. IP: #{ip_nodo} | Rol: #{rol_nodo}"
  EOH
  action :run
end