
#include <string.h>
#include <stdio.h>

#define TRS_CHAR_HEIGHT 12

extern unsigned char font[][TRS_CHAR_HEIGHT];


static void emit_char(int i)
{
  printf("  ");
  for (int x = 0; x < TRS_CHAR_HEIGHT; x++) {
    unsigned char b = font[i][x];
    unsigned char f = 0;
    for (int k = 0; k < 8; k++) {
      f <<= 1;
      f |= b & 1;
      b >>= 1;
    }
    printf("0x%02x, ", f & 0xff);
  }
  printf("\n");
}

static void gen_pixel_top_left(unsigned char* scan)
{
  for (int x = 0; x < 4; x++) {
    scan[x] |= 0xf0;
  }
}

static void gen_pixel_top_right(unsigned char* scan)
{
  for (int x = 0; x < 4; x++) {
    scan[x] |= 0x0f;
  }
}

static void gen_pixel_mid_left(unsigned char* scan)
{
  for (int x = 4; x < 8; x++) {
    scan[x] |= 0xf0;
  }
}

static void gen_pixel_mid_right(unsigned char* scan)
{
  for (int x = 4; x < 8; x++) {
    scan[x] |= 0x0f;
  }
}

static void gen_pixel_bottom_left(unsigned char* scan)
{
  for (int x = 8; x < 12; x++) {
    scan[x] |= 0xf0;
  }
}

static void gen_pixel_bottom_right(unsigned char* scan)
{
  for (int x = 8; x < 12; x++) {
    scan[x] |= 0x0f;
  }
}

