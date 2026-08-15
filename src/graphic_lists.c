#include "inttypes.h"
#include "graphicIndex.h"

// Entries are { graphicIndex, graphicTimer } pairs.
// Negative values rewind; { 0, 0 } terminates

s16 gGraphicListBlank[] = {
    0, 0,
};

s16 D_800E1384[] = {
    GINDEX_BOOM1, 2,
    GRAPHIC_FRAME(BOOM1, 1), 2,
    GRAPHIC_FRAME(BOOM1, 2), 2,
    GRAPHIC_FRAME(BOOM1, 3), 2,
    GRAPHIC_FRAME(BOOM1, 4), 2,
    GRAPHIC_FRAME(BOOM1, 5), 2,
    GRAPHIC_FRAME(BOOM1, 6), 2,
    GINDEX_BOOM2, 2,
    GRAPHIC_FRAME(BOOM2, 1), 2,
    GRAPHIC_FRAME(BOOM2, 2), 2,
    GRAPHIC_FRAME(BOOM2, 3), 2,
    GRAPHIC_FRAME(BOOM2, 4), 2,
    0, 0,
};

s16 D_800E13B8[] = {
    GINDEX_POOF, 2,
    GRAPHIC_FRAME(POOF, 1), 2,
    GRAPHIC_FRAME(POOF, 2), 2,
    GRAPHIC_FRAME(POOF, 3), 2,
    GRAPHIC_FRAME(POOF, 4), 2,
    GRAPHIC_FRAME(POOF, 5), 2,
    GRAPHIC_FRAME(POOF, 6), 2,
    GRAPHIC_FRAME(POOF, 7), 2,
    0, 0,
};

s16 gGraphicListGemIcon[] = {
    GINDEX_GEM, 2,
    GRAPHIC_FRAME(GEM, 1), 2,
    GRAPHIC_FRAME(GEM, 2), 2,
    GRAPHIC_FRAME(GEM, 3), 2,
    GRAPHIC_FRAME(GEM, 4), 2,
    GRAPHIC_FRAME(GEM, 5), 2,
    GRAPHIC_FRAME(GEM, 6), 2,
    -0xE, 0,
};

s16 D_800E13FC[] = {
    GINDEX_LIFEHEADBLINK, 0x000C,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 4,
    GRAPHIC_FRAME(LIFEHEADBLINK, 2), 4,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 4,
    GINDEX_LIFEHEADBLINK, 0x000A,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 6,
    GRAPHIC_FRAME(LIFEHEADBLINK, 2), 6,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 6,
    GINDEX_LIFEHEADBLINK, 0x000E,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 5,
    GRAPHIC_FRAME(LIFEHEADBLINK, 2), 5,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 5,
    GINDEX_LIFEHEADBLINK, 0x0010,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 3,
    GRAPHIC_FRAME(LIFEHEADBLINK, 2), 3,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 3,
    GINDEX_LIFEHEADBLINK, 4,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 2,
    GRAPHIC_FRAME(LIFEHEADBLINK, 2), 2,
    GRAPHIC_FRAME(LIFEHEADBLINK, 1), 2,
    -0x28, 0,
};

s16 D_800E1450[] = {
    GINDEX_CLANCERGHOST, 6,
    GRAPHIC_FRAME(CLANCERGHOST, 1), 6,
    GRAPHIC_FRAME(CLANCERGHOST, 2), 6,
    GRAPHIC_FRAME(CLANCERGHOST, 3), 6,
    GRAPHIC_FRAME(CLANCERGHOST, 4), 6,
    GRAPHIC_FRAME(CLANCERGHOST, 5), 6,
    -0xC, 0,
    0, 0,
    0, 0,
};

s16 D_800E1474[] = {
    GINDEX_BUTTONL, 0x0010,
    GRAPHIC_FRAME(BUTTONL, 1), 0x0010,
    GINDEX_BUTTONR, 0x0010,
    GRAPHIC_FRAME(BUTTONR, 1), 0x0010,
    -0x8, 0,
    GINDEX_BUTTONR, 0x0010,
    GRAPHIC_FRAME(BUTTONR, 1), 0x0010,
    -0x4, 0,
    0x5000, 8,
    0, 0,
};

s16 D_800E149C[] = {
    0x7008, 0x000C,
    0x7009, 0x000C,
    0x700A, 0x0028,
    0x700B, 8,
    0x700C, 6,
    0x700D, 8,
    0, 0,
    0x0448, 8,
    0x044A, 8,
    -0x4, 0,
    0, 0,
};

s16 D_800E14C8[] = {
    GINDEX_BOOM1, 8,
    GRAPHIC_FRAME(BOOM1, 1), 6,
    GRAPHIC_FRAME(BOOM1, 2), 5,
    GRAPHIC_FRAME(BOOM1, 3), 4,
    GRAPHIC_FRAME(BOOM1, 4), 3,
    GRAPHIC_FRAME(BOOM1, 5), 2,
    GRAPHIC_FRAME(BOOM1, 6), 1,
    0, 0,
};

