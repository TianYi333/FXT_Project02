# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\Mini_ctrl_brd_zynq_v1.1\Vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\Mini_ctrl_brd_zynq_v1.1\Vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\Mini_ctrl_brd_zynq_v1.1\Vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/Mini_ctrl_brd_zynq_v1.1/Vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_hello_world}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name lwip211 -ver 1.5
bsp reload
bsp setlib -name lwip211 -ver 1.5
bsp setlib -name xilffs -ver 4.5
bsp config max_task_name_len "30"
bsp config tick_rate "1000"
bsp config total_heap_size "131072"
bsp config socket_mode_thread_prio "4"
bsp config dhcp_does_arp_check "true"
bsp config lwip_dhcp "true"
bsp config ip_frag_max_mtu "9000"
bsp config mem_size "524288"
bsp config memp_n_pbuf "2048"
bsp config memp_n_tcp_seg "1024"
bsp config memp_num_netconn "4096"
bsp config default_tcp_recvmbox_size "4096"
bsp config lwip_tcpip_core_locking_input "true"
bsp config tcpip_mbox_size "4096"
bsp config pbuf_pool_size "16384"
bsp config tcp_snd_buf "65535"
bsp config tcp_synmaxrtx "4"
bsp config tcp_wnd "65535"
bsp config n_rx_descriptors "512"
bsp config n_tx_descriptors "512"
bsp config tcp_ip_rx_checksum_offload "true"
bsp config tcp_ip_tx_checksum_offload "true"
bsp config api_mode "SOCKET_API"
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
bsp config memp_num_netbuf "4096"
bsp config memp_num_netconn "16"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform generate -domains 
platform generate -domains 
