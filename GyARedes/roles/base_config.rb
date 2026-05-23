name "base_config"
description "Configuracion base + Notificación de eventos"
# Añadimos la receta de notificar al final.
run_list "recipe[apt]", "recipe[openssh]", "recipe[notificacion]"