s16 D_800E14E8[] = {
    GINDEX_BOOM1, 2,
    GRAPHIC_FRAME(BOOM1, 1), 2,
    GRAPHIC_FRAME(BOOM1, 2), 2,
    GRAPHIC_FRAME(BOOM1, 3), 2,
    GRAPHIC_FRAME(BOOM1, 4), 2,
    GRAPHIC_FRAME(BOOM1, 5), 2,
    GRAPHIC_FRAME(BOOM1, 6), 2,
    GINDEX_BOOM2, 2,
    GRAPHIC_FRAME(BOOM2, 1), 2,
    GRAPHIC_FRAME(BOOM2, 2), 2,
    GRAPHIC_FRAME(BOOM2, 3), 2,
    GRAPHIC_FRAME(BOOM2, 4), 2,
    0, 0,
};

s16 D_800E151C[] = {
    GINDEX_BOOM1, 1,
    GRAPHIC_FRAME(BOOM1, 2), 1,
    GRAPHIC_FRAME(BOOM1, 4), 1,
    GRAPHIC_FRAME(BOOM1, 6), 1,
    GRAPHIC_FRAME(BOOM2, 1), 1,
    0, 0,
    0x01E2, 5,
    0x01E4, 8,
    0, 0,
};

s16 D_800E1540[] = {
    GINDEX_FIREBALL, 2,
    GRAPHIC_FRAME(FIREBALL, 1), 2,
    -0x4, 0,
};

s16 D_800E154C[] = {
    GINDEX_EXCLAIMBUBBLE, 0x001E,
    0, 0,
    GINDEX_QUESTIONBUBBLE, 0x001E,
    0, 0,
};

s16 D_800E155C[] = {
    GRAPHIC_FRAME(BLASTB, 1), 0x7FFF,
    -0x2, 0,
    GRAPHIC_FRAME(BLASTB, 1), 0x7FFF,
    -0x2, 0,
};

s16 D_800E156C[] = {
    GINDEX_BLASTA, 0x7FFF,
    -0x2, 0,
};

s16 D_800E1574[] = {
    GINDEX_GROUNDFLAME, 0x0010,
    0, 0,
};

s16 D_800E157C[] = {
    0x018C, 1,
    GINDEX_DASHEFFECT, 2,
    GRAPHIC_FRAME(DASHEFFECT, 1), 2,
    -0x4, 0,
};

s16 D_800E158C[] = {
    GINDEX_STAREFFECT, 0x7FFF,
    -0x2, 0,
    0, 0,
    GINDEX_SHOCKEFFECT, 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 1), 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 2), 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 1), 2,
    -0x8, 0,
};

s16 D_800E15AC[] = {
    GINDEX_DISSOLVE, 2,
    GRAPHIC_FRAME(DISSOLVE, 1), 2,
    GRAPHIC_FRAME(DISSOLVE, 2), 2,
    GRAPHIC_FRAME(DISSOLVE, 3), 2,
    GRAPHIC_FRAME(DISSOLVE, 4), 2,
    0, 0,
};

s16 D_800E15C4[] = {
    GINDEX_POW, 1,
    GRAPHIC_FRAME(POW, 1), 1,
    GINDEX_POW, 1,
    GRAPHIC_FRAME(POW, 1), 1,
    GRAPHIC_FRAME(POW, 2), 1,
    GRAPHIC_FRAME(POW, 1), 1,
    GRAPHIC_FRAME(POW, 2), 1,
    GRAPHIC_FRAME(POW, 3), 1,
    GRAPHIC_FRAME(POW, 2), 1,
    GRAPHIC_FRAME(POW, 3), 1,
    GRAPHIC_FRAME(POW, 4), 1,
    GRAPHIC_FRAME(POW, 3), 1,
    GRAPHIC_FRAME(POW, 4), 1,
    GRAPHIC_FRAME(POW, 3), 1,
    GRAPHIC_FRAME(POW, 4), 1,
    0, 0,
};

s16 D_800E1604[] = {
    GINDEX_POOF, 5,
    GRAPHIC_FRAME(POOF, 1), 5,
    GRAPHIC_FRAME(POOF, 2), 5,
    GRAPHIC_FRAME(POOF, 3), 5,
    GRAPHIC_FRAME(POOF, 4), 5,
    GRAPHIC_FRAME(POOF, 5), 5,
    GRAPHIC_FRAME(POOF, 6), 5,
    GRAPHIC_FRAME(POOF, 7), 5,
    0, 0,
    GINDEX_BOOM1, 1,
    GRAPHIC_FRAME(BOOM1, 1), 1,
    GRAPHIC_FRAME(BOOM1, 2), 1,
    GRAPHIC_FRAME(BOOM1, 3), 1,
    GRAPHIC_FRAME(BOOM1, 4), 1,
    GRAPHIC_FRAME(BOOM1, 5), 1,
    GRAPHIC_FRAME(BOOM1, 6), 1,
    GINDEX_BOOM2, 1,
    0, 0,
};

