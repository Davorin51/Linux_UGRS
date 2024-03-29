cmd_arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb := gcc -E -Wp,-MMD,arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.dts.tmp arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb -b 0 -iarch/arm64/boot/dts/broadcom/ -i./scripts/dtc/include-prefixes -@ -Wno-interrupt_provider -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-gpios_property -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.d.dtc.tmp arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.dts.tmp ; cat arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.d.pre.tmp arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.d.dtc.tmp > arch/arm64/boot/dts/broadcom/.bcm2711-rpi-400.dtb.d

source_arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb := arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dts

deps_arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb := \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2711-rpi-400.dts \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2711.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/bcm2835.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/bcm2835.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/bcm2835-aux.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/bcm2835-pm.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2835-rpi.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/power/raspberrypi-power.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/raspberrypi,firmware-reset.h \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm270x.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm271x-rpi-bt.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2711-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm270x-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x-rpi-csi1-2lane.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x-rpi-i2c0mux_0_44.dtsi \

arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb: $(deps_arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb)

$(deps_arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dtb):
