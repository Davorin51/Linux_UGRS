#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xdb4c717, "module_layout" },
	{ 0xd7ced2c4, "i2c_del_driver" },
	{ 0x485820d2, "i2c_register_driver" },
	{ 0x317429ed, "_dev_info" },
	{ 0x9f49dcc4, "__stack_chk_fail" },
	{ 0xc5d2b55c, "_dev_err" },
	{ 0xfe69d28c, "i2c_transfer_buffer_flags" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0xc5850110, "printk" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("i2c:nunchuk");

MODULE_INFO(srcversion, "6A60292CCB33942F2704209");
