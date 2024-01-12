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
	{ 0x6b2b69f7, "static_key_enable" },
	{ 0x8946ea72, "fpsimd_context_busy" },
	{ 0x20f1d5de, "crypto_unregister_skciphers" },
	{ 0xa8a8110c, "kernel_neon_end" },
	{ 0x20d5da67, "skcipher_walk_done" },
	{ 0x1a5a0be4, "crypto_register_skciphers" },
	{ 0xf70e4a4d, "preempt_schedule_notrace" },
	{ 0xbf1b8f66, "skcipher_walk_virt" },
	{ 0xaaa4b9bc, "hchacha_block_generic" },
	{ 0x9f49dcc4, "__stack_chk_fail" },
	{ 0x26944622, "cpu_hwcaps" },
	{ 0xce8c85a4, "cpu_hwcap_keys" },
	{ 0x41237f71, "cpu_have_feature" },
	{ 0xcec122d7, "chacha_crypt_generic" },
	{ 0x4829a47e, "memcpy" },
	{ 0x8fd180e7, "kernel_neon_begin" },
	{ 0x14b89635, "arm64_const_caps_ready" },
};

MODULE_INFO(depends, "libchacha");


MODULE_INFO(srcversion, "8F668FC4F66B37CDE9BB980");
