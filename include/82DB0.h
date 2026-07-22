#ifndef FILE_82DB0_H
#define FILE_82DB0_H

// copies Marina graphics from ROM to segment 5
void MarinaGraphics_Copy(void);

// decompresses Marina graphics. must be run after copy completes
void MarinaGraphics_Decompress(void);

#endif
