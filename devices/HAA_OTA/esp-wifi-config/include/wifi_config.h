#pragma once

void wifi_config_init(const char *ssid_prefix, const char *password, void (*on_wifi_ready)());
void wifi_config_remove_sys_param();
