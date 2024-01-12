cmd_arch/arm64/kernel/efi-rt-wrapper.o := /home/student/buildroot/output/host/bin/aarch64-buildroot-linux-gnu-gcc -Wp,-MMD,arch/arm64/kernel/.efi-rt-wrapper.o.d -nostdinc -isystem /home/student/buildroot/output/host/lib/gcc/aarch64-buildroot-linux-gnu/12.3.0/include -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DCC_USING_PATCHABLE_FUNCTION_ENTRY -DKASAN_SHADOW_SCALE_SHIFT=3 -fmacro-prefix-map=./= -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -fno-asynchronous-unwind-tables -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=3    -c -o arch/arm64/kernel/efi-rt-wrapper.o arch/arm64/kernel/efi-rt-wrapper.S

source_arch/arm64/kernel/efi-rt-wrapper.o := arch/arm64/kernel/efi-rt-wrapper.S

deps_arch/arm64/kernel/efi-rt-wrapper.o := \
    $(wildcard include/config/shadow/call/stack.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  include/linux/linkage.h \
    $(wildcard include/config/arch/use/sym/annotations.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  arch/arm64/include/asm/linkage.h \
    $(wildcard include/config/arm64/bti/kernel.h) \

arch/arm64/kernel/efi-rt-wrapper.o: $(deps_arch/arm64/kernel/efi-rt-wrapper.o)

$(deps_arch/arm64/kernel/efi-rt-wrapper.o):
