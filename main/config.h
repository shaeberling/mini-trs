
#pragma once

//#define DISABLE_IO 1

// SPI
#ifdef CONFIG_POCKET_TRS_TTGO_VGA32_SUPPORT
#define SPI_PIN_NUM_MISO GPIO_NUM_2
#define SPI_PIN_NUM_MOSI GPIO_NUM_12
#define SPI_PIN_NUM_CLK GPIO_NUM_14
#else
#define SPI_PIN_NUM_MISO GPIO_NUM_19
#define SPI_PIN_NUM_MOSI GPIO_NUM_13
#define SPI_PIN_NUM_CLK GPIO_NUM_14
#endif

#define SPI_PORT_EXP_SPEED_MHZ 20
#define SPI_DIGI_POT_SPEED_MHZ 1

#define SPI_PIN_NUM_CS_MCP23X GPIO_NUM_18
#define SPI_PIN_NUM_CS_MCP4351 GPIO_NUM_4
#define SPI_PIN_NUM_INT GPIO_NUM_27


// VGA
#define VGA_RED GPIO_NUM_22
#define VGA_GREEN GPIO_NUM_21
#define VGA_BLUE GPIO_NUM_23
#define VGA_HSYNC GPIO_NUM_26
#define VGA_VSYNC GPIO_NUM_5

#define TRS_CASSETTE_IN GPIO_NUM_36

// Keyboard: GPIO 32 & 33

// Audio: 25

// Bits of MCP23008
#define TRS_IN (1 << 7)
#define TRS_OUT (1 << 6)
#define TRS_IOBUSINT (1 << 4)
#define TRS_IOBUSWAIT (1 << 3)
#define TRS_EXTIOSEL (1 << 2)
#define TRS_M1 (1 << 1)
#define TRS_IORQ (1 << 0)