s16 gGraphicListGem[] = {
    GINDEX_GEM, 2,
    GRAPHIC_FRAME(GEM, 1), 2,
    GRAPHIC_FRAME(GEM, 2), 2,
    GRAPHIC_FRAME(GEM, 3), 2,
    GRAPHIC_FRAME(GEM, 4), 2,
    GRAPHIC_FRAME(GEM, 5), 2,
    GRAPHIC_FRAME(GEM, 6), 2,
    -0xE, 0,
    -0x10, 0,
};

s16 D_800E1670[] = {
    GINDEX_MUSHROOMCLOUD, 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 1), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 2), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 3), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 4), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 5), 4,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 6), 4,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 7), 4,
    0, 0,
    GINDEX_MUSHROOMCLOUD, 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 1), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 2), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 3), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 4), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 5), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 6), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 7), 2,
    0, 0,
};

s16 D_800E16B8[] = {
    GINDEX_MUSHROOMCLOUD, 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 1), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 2), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 3), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 4), 3,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 5), 4,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 6), 4,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 7), 4,
    0, 0,
    GINDEX_MUSHROOMCLOUD, 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 1), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 2), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 3), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 4), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 5), 2,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 6), 1,
    GRAPHIC_FRAME(MUSHROOMCLOUD, 7), 2,
    0, 0,
};

s16 D_800E1700[] = {
    0x6800, 5,
    0x6801, 7,
    0x6802, 0x000A,
    0x6801, 7,
    0, 0,
};

s16 D_800E1714[] = {
    0x6800, 5,
    0x6801, 7,
    0x6802, 0x000A,
    0x6801, 7,
    -0x8, 0,
};

s16 D_800E1728[] = {
    0x6829, 0x000A,
    0x682A, 7,
    0x682B, 0x000A,
    0x682A, 7,
    -0x8, 0,
};

s16 D_800E173C[] = {
    0x6845, 8,
    0x6846, 6,
    0x6847, 8,
    0x6846, 6,
    -0x8, 0,
};

s16 D_800E1750[] = {
    0x68AD, 9,
    0x68AE, 5,
    0x68AF, 5,
    0x68B0, 9,
    0x68AF, 6,
    0x68AE, 6,
    0, 0,
};

s16 D_800E176C[] = {
    0x68AD, 2,
    0x68AE, 3,
    0x68AF, 4,
    0x68B0, 6,
    0x68AF, 3,
    0x68AE, 2,
    0, 0,
};

s16 D_800E1788[] = {
    0x68AD, 2,
    0x68AE, 1,
    0x68AF, 1,
    0x68B0, 2,
    0x68AF, 1,
    0x68AE, 1,
    0, 0,
};

s16 D_800E17A4[] = {
    0x6813, 2,
    0x6814, 2,
    0x6815, 2,
    0x6816, 2,
    0x6817, 2,
    0x6818, 2,
    0, 0,
    0x6813, 3,
    0x6814, 3,
    0x6815, 3,
    0x6816, 3,
    0x6817, 3,
    0x6818, 3,
    0, 0,
};

s16 D_800E17DC[] = {
    0x6818, 3,
    0x6817, 3,
    0x6816, 3,
    0x6815, 3,
    0x6814, 3,
    0x6813, 3,
    0, 0,
};

s16 D_800E17F8[] = {
    0x68E1, 3,
    0x68E2, 3,
    0x68E3, 3,
    0x68E4, 8,
    0x68E5, 3,
    0x68E6, 3,
    0x68E7, 8,
    0x68E6, 3,
    0x68E5, 3,
    0x68E4, 8,
    0x68E5, 3,
    0x68E6, 3,
    0x68E7, 8,
    0x68E8, 3,
    0x68E9, 3,
    0x68EA, 3,
    0x68EB, 3,
    0, 0,
};

s16 D_800E1840[] = {
    0x68F2, 3,
    0x68F3, 3,
    0x68F4, 3,
    0x68F5, 8,
    0x68F6, 3,
    0x68F7, 3,
    0x68F8, 8,
    0x68F7, 3,
    0x68F6, 3,
    0x68F5, 8,
    0x68F6, 3,
    0x68F7, 3,
    0x68F8, 8,
    0x68F9, 3,
    0x68FA, 3,
    0x68FB, 3,
    0x68FC, 3,
    0, 0,
};

s16 D_800E1888[] = {
    0x68E1, 3,
    0x68E2, 3,
    0x68E3, 3,
    0, 0,
};

s16 D_800E1898[] = {
    0x68EC, 3,
    0x68ED, 3,
    0x68EE, 3,
    0x68EF, 3,
    0x68F0, 3,
    0x68F1, 3,
    0, 0,
};

s16 D_800E18B4[] = {
    0x68E4, 3,
    0x68E5, 3,
    0x68E6, 3,
    0x68E7, 3,
    0x68E8, 3,
    0x68E7, 3,
    0x68E6, 3,
    0x68E5, 3,
    0x68E4, 3,
    0, 0,
};

s16 D_800E18DC[] = {
    0x68F1, 3,
    0x68F0, 3,
    0x68EF, 3,
    0x68EE, 3,
    0, 0,
};

