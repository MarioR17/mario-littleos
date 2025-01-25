ENTRY(loader)                   /* the name of the entry label */

SECTIONS {
    . = 0x00100000;             /* the code should be loaded at 1 MB */

    .text ALIGN (0x1000) :      /* align at 4 KB */
    {
        *(.text)                /* all text sections from all files */
    }

    .rodata ALIGN (0x1000) :      /* align at 4 KB */
    {
        *(.rodata*)                /* all text sections from all files */
    }

    .data ALIGN (0x1000) :      /* align at 4 KB */
    {
        *(.data)                /* all text sections from all files */
    }

    .bss ALIGN (0x1000) :      /* align at 4 KB */
    {
        *(COMMON)
        *(.bss)                /* all text sections from all files */
    }

}
