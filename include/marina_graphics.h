#ifndef MARINA_GRAPHICS_H
#define MARINA_GRAPHICS_H

// copies Marina graphics from ROM to segment 5
void MarinaGraphics_Copy(void);

// decompresses Marina graphics. must be run after copy completes
void MarinaGraphics_Decompress(void);

#endif