s16 D_800E18F0[] = {
    0x68EF, 3,
    0x68F0, 3,
    0x68F1, 3,
    0, 0,
};

s16 D_800E1900[] = {
    0x68E4, 3,
    0x68E5, 3,
    0x68E6, 3,
    0x68E7, 3,
    0x68E8, 3,
    0x68E9, 3,
    0x68EA, 3,
    0x68EB, 3,
    0, 0,
};

s16 D_800E1924[] = {
    0x68F2, 3,
    0x68F3, 3,
    0x68F4, 3,
    0, 0,
};

s16 D_800E1934[] = {
    0x68FD, 3,
    0x68FE, 3,
    0x68FF, 3,
    0x6900, 3,
    0x6901, 3,
    0x6902, 3,
    0, 0,
};

s16 D_800E1950[] = {
    0x68F5, 3,
    0x68F6, 3,
    0x68F7, 3,
    0x68F8, 3,
    0x68F9, 3,
    0x68F8, 3,
    0x68F7, 3,
    0x68F6, 3,
    0x68F5, 3,
    0, 0,
};

s16 D_800E1978[] = {
    0x6902, 3,
    0x6901, 3,
    0x6900, 3,
    0x68FF, 3,
    0, 0,
};

s16 D_800E198C[] = {
    0x6900, 3,
    0x6901, 3,
    0x6902, 3,
    0, 0,
};

s16 D_800E199C[] = {
    0x68F5, 3,
    0x68F6, 3,
    0x68F7, 3,
    0x68F8, 3,
    0x68F9, 3,
    0x68FA, 3,
    0x68FB, 3,
    0x68FC, 3,
    0, 0,
};

s16 D_800E19C0[] = {
    0x68B6, 2,
    0x68B7, 3,
    0x68B6, 2,
    0x6800, 1,
    0, 0,
};

s16 D_800E19D4[] = {
    0x68B6, 3,
    0x68B7, 3,
    0x68B8, 3,
    0x68B9, 3,
    0, 0,
};

s16 D_800E19E8[] = {
    0x68BA, 2,
    0x68BB, 3,
    0x68BA, 2,
    0x6829, 1,
    0, 0,
};

s16 D_800E19FC[] = {
    0x6806, 2,
    0x6807, 2,
    0x6808, 2,
    0x6809, 2,
    0x680A, 2,
    0x680B, 2,
    0x680C, 2,
    0x680D, 2,
    0, 0,
};

s16 D_800E1A20[] = {
    0x680E, 2,
    0x680F, 2,
    0x6810, 2,
    0x6811, 2,
    0x6812, 2,
    0x6803, 2,
    0x6804, 2,
    0x6805, 2,
    0, 0,
    0x6806, 2,
    0x6807, 1,
    0x6808, 2,
    0x6809, 1,
    0x680A, 2,
    0x680B, 1,
    0x680C, 2,
    0x680D, 1,
    0, 0,
    0x680E, 2,
    0x680F, 1,
    0x6810, 2,
    0x6811, 1,
    0x6812, 2,
    0x6803, 1,
    0x6804, 2,
    0x6805, 1,
    0, 0,
};

s16 D_800E1A8C[] = {
    0x68BE, 2,
    0x68BF, 3,
    0x68C0, 3,
    0x68C1, 4,
    0x68C2, 4,
    0x68C3, 5,
    0x68C4, 3,
    0x68C5, 3,
    0x68C6, 3,
    0, 0,
    0x6885, 2,
    0x6886, 2,
    0x6887, 2,
    0x6888, 2,
    0x6889, 2,
    0x688A, 2,
    0x688B, 2,
    0x688C, 2,
    0, 0,
    0x688D, 2,
    0x688E, 2,
    0x688F, 2,
    0x6890, 2,
    0x6881, 2,
    0x6882, 2,
    0x6883, 2,
    0x6884, 2,
    0, 0,
    0x6885, 2,
    0x6886, 1,
    0x6887, 2,
    0x6888, 1,
    0x6889, 2,
    0x688A, 1,
    0x688B, 2,
    0x688C, 1,
    0, 0,
    0x688D, 2,
    0x688E, 1,
    0x688F, 2,
    0x6890, 1,
    0x6881, 2,
    0x6882, 1,
    0x6883, 2,
    0x6884, 1,
    0, 0,
    0x6819, 2,
    0x681A, 2,
    0x681B, 2,
    0x681C, 2,
    0x681D, 2,
    0x681E, 2,
    0x681F, 2,
    0x6820, 2,
    0x6821, 2,
    0x6822, 2,
    0x6823, 2,
    0x6824, 2,
    0x6825, 2,
    0x6826, 2,
    0x6827, 2,
    0x6828, 2,
    -0x20, 0,
    0x6819, 1,
    0x681A, 1,
    0x681B, 1,
    0x681C, 1,
    0x681D, 1,
    0x681E, 1,
    0x681F, 1,
    0x6820, 1,
    0x6821, 1,
    0x6822, 1,
    0x6823, 1,
    0x6824, 1,
    0x6825, 1,
    0x6826, 1,
    0x6827, 1,
    0x6828, 1,
    -0x20, 0,
    0x6816, 0x000F,
    0x6817, 4,
    0x6818, 4,
    0x6819, 4,
    0, 0,
};