static void emit_graphics(int i)
{
  unsigned char scan[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  i -= 128;
  if (i & (1 << 0)) {
    gen_pixel_top_left(scan);
  }
  if (i & (1 << 1)) {
    gen_pixel_top_right(scan);
  }
  if (i & (1 << 2)) {
    gen_pixel_mid_left(scan);
  }
  if (i & (1 << 3)) {
    gen_pixel_mid_right(scan);
  }
  if (i & (1 << 4)) {
    gen_pixel_bottom_left(scan);
  }
  if (i & (1 << 5)) {
    gen_pixel_bottom_right(scan);
  }
  printf("  ");
  for (int x = 0; x < sizeof(scan); x++) {
    printf("0x%02x, ", scan[x]);
  }
  printf("\n");
}

int main(int argc, char* argv[])
{
  printf("const unsigned char font_trs[] = {\n");
  for (int i = 0; i < 256; i++) {
    printf("  // ASCII: %d\n", i);
    if (i >= 128 && i <= 191) {
      emit_graphics(i);
    } else {
      emit_char(i);
    }
  }
  printf("};");
  return 0;
}

unsigned char font[][TRS_CHAR_HEIGHT] =
{
  /* CG 4 - for Model III */
  /* Source: A model III CG ROM, read by Todd P. Cromwell III (todd2.bin) */
  /* This is the older CG with Katakana alternate characters */
  /* Letters start at top of cell, Model III style */
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x30,0x48,0x08,0x3e,0x08,0x48,0x3e,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x3c,0x42,0x7e,0x02,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x00,0x42,0x42,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x10,0x28,0x44,0x7c,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x7e,0x40,0x40,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x28,0x00,0x38,0x44,0x44,0x44,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0xb8,0x44,0x64,0x54,0x4c,0x44,0x3a,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x10,0x42,0x42,0x42,0x62,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x4c,0x32,0x00,0x34,0x4c,0x44,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x20,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x1c,0x00,0x1c,0x20,0x3c,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x5e,0x22,0x22,0x1e,0x12,0x22,0x00,0x00,0x00,0x00,0x00 },
  { 0x28,0x00,0x10,0x28,0x44,0x7c,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x4c,0x32,0x10,0x28,0x44,0x7c,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x4c,0x32,0x44,0x4c,0x54,0x64,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x28,0x38,0x44,0x44,0x44,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x90,0x68,0x64,0x54,0x4c,0x2c,0x12,0x00,0x00,0x00,0x00,0x00 },
  { 0x4c,0x32,0x00,0x3c,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x44,0x44,0x3c,0x44,0x44,0x3e,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x00,0x42,0x42,0x42,0x62,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x4c,0x32,0x00,0x18,0x24,0x24,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x54,0x50,0x38,0x14,0x54,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x14,0x00,0x1c,0x20,0x3c,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x08,0x1c,0x20,0x3c,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x00,0x1c,0x20,0x3c,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x02,0x3e,0x42,0x7c,0x40,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x7c,0x04,0x7c,0x04,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x78,0x24,0x64,0x3c,0x24,0x64,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x04,0x04,0x44,0x38,0x10,0x08,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x4c,0x32,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x10,0x10,0x10,0x10,0x00,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x24,0x24,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x24,0x7e,0x24,0x7e,0x24,0x24,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x78,0x14,0x38,0x50,0x3c,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x46,0x26,0x10,0x08,0x64,0x62,0x00,0x00,0x00,0x00,0x00 },
  { 0x0c,0x12,0x12,0x0c,0x52,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x08,0x08,0x08,0x10,0x20,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x08,0x10,0x10,0x10,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x54,0x38,0x7c,0x38,0x54,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x10,0x10,0x7c,0x10,0x10,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x00,0x10,0x10,0x08,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x7e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x40,0x20,0x10,0x08,0x04,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x62,0x5a,0x46,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x18,0x14,0x10,0x10,0x10,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x40,0x30,0x0c,0x02,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x40,0x38,0x40,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x30,0x28,0x24,0x7e,0x20,0x20,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x02,0x1e,0x20,0x40,0x22,0x1c,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x04,0x02,0x3e,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x42,0x20,0x10,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x42,0x3c,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x42,0x7c,0x40,0x20,0x1c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x10,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x10,0x00,0x00,0x10,0x10,0x08,0x00,0x00,0x00,0x00 },
  { 0x60,0x30,0x18,0x0c,0x18,0x30,0x60,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7e,0x00,0x7e,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x06,0x0c,0x18,0x30,0x18,0x0c,0x06,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x40,0x30,0x08,0x00,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x52,0x6a,0x32,0x04,0x78,0x00,0x00,0x00,0x00,0x00 },
  { 0x18,0x24,0x42,0x7e,0x42,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x3e,0x44,0x44,0x3c,0x44,0x44,0x3e,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x02,0x02,0x02,0x44,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x1e,0x24,0x44,0x44,0x44,0x24,0x1e,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x02,0x02,0x1e,0x02,0x02,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x02,0x02,0x1e,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x02,0x72,0x42,0x44,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x42,0x7e,0x42,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x10,0x10,0x10,0x10,0x10,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x70,0x20,0x20,0x20,0x20,0x22,0x1c,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x22,0x12,0x0e,0x12,0x22,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x02,0x02,0x02,0x02,0x02,0x02,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x66,0x5a,0x5a,0x42,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x46,0x4a,0x52,0x62,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x42,0x42,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3e,0x42,0x42,0x3e,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x42,0x42,0x52,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x3e,0x42,0x42,0x3e,0x12,0x22,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0x02,0x3c,0x40,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x42,0x42,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x42,0x24,0x24,0x18,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x42,0x5a,0x5a,0x66,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x24,0x18,0x24,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x44,0x44,0x44,0x38,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x20,0x18,0x04,0x02,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x04,0x04,0x04,0x04,0x04,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x02,0x04,0x08,0x10,0x20,0x40,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x20,0x20,0x20,0x20,0x20,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x44,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0x00,0x00,0x00,0x00 },
  { 0x08,0x10,0x20,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x1c,0x20,0x3c,0x22,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x02,0x02,0x3a,0x46,0x42,0x46,0x3a,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3c,0x42,0x02,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x40,0x40,0x5c,0x62,0x42,0x62,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3c,0x42,0x7e,0x02,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x30,0x48,0x08,0x3e,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x5c,0x62,0x62,0x5c,0x40,0x3c,0x00,0x00,0x00,0x00 },
  { 0x02,0x02,0x3a,0x46,0x42,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x00,0x18,0x10,0x10,0x10,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x00,0x30,0x20,0x20,0x20,0x22,0x1c,0x00,0x00,0x00,0x00 },
  { 0x02,0x02,0x22,0x12,0x0a,0x16,0x22,0x00,0x00,0x00,0x00,0x00 },
  { 0x18,0x10,0x10,0x10,0x10,0x10,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x6e,0x92,0x92,0x92,0x92,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3a,0x46,0x42,0x42,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3c,0x42,0x42,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3a,0x46,0x46,0x3a,0x02,0x02,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x5c,0x62,0x62,0x5c,0x40,0x40,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3a,0x46,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x02,0x3c,0x40,0x3e,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x08,0x3e,0x08,0x08,0x48,0x30,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x42,0x42,0x42,0x62,0x5c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x42,0x42,0x42,0x24,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x82,0x92,0x92,0x92,0x6c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x42,0x24,0x18,0x24,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x42,0x42,0x62,0x5c,0x40,0x3c,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7e,0x20,0x18,0x04,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x30,0x08,0x08,0x04,0x08,0x08,0x30,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x10,0x10,0x00,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x0c,0x10,0x10,0x20,0x10,0x10,0x0c,0x00,0x00,0x00,0x00,0x00 },
  { 0x0c,0x92,0x60,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x10,0x7c,0x10,0x10,0x00,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x7c,0xfe,0xfe,0x7c,0x10,0x10,0x00,0x00,0x00,0x00 },
  { 0x00,0x6c,0xfe,0xfe,0x7c,0x38,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x7c,0xfe,0x7c,0x38,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x38,0x10,0xd6,0xfe,0xd6,0x10,0x38,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0xa5,0x81,0xa5,0x99,0x42,0x3c,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0xa5,0x81,0x99,0xa5,0x42,0x3c,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x08,0x04,0x08,0x10,0x20,0x3c,0x00,0x00,0x00,0x00 },
  { 0x04,0x08,0x10,0x20,0x10,0x08,0x04,0x3c,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x9c,0x62,0x62,0x9c,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x44,0x3c,0x44,0x44,0x3c,0x04,0x02,0x00,0x00,0x00,0x00 },
  { 0x86,0x48,0x28,0x18,0x08,0x0c,0x0c,0x00,0x00,0x00,0x00,0x00 },
  { 0x30,0x48,0x08,0x30,0x50,0x48,0x30,0x00,0x00,0x00,0x00,0x00 },
  { 0x60,0x10,0x08,0x7c,0x08,0x10,0x60,0x00,0x00,0x00,0x00,0x00 },
  { 0x68,0x60,0x10,0x08,0x38,0x40,0x30,0x00,0x00,0x00,0x00,0x00 },
  { 0x34,0x4a,0x48,0x48,0x40,0x40,0x40,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x44,0x7c,0x44,0x28,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x04,0x04,0x04,0x44,0x44,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x02,0x12,0x0a,0x06,0x0a,0x52,0x22,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x08,0x08,0x08,0x18,0x24,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x24,0x24,0x24,0x5c,0x04,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x4c,0x48,0x28,0x18,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x04,0x18,0x04,0x38,0x40,0x30,0x00,0x00,0x00,0x00 },
  { 0x00,0x18,0x24,0x42,0x42,0x24,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x2a,0x28,0x28,0x28,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x18,0x24,0x24,0x1c,0x04,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x12,0x12,0x0c,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x12,0x10,0x10,0x10,0x10,0x00,0x00,0x00,0x00 },
  { 0x00,0x40,0x26,0x24,0x24,0x24,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x54,0x54,0x54,0x38,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x46,0x28,0x10,0x28,0xc4,0x00,0x00,0x00,0x00,0x00 },
  { 0x92,0x54,0x54,0x38,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x44,0x82,0x92,0x92,0x6c,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x82,0x82,0xc6,0x44,0xc6,0x00,0x00,0x00,0x00,0x00 },
  { 0x78,0x08,0x08,0x08,0x0a,0x0c,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x10,0x00,0x7c,0x00,0x10,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x04,0x08,0x30,0x08,0x04,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x4c,0x32,0x00,0x4c,0x32,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x10,0x28,0x44,0xfe,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x08,0x08,0x10,0x10,0x08,0x04,0x00,0x00,0x00,0x00 },
  { 0x80,0x40,0xfe,0x10,0xfe,0x04,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x10,0x20,0x7c,0x08,0x10,0x20,0x00,0x00,0x00,0x00,0x00 },
  { 0xfc,0x4a,0x24,0x10,0x48,0xa4,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x82,0x82,0xfe,0x44,0x44,0xc6,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x6c,0x92,0x92,0x6c,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x40,0x20,0x12,0x0a,0x06,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x78,0x04,0x38,0x44,0x38,0x40,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x44,0xaa,0x54,0x28,0x54,0xaa,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x42,0xb9,0x85,0x85,0xb9,0x42,0x3c,0x00,0x00,0x00,0x00 },
  { 0x42,0x24,0x18,0x24,0x18,0x24,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x52,0x52,0x5c,0x50,0x50,0x50,0x50,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x54,0x14,0x54,0x38,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x5e,0xa5,0xa5,0x9d,0x95,0x66,0x3c,0x00,0x00,0x00,0x00 },
  { 0xfa,0x06,0xc6,0x46,0x26,0xde,0x06,0xfa,0x00,0x00,0x00,0x00 },
  { 0xff,0x20,0xc0,0x3f,0x40,0x3f,0x20,0x1f,0x00,0x00,0x00,0x00 },
  { 0x3f,0x40,0x3f,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x1e,0x22,0x22,0x1e,0x52,0x22,0xd2,0x00,0x00,0x00,0x00,0x00 },
  { 0x86,0x41,0x21,0x16,0x68,0x94,0x92,0x61,0x00,0x00,0x00,0x00 },
  { 0x70,0x60,0x50,0x0e,0x09,0x09,0x06,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x44,0x44,0x44,0x38,0x10,0x38,0x10,0x00,0x00,0x00,0x00 },
  { 0x70,0x10,0x10,0x70,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0xff,0xc7,0xbb,0xcf,0xef,0xff,0xef,0xff,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x10,0x38,0x54,0x10,0x28,0x44,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x10,0x38,0x54,0x28,0x7c,0x28,0x00,0x00,0x00,0x00 },
  { 0x10,0x28,0x44,0x44,0x44,0x54,0x6c,0x44,0x00,0x00,0x00,0x00 },
  { 0x44,0x28,0x10,0x7c,0x10,0x7c,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x00,0x04,0x0a,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x04,0x04,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x20,0x20,0x20,0x20,0x3e,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x02,0x04,0x08,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x3c,0x20,0x3c,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x40,0x30,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x20,0x10,0x18,0x14,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x10,0x7c,0x44,0x40,0x20,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x38,0x10,0x10,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x10,0x3c,0x18,0x14,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x08,0x7c,0x48,0x08,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x38,0x20,0x20,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x7c,0x40,0x78,0x40,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x54,0x54,0x44,0x20,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x00,0x7e,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x28,0x18,0x08,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x40,0x20,0x10,0x18,0x14,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x7c,0x44,0x44,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x10,0x10,0x10,0x10,0x10,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x7e,0x10,0x18,0x14,0x12,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x7e,0x48,0x48,0x48,0x44,0x72,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x38,0x10,0x7c,0x10,0x10,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x7c,0x44,0x44,0x42,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x04,0x7c,0x14,0x12,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x40,0x40,0x40,0x40,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x24,0x7e,0x24,0x24,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x1c,0x40,0x4e,0x40,0x40,0x24,0x18,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x20,0x10,0x18,0x24,0x42,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x7e,0x48,0x28,0x08,0x48,0x38,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x44,0x48,0x20,0x10,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x42,0x42,0x50,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x50,0x3e,0x10,0x7c,0x10,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x00,0x7e,0x40,0x20,0x10,0x0c,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x00,0x7c,0x10,0x10,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x04,0x1c,0x24,0x44,0x04,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x7c,0x10,0x10,0x10,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x38,0x00,0x00,0x00,0x00,0x00,0x7c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x40,0x28,0x10,0x28,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x7e,0x40,0x20,0x30,0x58,0x14,0x00,0x00,0x00,0x00,0x00 },
  { 0x60,0x40,0x20,0x10,0x08,0x04,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x20,0x50,0x50,0x50,0x48,0x44,0x00,0x00,0x00,0x00,0x00 },
  { 0x02,0x02,0x7e,0x02,0x02,0x42,0x3c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x40,0x20,0x10,0x08,0x04,0x00,0x00,0x00,0x00,0x00 },
  { 0x00,0x00,0x08,0x14,0x22,0x40,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x10,0x7c,0x10,0x54,0x54,0x54,0x10,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x40,0x28,0x10,0x20,0x40,0x00,0x00,0x00,0x00,0x00 },
  { 0x02,0x3c,0x42,0x3c,0x42,0x3c,0x40,0x00,0x00,0x00,0x00,0x00 },
  { 0x20,0x10,0x08,0x04,0x12,0x22,0x5e,0x00,0x00,0x00,0x00,0x00 },
  { 0x40,0x44,0x28,0x10,0x28,0x04,0x02,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x08,0x3c,0x08,0x08,0x48,0x30,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x7e,0x48,0x28,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x3c,0x20,0x20,0x20,0x10,0x08,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x40,0x40,0x7c,0x40,0x40,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x54,0x54,0x44,0x40,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x42,0x42,0x42,0x42,0x22,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x0a,0x0a,0x0a,0x4a,0x4a,0x2a,0x1a,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x04,0x04,0x44,0x44,0x24,0x1c,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x42,0x42,0x42,0x42,0x42,0x7e,0x00,0x00,0x00,0x00,0x00 },
  { 0x7e,0x42,0x42,0x40,0x20,0x10,0x08,0x00,0x00,0x00,0x00,0x00 },
  { 0x4e,0x40,0x40,0x40,0x20,0x12,0x0e,0x00,0x00,0x00,0x00,0x00 },
  { 0x08,0x12,0x24,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
  { 0x04,0x0a,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 },
};
