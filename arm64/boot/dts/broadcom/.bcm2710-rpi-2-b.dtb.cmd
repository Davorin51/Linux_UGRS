cmd_arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb := gcc -E -Wp,-MMD,arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.dts.tmp arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb -b 0 -iarch/arm64/boot/dts/broadcom/ -i./scripts/dtc/include-prefixes -@ -Wno-interrupt_provider -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-gpios_property -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.d.dtc.tmp arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.dts.tmp ; cat arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.d.pre.tmp arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.d.dtc.tmp > arch/arm64/boot/dts/broadcom/.bcm2710-rpi-2-b.dtb.d

source_arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb := arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dts

deps_arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb := \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2710-rpi-2-b.dts \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2710.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2837.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/pinctrl/bcm2835.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/bcm2835.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/bcm2835-aux.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/soc/bcm2835-pm.h \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2835-common.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2835-rpi-common.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/power/raspberrypi-power.h \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm270x.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2709-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2708-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm2835-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm270x-rpi.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x-rpi-smsc9514.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x-rpi-csi1-2lane.dtsi \
  arch/arm64/boot/dts/broadcom/../../../../arm/boot/dts/bcm283x-rpi-i2c0mux_0_28.dtsi \

arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb: $(deps_arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb)

$(deps_arch/arm64/boot/dts/broadcom/bcm2710-rpi-2-b.dtb):