s16 D_800E1BE0[] = {
    0x6842, 6,
    0x6841, 6,
    0x6854, 6,
    0x6841, 6,
    -0x8, 0,
};

s16 D_800E1BF4[] = {
    0x682C, 2,
    0x682D, 3,
    0, 0,
};

s16 D_800E1C00[] = {
    0x682E, 3,
    0x682F, 3,
    0x6830, 3,
    0x6831, 4,
    0x6832, 5,
    0x6833, 6,
    0, 0,
};

s16 D_800E1C1C[] = {
    0x6834, 5,
    0x6835, 6,
    0x6836, 0x0800,
    0, 0,
};

s16 D_800E1C2C[] = {
    0x6837, 2,
    0x6838, 3,
    0, 0,
    0x682C, 3,
    0x682D, 2,
    0x682E, 2,
    0x682F, 3,
    0x6830, 4,
    0x682F, 4,
    0x682E, 3,
    0, 0,
};

s16 D_800E1C58[] = {
    0x6838, 3,
    0x6837, 2,
    0x6836, 2,
    0x6835, 3,
    0x6834, 4,
    0x6835, 4,
    0x6836, 3,
    0, 0,
};

s16 D_800E1C78[] = {
    0x6837, 1,
    0x6838, 2,
    0, 0,
};

s16 D_800E1C84[] = {
    0x68B3, 2,
    0x68B2, 3,
    0x68B1, 4,
    0x68B2, 3,
    0x68B3, 3,
    0, 0,
};

s16 D_800E1C9C[] = {
    0x68B3, 2,
    0x68B4, 3,
    0x68B5, 4,
    0x68B4, 3,
    0x68B3, 3,
    0, 0,
};

s16 D_800E1CB4[] = {
    0x6877, 2,
    0x6878, 3,
    0x6877, 2,
    0, 0,
};

s16 D_800E1CC4[] = {
    0x689C, 2,
    0x689D, 1,
    0x689E, 1,
    0x689F, 1,
    0x68A0, 1,
    0x68A1, 1,
    0x68A2, 1,
    0x68A3, 2,
    0, 0,
};

s16 D_800E1CE8[] = {
    0x68A4, 2,
    0x68A5, 1,
    0x68A6, 1,
    0x68A7, 1,
    0x68A8, 1,
    0x68A9, 1,
    0x689A, 1,
    0x689B, 2,
    0, 0,
};

s16 D_800E1D0C[] = {
    0x683E, 3,
    0x683F, 3,
    0x6840, 3,
    0x6839, 3,
    0x683A, 3,
    0x683B, 3,
    0x683C, 3,
    0x683D, 3,
    0, 0,
};

s16 D_800E1D30[] = {
    0x683E, 3,
    0x683D, 3,
    0x683C, 3,
    0x683B, 3,
    0x683A, 3,
    0x6839, 3,
    0x6840, 3,
    0x683F, 3,
    0, 0,
};

s16 D_800E1D54[] = {
    0x6838, 6,
    0x686A, 5,
    0x6869, 4,
    0x6868, 4,
    0x6867, 4,
    0, 0,
    0x6838, 2,
    0x686A, 2,
    0x6869, 2,
    0x6868, 2,
    0x6867, 2,
    0, 0,
};

s16 D_800E1D84[] = {
    0x684E, 2,
    0, 0,
};

s16 D_800E1D8C[] = {
    0x6867, 6,
    0x6868, 5,
    0x6869, 4,
    0x686A, 4,
    0x6801, 4,
    0, 0,
};

s16 D_800E1DA4[] = {
    0x6867, 4,
    0x6868, 3,
    0x6869, 2,
    0x686A, 2,
    0, 0,
};

s16 D_800E1DB8[] = {
    0x68C6, 2,
    0x68C7, 2,
    0x68C8, 3,
    0x68C9, 1,
    0, 0,
};

s16 D_800E1DCC[] = {
    0x68C9, 3,
    0x68C8, 4,
    0x68C7, 3,
    0x6800, 8,
    0, 0,
    0x68DA, 6,
    0x68C7, 6,
    0, 0,
};

s16 D_800E1DEC[] = {
    0x68DA, 5,
    0x68DB, 6,
    0x68DA, 4,
    0x68D0, 6,
    -0x8, 0,
};

s16 D_800E1E00[] = {
    0x68CA, 2,
    0x68CB, 2,
    0x68DA, 2,
    0, 0,
};

s16 D_800E1E10[] = {
    0x68C6, 2,
    0x68D3, 2,
    0x68D4, 3,
    0x68D5, 1,
    0, 0,
};

s16 D_800E1E24[] = {
    0x68D5, 3,
    0x68D4, 4,
    0x68D3, 3,
    0x6800, 8,
    0, 0,
};

s16 D_800E1E38[] = {
    0x68D7, 2,
    0x68D8, 2,
    0x68DA, 2,
    0, 0,
};

