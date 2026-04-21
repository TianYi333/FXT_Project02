# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CC01_regs_project" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CC01_regs_sub_version" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CC01_regs_year_month" -parent ${Page_0}


}

proc update_PARAM_VALUE.CC01_regs_project { PARAM_VALUE.CC01_regs_project } {
	# Procedure called to update CC01_regs_project when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CC01_regs_project { PARAM_VALUE.CC01_regs_project } {
	# Procedure called to validate CC01_regs_project
	return true
}

proc update_PARAM_VALUE.CC01_regs_sub_version { PARAM_VALUE.CC01_regs_sub_version } {
	# Procedure called to update CC01_regs_sub_version when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CC01_regs_sub_version { PARAM_VALUE.CC01_regs_sub_version } {
	# Procedure called to validate CC01_regs_sub_version
	return true
}

proc update_PARAM_VALUE.CC01_regs_year_month { PARAM_VALUE.CC01_regs_year_month } {
	# Procedure called to update CC01_regs_year_month when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CC01_regs_year_month { PARAM_VALUE.CC01_regs_year_month } {
	# Procedure called to validate CC01_regs_year_month
	return true
}


proc update_MODELPARAM_VALUE.CC01_regs_project { MODELPARAM_VALUE.CC01_regs_project PARAM_VALUE.CC01_regs_project } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CC01_regs_project}] ${MODELPARAM_VALUE.CC01_regs_project}
}

proc update_MODELPARAM_VALUE.CC01_regs_year_month { MODELPARAM_VALUE.CC01_regs_year_month PARAM_VALUE.CC01_regs_year_month } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CC01_regs_year_month}] ${MODELPARAM_VALUE.CC01_regs_year_month}
}

proc update_MODELPARAM_VALUE.CC01_regs_sub_version { MODELPARAM_VALUE.CC01_regs_sub_version PARAM_VALUE.CC01_regs_sub_version } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CC01_regs_sub_version}] ${MODELPARAM_VALUE.CC01_regs_sub_version}
}

