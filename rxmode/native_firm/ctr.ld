OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)

/*0x080C3EE0*/
ENTRY(_start)

SECTIONS
{
	. = 0x0801a4c0;
	start_addr = .;
	.text.start : { *(.text.start) }
	.text : { *(.text) *(.text*) }
	.rodata : { *(.rodata) *(.rodata*) }
	.data : { *(.data) *(.data*) }
	.bss : { *(.bss) *(.bss*) }
	total_size = . - start_addr;

	. = 0x0801b564;
	.patch.k9.flags : { *(.patch.k9.flags) }

	. = 0x080282f8;
	.patch.p9.keyx : { *(.patch.p9.keyx) }

	. = 0x0805d63c;
	.patch.p9.sig.1 : { *(.patch.p9.sig.1) }

	. = 0x080632b8;
	.patch.p9.sig.2 : { *(.patch.p9.sig.2) }

	. = 0x0807882c;
	.patch.p9.nand.write : { *(.patch.p9.nand.write) }

	. = 0x0807886c;
	.patch.p9.nand.read : { *(.patch.p9.nand.read) }

	. = 0x08086140;
	.patch.p9.mythread.ldr : { *(.patch.p9.mythread.ldr) }

	. = 0x08086174;
	.patch.p9.mythread.addr : { *(.patch.p9.mythread.addr) }

	. = 0x080859ec;
	.patch.p9.reboot.entry : { *(.patch.p9.reboot.entry) }

	. = 0x08094454;
	.patch.p9.reboot.body : { *(.patch.p9.reboot.body) }
}