s16 D_800E1E48[] = {
    0x68C6, 2,
    0x68DA, 2,
    0x68DB, 3,
    0x68DC, 1,
    0, 0,
};

s16 D_800E1E5C[] = {
    0x68DC, 3,
    0x68DB, 4,
    0x68DA, 3,
    0x6800, 8,
    0, 0,
};

s16 D_800E1E70[] = {
    0x68DD, 2,
    0x68DB, 2,
    0x68DA, 2,
    0, 0,
};

s16 D_800E1E80[] = {
    0x6877, 3,
    0x6878, 3,
    0x6879, 4,
    0x687A, 4,
    0x687B, 3,
    0x687C, 2,
    0x687D, 3,
    0x687E, 4,
    0x687F, 4,
    0x6880, 4,
    0, 0,
};

s16 D_800E1EAC[] = {
    0x6845, 5,
    0x6846, 5,
    0, 0,
};

s16 D_800E1EB8[] = {
    0x68D3, 8,
    0x68DA, 6,
    0x68CF, 4,
    0, 0,
};

s16 D_800E1EC8[] = {
    0x68D0, 4,
    0x68D1, 6,
    0x68D2, 6,
    0, 0,
    0x68D3, 4,
    0x68DA, 3,
    0x68CF, 2,
    0, 0,
    0x68D0, 2,
    0x68D1, 3,
    0x68D2, 3,
    0, 0,
};

s16 D_800E1EF8[] = {
    0x684B, 3,
    0x684C, 2,
    0x684D, 2,
    0, 0,
};

s16 D_800E1F08[] = {
    0x68AA, 2,
    0x68AB, 2,
    0x68AC, 3,
    0x68AB, 2,
    0x68AA, 2,
    0x684D, 2,
    0, 0,
};

s16 D_800E1F24[] = {
    0x684D, 4,
    0x684C, 3,
    0x684B, 2,
    0, 0,
};

s16 D_800E1F34[] = {
    0x684F, 3,
    0x6850, 2,
    0x6851, 2,
    0, 0,
};

s16 D_800E1F44[] = {
    0x6850, 2,
    0x684F, 3,
    0x6850, 2,
    0x6851, 2,
    0, 0,
};

s16 D_800E1F58[] = {
    0x6850, 3,
    0x684F, 2,
    0, 0,
};

s16 D_800E1F64[] = {
    0x6907, 4,
    0x6908, 3,
    0x6909, 2,
    0x690A, 3,
    0x690B, 4,
    0x690A, 3,
    0x6909, 2,
    0x6908, 3,
    -0x10, 0,
};

s16 D_800E1F88[] = {
    0x682E, 3,
    0x682F, 3,
    0x682E, 3,
    0x682F, 3,
    0x682E, 4,
    0x682F, 4,
    0x682E, 5,
    0x682F, 5,
    0x682E, 6,
    0x682F, 6,
    0, 0,
};

s16 D_800E1FB4[] = {
    0x6842, 2,
    0x6841, 2,
    0x6854, 2,
    0x6841, 2,
    0x6842, 4,
    0x6841, 4,
    0x6854, 4,
    0x6841, 4,
    0x6842, 6,
    0x6841, 6,
    0, 0,
    0x6853, 1,
    0, 0,
    0x6852, 3,
    0x6853, 3,
    0x6854, 3,
    0x6841, 3,
    0x6842, 3,
    0x6843, 3,
    0x6844, 3,
    -0xE, 0,
    0x6845, 3,
    0x6846, 3,
    0x6847, 3,
    0x6848, 3,
    0x6849, 3,
    0x684A, 3,
    -0xE, 0,
};

s16 D_800E2024[] = {
    0x6852, 5,
    0x6853, 4,
    0x6854, 3,
    0, 0,
};

s16 D_800E2034[] = {
    0x6855, 3,
    0x6856, 3,
    0x6857, 4,
    0, 0,
};

s16 D_800E2044[] = {
    0x6858, 4,
    0x6859, 3,
    0x685A, 3,
    0x685B, 3,
    0x685C, 3,
    0, 0,
};

s16 D_800E205C[] = {
    0x6853, 3,
    0x6852, 2,
    0x6802, 2,
    0, 0,
};

s16 D_800E206C[] = {
    0x6852, 2,
    0x6853, 2,
    0x6854, 2,
    0x6855, 2,
    0x6856, 2,
    0x6857, 2,
    0x6858, 2,
    0x6859, 2,
    0x685A, 2,
    0x685B, 2,
    0x685C, 2,
    0, 0,
};

s16 D_800E209C[] = {
    0x6845, 2,
    0x6846, 2,
    0x6847, 2,
    0x6848, 2,
    0x6849, 2,
    0x684A, 2,
    0x685D, 2,
    0x685E, 2,
    0x685F, 2,
    0, 0,
};

s16 D_800E20C4[] = {
    0x686B, 4,
    0x686C, 4,
    0x686D, 4,
    0x686E, 5,
    0x686F, 5,
    0x6870, 6,
    0, 0,
};

