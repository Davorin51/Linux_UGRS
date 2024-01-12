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

MODULE_INFO(intree, "Y");

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xdb4c717, "module_layout" },
	{ 0xa84ce9e0, "crypto_aes_inv_sbox" },
	{ 0x1a10c32b, "crypto_ft_tab" },
	{ 0xfe4ec969, "crypto_register_alg" },
	{ 0x3f506bb, "crypto_aes_set_key" },
	{ 0x56054c05, "crypto_it_tab" },
	{ 0x21867b4c, "crypto_unregister_alg" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "0043C888D35C326B96D2ABF");