s16 D_800E20E0[] = {
    0x6871, 4,
    0x6872, 4,
    0x6873, 4,
    0x6874, 5,
    0x6875, 5,
    0x6876, 6,
    0, 0,
};

s16 D_800E20FC[] = {
    0x6860, 2,
    0x6861, 2,
    0x6862, 2,
    0x6863, 2,
    0x6864, 2,
    0x6865, 2,
    0x6866, 3,
    0x6867, 3,
    0x6868, 3,
    0x6869, 3,
    0x686A, 3,
    0, 0,
    0x685F, 3,
    0x685E, 3,
    0x685D, 3,
    0, 0,
    0x6845, 3,
    0x6846, 2,
    0x6847, 3,
    0x6846, 2,
    -0x8, 0,
};

s16 D_800E2150[] = {
    0x6892, 2,
    0x6893, 2,
    0x6894, 2,
    0x6895, 2,
    0x6896, 3,
    0x6897, 4,
    0, 0,
};

s16 D_800E216C[] = {
    0x6897, 4,
    0x6896, 3,
    0x6895, 2,
    0x6894, 2,
    0x6893, 2,
    0x6892, 2,
    0x6891, 1,
    0, 0,
    0x1026, 8,
    0x1028, 5,
    0x102A, 8,
    0x1028, 5,
    -0x8, 0,
    0x1026, 3,
    0x1028, 4,
    0x102A, 1,
    0, 0,
    0x102A, 3,
    0x1028, 4,
    0x1026, 1,
    0, 0,
    0x690C, 8,
    0x690D, 8,
    0x690E, 8,
    0x690D, 8,
    -0x8, 0,
};

s16 D_800E21D4[] = {
    0x6907, 7,
    0x6908, 4,
    0x6909, 3,
    0x690A, 4,
    0x690B, 7,
    0x690A, 4,
    0x6909, 3,
    0x6908, 4,
    -0x10, 0,
    0x6907, 4,
    0x6908, 4,
    0x6909, 4,
    0x690A, 5,
    0x690B, 6,
    0x690A, 5,
    0x6909, 4,
    0x6908, 4,
    0x6907, 4,
    0x6906, 4,
    0x6905, 4,
    0x6904, 5,
    0x6903, 6,
    0x6904, 5,
    0x6905, 4,
    0x6906, 4,
    -0x20, 0,
};

s16 D_800E223C[] = {
    0x682C, 7,
    0x682D, 3,
    0x682E, 5,
    0x682D, 4,
    -0x8, 0,
};

s16 D_800E2250[] = {
    0x6895, 4,
    0x6896, 4,
    0x6897, 6,
    0x6898, 8,
    0x6897, 6,
    0, 0,
};

s16 D_800E2268[] = {
    0x6864, 0x0018,
    0x6865, 0x0010,
    -0x4, 0,
};

s16 D_800E2274[] = {
    0x682C, 7,
    0x682D, 3,
    0x682E, 5,
    0x682D, 4,
    0x682C, 7,
    0x682D, 3,
    0x682E, 5,
    0x682D, 4,
    0x682C, 7,
    0x682D, 3,
    0x682E, 5,
    0x682D, 4,
    0, 0,
};

s16 D_800E22A8[] = {
    0x6815, 3,
    0x6816, 1,
    0, 0,
};

s16 D_800E22B4[] = {
    0x6817, 2,
    0x6818, 2,
    0x685D, 2,
    0x685E, 2,
    0x685F, 2,
    0, 0,
};

s16 D_800E22CC[] = {
    0x6813, 2,
    0x6814, 2,
    0x6815, 2,
    0x6816, 2,
    0x6817, 2,
    0x6818, 2,
    0x6845, 3,
    0x6846, 2,
    0x6847, 3,
    0x6846, 2,
    -0x8, 0,
};

s16 D_800E22F8[] = {
    0x6845, 0x003C,
    0x6846, 8,
    0x6845, 0x0064,
    0x6846, 8,
    0x6845, 8,
    0x6846, 8,
    -0xC, 0,
};

s16 D_800E2314[] = {
    0x68BA, 4,
    0x68BB, 2,
    0x68BC, 2,
    0x68BD, 4,
    0x68BC, 2,
    0x68BB, 2,
    -0xC, 0,
};

s16 D_800E2330[] = {
    0x6819, 0x0050,
    0x681A, 4,
    0x681B, 4,
    0x681C, 4,
    0x681D, 4,
    0x681C, 4,
    0x681D, 4,
    0x681C, 4,
    0x681D, 4,
    0x681C, 4,
    0x681B, 4,
    0x681A, 4,
    -0x18, 0,
};

s16 D_800E2364[] = {
    0x6814, 0x000C,
    0x6815, 0x000C,
    -0x4, 0,
    0, 0,
};

s16 D_800E2374[] = {
    0x6842, 5,
    0x6841, 5,
    0x6854, 5,
    0x6841, 5,
    0x6852, 5,
    0x6853, 4,
    0x6852, 3,
    0x6853, 3,
    0x6854, 3,
    0x6855, 3,
    0x6856, 3,
    0, 0,
};

s16 D_800E23A4[] = {
    0x6857, 3,
    0x6858, 3,
    0x6859, 3,
    0x685A, 3,
    0x685B, 3,
    0x685C, 3,
    0, 0,
};

s16 D_800E23C0[] = {
    0x6921, 3,
    0x6920, 3,
    0x691F, 3,
    0, 0,
};

s16 D_800E23D0[] = {
    0x691F, 3,
    0x6920, 3,
    0x6921, 3,
    0, 0,
    0x6920, 8,
    0x691F, 3,
    0x6920, 8,
    0x691F, 3,
    0, 0,
};

s16 D_800E23F4[] = {
    0x6917, 3,
    0x6918, 3,
    0x6919, 3,
    0x691A, 3,
    0x691B, 3,
    0x691C, 3,
    0x691D, 3,
    0x691E, 3,
    -0x10, 0,
};

s16 D_800E2418[] = {
    0x690C, 6,
    0x690D, 4,
    0x690E, 6,
    0x690D, 4,
    -0x8, 0,
    0x690F, 6,
    0x6910, 3,
    0x6911, 4,
    0x6912, 6,
    0x6913, 4,
    0x6914, 3,
    0x6915, 6,
    0x6916, 3,
    0, 0,
};

s16 D_800E2450[] = {
    0x6921, 3,
    0x6920, 3,
    0x691F, 3,
    0x690F, 6,
    -0x2, 0,
};

s16 D_800E2464[] = {
    0x6921, 3,
    0x6920, 4,
    0x691F, 5,
    0x690F, 8,
    0x6910, 4,
    0x6911, 4,
    0x6912, 6,
    0x6913, 3,
    0x6914, 3,
    0x6915, 3,
    0x6916, 4,
    0x6915, 3,
    0x6914, 6,
    0x6913, 3,
    -0xE, 0,
};

s16 D_800E24A0[] = {
    0x6911, 6,
    0x6910, 6,
    0x690F, 8,
    0, 0,
};

s16 D_800E24B0[] = {
    0x682C, 2,
    0x682D, 3,
    0x682E, 3,
    0x682F, 3,
    0x6830, 3,
    0x6831, 4,
    0x6832, 5,
    0x6833, 5,
    0x6834, 4,
    0x6835, 4,
    0x6836, 3,
    0x6837, 2,
    0x6838, 3,
    0, 0,
    0, 0,
};

s16 D_800E24EC[] = {
    GINDEX_CLANBLOCKSQAURE, 0x000A,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 1), 6,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 2), 0x000A,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 1), 6,
    -0x8, 0,
};

s16 D_800E2500[] = {
    GINDEX_CLANBLOCKSQAURE, 5,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 1), 3,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 2), 5,
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 1), 3,
    0, 0,
};

s16 D_800E2514[] = {
    GINDEX_CLANPOT, 0x000A,
    GRAPHIC_FRAME(CLANPOT, 1), 6,
    GRAPHIC_FRAME(CLANPOT, 2), 0x000A,
    GRAPHIC_FRAME(CLANPOT, 1), 6,
    -0x8, 0,
};

s16 D_800E2528[] = {
    GINDEX_SPIKEBALL, 5,
    GRAPHIC_FRAME(SPIKEBALL, 1), 3,
    GRAPHIC_FRAME(SPIKEBALL, 2), 5,
    GRAPHIC_FRAME(SPIKEBALL, 1), 3,
    -0x8, 0,
    GINDEX_CLANBOMB, 0x000A,
    GRAPHIC_FRAME(CLANBOMB, 1), 6,
    GRAPHIC_FRAME(CLANBOMB, 2), 0x000A,
    GRAPHIC_FRAME(CLANBOMB, 1), 6,
    -0x8, 0,
};

s16 D_800E2550[] = {
    GINDEX_CLANBALL, 0x000A,
    GRAPHIC_FRAME(CLANBALL, 1), 6,
    GRAPHIC_FRAME(CLANBALL, 2), 0x000A,
    GRAPHIC_FRAME(CLANBALL, 1), 6,
    -0x8, 0,
};

s16 D_800E2564[] = {
    0x304C, 2,
    0, 0,
    0x304C, 7,
    0x304E, 7,
    -0x4, 0,
};

s16 D_800E2578[] = {
    0x304C, 3,
    0x304E, 3,
    -0x4, 0,
};

s16 D_800E2584[] = {
    GINDEX_CLANBLOBSTATUE, 0x000A,
    GRAPHIC_FRAME(CLANBLOBSTATUE, 1), 8,
    GRAPHIC_FRAME(CLANBLOBSTATUE, 2), 0x000A,
    GRAPHIC_FRAME(CLANBLOBSTATUE, 1), 8,
    -0x8, 0,
};

s16 D_800E2598[] = {
    GINDEX_TAIKO, 0x000A,
    GRAPHIC_FRAME(TAIKO, 1), 5,
    GRAPHIC_FRAME(TAIKO, 2), 0x000A,
    GRAPHIC_FRAME(TAIKO, 1), 5,
    -0x8, 0,
    0, 0,
};
