#include "common.h"
#include "actor.h"
#include "function_symbols.h"

// "overlay 4" code for "Taurus", "Aster's Tryke", "Sasquatch Beta", "Moley Cow",
//  "Aster's Maze", "Ghost Catcher", and  several unused scenes.

extern s16 D_800D2920;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D28F8;
extern u16 D_800BE5D4;
extern u32 D_800D28FC;
extern s16 D_801BD8C2_7E6A22;
extern u32 D_80137458;

extern void func_80034D80(u16 actor_index, u16* vals); // BUG: incorrect prototype!
extern void func_80064AA0(s32 arg0, void* arg1);
extern s16 func_8005DEFC(void);

void func_801BA674_7E37D4(u16 arg0, u16 arg1, u16 arg2);


u32 D_801BBEB0_7E5010[] = {
    0x00000090, 0x00000000, 0x00000000, 0x2700FF00,
};

u32 D_801BBEC0_7E5020[] = {
    0x20000180, 0x1F502130, 0x0470010D, 0xFFD00000,
    0x20000180, 0x1F502130, 0x0470010D, 0x00000000,
};

u32 D_801BBEE0_7E5040[] = {
    0x01600180, 0x00D02130, 0x0470010D, 0xFFF00000,
};

u32 D_801BBEF0_7E5050[] = {
    0x09600180, 0x08D02130, 0x0470010D, 0xFFE00000,
};

u32 D_801BBF00_7E5060[] = {
    0x14500190, 0x13C02130, 0x0470010D, 0xFFE00000,
};

u32 D_801BBF10_7E5070[] = {
    0x00100D70, 0x013E0020, 0x0E000145, 0x00200E20,
    0x01450020, 0x0DB00145, 0x00200D90, 0x01450020,
    0x0E400145, 0x00100E60, 0x014E0020, 0x0EA00155,
    0x02D00E40, 0x0157001A, 0x1A30015E, 0x00191100,
    0x015E0014, 0x1E60015E, 0x00141C90, 0x015E0018,
    0x1BD0015E, 0x001A1C20, 0x015E001A, 0x1A90015E,
    0x00141C70, 0x015E0030, 0x0DD8015E, 0x001A1B80,
    0x015E001A, 0x1B30015E, 0x001A1AE0, 0x015E001A,
    0x0AD0015E, 0x001A0AF0, 0x015E001A, 0x0A70015E,
    0x001A0AB0, 0x015E001A, 0x0A90015E, 0x001A09B0,
    0x015E001A, 0x0930015E, 0x001A0990, 0x015E001A,
    0x0970015E, 0x001A0950, 0x015E001A, 0x0870015E,
    0x001A0850, 0x015E001A, 0x07D0015E, 0x001A07B0,
    0x015E001A, 0x05D0015E, 0x001A05F0, 0x015E001A,
    0x05B0015E, 0x001A0450, 0x015E001A, 0x0430015E,
    0x001A0410, 0x015E001A, 0x0270015E, 0x001A0290,
    0x015E001A, 0x00F0015E, 0x001A0190, 0x015E001A,
    0x02B0015E, 0x001A0250, 0x015E001A, 0x0230015E,
    0x001A0210, 0x015E001A, 0x01F0015E, 0x001A01D0,
    0x015E001A, 0x01B0015E, 0x001A0170, 0x015E001A,
    0x0150015E, 0x001A0130, 0x015E001A, 0x0110015E,
    0x001A00D0, 0x015E001A, 0x00B0015E, 0x02C00DF0,
    0x015F02B0, 0x0DC0015F, 0x002A0C90, 0x0165002A,
    0x0C700165, 0x002A0C50, 0x0165002A, 0x1A700165,
    0x002A1A50, 0x01650029, 0x0EC00165, 0x002A0CD0,
    0x0165002A, 0x0CB00165, 0x02D00EA0, 0x01670064,
    0x1DF0016D, 0x001A08D0, 0x016E001A, 0x03F0016E,
    0x00190EE0, 0x016E001A, 0x0890016E, 0x001A0B10,
    0x016E001A, 0x02D0016E, 0x00100CF0, 0x016E001A,
    0x0830016E, 0x001A07F0, 0x016E0017, 0x1480016E,
    0x00171460, 0x016E001A, 0x0790016E, 0x00180610,
    0x016E001A, 0x09D0016E, 0x00171440, 0x016E0017,
    0x1420016E, 0x001A0590, 0x016E0019, 0x17E0016E,
    0x001A0470, 0x016E001A, 0x0F60016E, 0x002910B0,
    0x01750047, 0x14080175, 0x02D80450, 0x017702E8,
    0x07B00177, 0x02D80870, 0x017702D0, 0x0CD00177,
    0x02D805F0, 0x017702E8, 0x04100177, 0x02E80850,
    0x017702D8, 0x02B00177, 0x02D80AF0, 0x017702D3,
    0x0EC00177, 0x02E805B0, 0x017702D8, 0x07D00177,
    0x02D809B0, 0x0177001A, 0x0570017E, 0x001A09F0,
    0x017E0019, 0x1120017E, 0x001A0490, 0x017E001A,
    0x0770017E, 0x00141CB0, 0x017E001A, 0x0A60017E,
    0x001A0810, 0x017E001A, 0x0630017E, 0x001A03D0,
    0x017E0014, 0x1E80017E, 0x001A08B0, 0x017E001A,
    0x0C30017E, 0x001A02F0, 0x017E001A, 0x0B30017E,
    0x02B31E60, 0x017F02B0, 0x1100017F, 0x02CA0A80,
    0x017F02B2, 0x1C90017F, 0x02CA0C50, 0x017F0029,
    0x10600185, 0x02E803F0, 0x018702D8, 0x06100187,
    0x02D80890, 0x018702E8, 0x08D00187, 0x02E80830,
    0x018702D8, 0x0B100187, 0x02E80790, 0x018702E8,
    0x05900187, 0x02D80470, 0x018702D8, 0x02D00187,
    0x02D809D0, 0x018702D8, 0x07F00187, 0x00500E60,
    0x01880052, 0x1FB00188, 0x00641DF0, 0x018D0014,
    0x1D60018E, 0x001A0550, 0x018E001A, 0x04B0018E,
    0x001A03B0, 0x018E0034, 0x1DD8018E, 0x001A0F80,
    0x018E001A, 0x0310018E, 0x00141DC0, 0x018E0014,
    0x1DA0018E, 0x001919E0, 0x018E0019, 0x1800018E,
    0x00141D80, 0x018E0017, 0x14A0018E, 0x02BA0F60,
    0x018F02B5, 0x17E0018F, 0x02B71480, 0x018F0051,
    0x0CA00190, 0x00291010, 0x019502E8, 0x03D00197,
    0x02E80570, 0x019702D8, 0x04900197, 0x02D802F0,
    0x01970051, 0x0C700198, 0x00500EA0, 0x01980050,
    0x0E800198, 0x00500EE0, 0x01980014, 0x1EA0019E,
    0x001A0650, 0x019E0019, 0x1140019E, 0x001A0530,
    0x019E001A, 0x0330019E, 0x001A04D0, 0x019E001A,
    0x0C10019E, 0x001A0750, 0x019E001A, 0x0B50019E,
    0x00141CD0, 0x019E0019, 0x1820019E, 0x001A0390,
    0x019E02B4, 0x1E80019F, 0x02B31120, 0x019F02B8,
    0x0B30019F, 0x02C80770, 0x019F02CA, 0x0C30019F,
    0x02B21CB0, 0x019F02B8, 0x0630019F, 0x005010B0,
    0x01A00029, 0x0FC001A5, 0x00200E30, 0x01A50029,
    0x0FA001A5, 0x02D51800, 0x01A702E8, 0x055001A7,
    0x02D80310, 0x01A702E8, 0x03B001A7, 0x02D804B0,
    0x01A702D3, 0x0F8001A7, 0x00500F00, 0x01A80050,
    0x0F2001A8, 0x00510CD0, 0x01A80064, 0x1DF001AD,
    0x001A0510, 0x01AE001A, 0x037001AE, 0x001A04F0,
    0x01AE0017, 0x14C001AE, 0x001A0350, 0x01AE0014,
    0x1D4001AE, 0x001919C0, 0x01AE02C3, 0x19E001AF,
    0x02B414A0, 0x01AF02B2, 0x1DD001AF, 0x02C21D60,
    0x01AF0050, 0x106001B0, 0x02D80330, 0x01B702E8,
    0x053001B7, 0x02E80390, 0x01B702D8, 0x04D001B7,
    0x00510C48, 0x01B80010, 0x0E5001BE, 0x001A0730,
    0x01BE001A, 0x067001BE, 0x001A0C10, 0x01BE0019,
    0x116001BE, 0x001A0B70, 0x01BE0019, 0x184001BE,
    0x00141EC0, 0x01BE02B8, 0x065001BF, 0x02B51820,
    0x01BF02B3, 0x114001BF, 0x02C80750, 0x01BF02B0,
    0x0E3001BF, 0x02B80B50, 0x01BF02B4, 0x1EA001BF,
    0x00501010, 0x01C00064, 0x1DF001CD, 0x001919A0,
    0x01CE001A, 0x0CB001CE, 0x00191860, 0x01CE0014,
    0x1D2001CE, 0x00171510, 0x01CE02C2, 0x1D4001CF,
    0x02C319C0, 0x01CF0050, 0x0FC001D0, 0x02D51840,
    0x01D70010, 0x0E7001DE, 0x00141EE0, 0x01DE001A,
    0x0C1001DE, 0x00191180, 0x01DE001A, 0x071001DE,
    0x001A0690, 0x01DE001A, 0x0B9001DE, 0x02B80670,
    0x01DF02B3, 0x1EC001DF, 0x02BA0B70, 0x01DF02C8,
    0x073001DF, 0x02B00E50, 0x01DF02B3, 0x116001DF,
    0x00510C60, 0x01E00064, 0x1DF001ED, 0x001A0CD0,
    0x01EE0017, 0x153001EE, 0x00191880, 0x01EE0010,
    0x0F5001EE, 0x00191980, 0x01EE02C3, 0x19A001EF,
    0x02BA0CB0, 0x01EF02B4, 0x151001EF, 0x02B51860,
    0x01EF0051, 0x0C8001F8, 0x001911A0, 0x01FE0019,
    0x18A001FE, 0x001A0C30, 0x01FE001A, 0x06B001FE,
    0x001A06F0, 0x01FE0014, 0x1BB001FE, 0x00100E90,
    0x01FE02B3, 0x118001FF, 0x02C80710, 0x01FF02B8,
    0x069001FF, 0x02BA0C10, 0x01FF02B0, 0x0E7001FF,
    0x02D91880, 0x02070064, 0x1DF0020D, 0x00131F20,
    0x020E001A, 0x0CD0020E, 0x00171550, 0x020E0010,
    0x0F30020E, 0x00191960, 0x020E0019, 0x18C0020E,
    0x02B41530, 0x020F02C3, 0x1980020F, 0x00510CA0,
    0x02100029, 0x19400215, 0x00241CD0, 0x02150029,
    0x19200215, 0x00291900, 0x02150029, 0x18E00215,
    0x02D918A0, 0x02170062, 0x1E60021D, 0x00141BD0,
    0x021E0019, 0x11C0021E, 0x00100EB0, 0x021E001A,
    0x0C50021E, 0x02B41BB0, 0x021F02B0, 0x0E90021F,
    0x02BA0C30, 0x021F02B3, 0x11A0021F, 0x00641DF0,
    0x022D001A, 0x0CD0022E, 0x00100F10, 0x022E0010,
    0x0ED0022E, 0x00141CB0, 0x022E0017, 0x15A0022E,
    0x02C21CD0, 0x022F0020, 0x0EF00235, 0x02D00EB0,
    0x02370062, 0x1E60023D, 0x001911E0, 0x023E0014,
    0x1BF0023E, 0x02B21BD0, 0x023F02B3, 0x11C0023F,
    0x00511CE0, 0x02480051, 0x1BB00248, 0x00641DF0,
    0x024D001A, 0x0CD0024E, 0x001715C0, 0x024E0014,
    0x1C90024E, 0x02C21CB0, 0x024F02B4, 0x15A0024F,
    0x00621E60, 0x025D0014, 0x1C10025E, 0x00191200,
    0x025E02B3, 0x11E0025F, 0x02B21BF0, 0x025F0051,
    0x1BD00268, 0x00511CC0, 0x02680064, 0x1DF0026D,
    0x001715E0, 0x026E001A, 0x0CD0026E, 0x02B415C0,
    0x026F0062, 0x1E60027D, 0x00191220, 0x027E0014,
    0x1C30027E, 0x02B31200, 0x027F02B2, 0x1C10027F,
    0x00241DF0, 0x02850051, 0x1BF00288, 0x001A0CD0,
    0x028E0017, 0x1630028E, 0x00621E60, 0x029D0014,
    0x1DC0029E, 0x00191240, 0x029E02B3, 0x1220029F,
    0x02C31DE0, 0x029F0017, 0x165002AE, 0x02B41630,
    0x02AF0062, 0x1E6002BD, 0x00191260, 0x02BE0014,
    0x1DA002BE, 0x02C31DC0, 0x02BF02B9, 0x124002BF,
    0x00241C90, 0x02C50017, 0x167002CE, 0x02B41650,
    0x02CF0014, 0x1CB002DE, 0x00141D60, 0x02DE0014,
    0x1CF002DE, 0x00191280, 0x02DE0014, 0x1CD002DE,
    0x00141D40, 0x02DE0014, 0x1D8002DE, 0x02B31C90,
    0x02DF02C3, 0x1DA002DF, 0x02B91260, 0x02DF0043,
    0x1D2802E5, 0x00431D08, 0x02E50043, 0x1D1802E5,
    0x00511C80, 0x02F00019, 0x12A002FE, 0x02B91280,
    0x02FF0051, 0x1CA00310, 0x00000000,
};

u32 D_801BC7FC_7E595C[] = {
    0x00000091, 0x00000000, 0x00000001, 0x27000000,
    0x00920100, 0x014A0006, 0x0000000D, 0x00000093,
    0x0100014A, 0x02060000, 0x000D0000, 0x00501FE0,
    0x015C0080, 0x00302702, 0xFF000000, 0xFF000000,
};

u32 D_801BC83C_7E599C[] = {
    0x00000091, 0x00000000, 0x00000001, 0x27000000,
    0x00920100, 0x014A0006, 0x0000000D, 0x00000093,
    0x0100014A, 0x02060000, 0x000D0000, 0x00300088,
    0x014C0000, 0x0000270D, 0x00000031, 0x00000000,
    0x00000000, 0x27110000, 0x00400220, 0x01700000,
    0x00002609, 0x00000041, 0x00000000, 0x00000000,
    0x001D0000, 0x00421E28, 0x01700000, 0x00002712,
    0x00000050, 0x20D0015C, 0x00800030, 0x2702FF00,
};

u32 D_801BC8BC_7E5A1C[] = {
    0x01A0018C, 0x01000320, 0x01FC011C, 0xFFD0FFC9,
};

u32 D_801BC8CC_7E5A2C[] = {
    0x00000030, 0x0282016E, 0x00000000, 0x1100FF00,
};

u32 D_801BC8DC_7E5A3C[] = {
    0x0000008F, 0x020801B8, 0x00810000, 0x0032FF00,
};

u32 D_801BC8EC_7E5A4C[] = {
    0x01820E7C, 0x00F20612, 0x0EEC0E0C, 0x0000FFC2,
};

u32 D_801BC8FC_7E5A5C[] = {
    0x03B80E5E, 0x00010000,
};

u32 D_801BC904_7E5A64[] = {
    0x03B80C5E, 0x00010000,
};

u32 D_801BC90C_7E5A6C[] = {
    0x03480A5E, 0x00010000,
};

u32 D_801BC914_7E5A74[] = {
    0x03B8085E, 0x00010000,
};

u32 D_801BC91C_7E5A7C[] = {
    0x0BB80E5E, 0x00010000,
};

u32 D_801BC924_7E5A84[] = {
    0x0BB80C5E, 0x00010000,
};

u32 D_801BC92C_7E5A8C[] = {
    0x0B480A5E, 0x00010000,
};

u32 D_801BC934_7E5A94[] = {
    0x0BB8085E, 0x00010000,
};

u32 D_801BC93C_7E5A9C[] = {
    0x02240220, 0x0EB80063, 0x0380085D, 0x00640B80,
    0x085D0021, 0x09900865, 0x00220190, 0x08650031,
    0x0D88086E, 0x00310978, 0x086E0032, 0x0588086E,
    0x00320178, 0x086E0064, 0x0B80087D, 0x00630380,
    0x087D0031, 0x0998087E, 0x00320198, 0x087E0042,
    0x01880885, 0x00410988, 0x08850031, 0x0D88088E,
    0x00320588, 0x088E0032, 0x0178088E, 0x00310978,
    0x088E0031, 0x0998089E, 0x00320568, 0x089E0032,
    0x0198089E, 0x00310D68, 0x089E00F0, 0x038008A2,
    0x00F00B80, 0x08A20022, 0x058008A5, 0x00220180,
    0x08A50021, 0x0D8008A5, 0x00210980, 0x08A50050,
    0x03C008A8, 0x00500BC0, 0x08A80050, 0x0C0008A8,
    0x00500BE0, 0x08A80050, 0x040008A8, 0x005003E0,
    0x08A80065, 0x0B800A5D, 0x00620380, 0x0A5D0022,
    0x01900A65, 0x00210D80, 0x0A650021, 0x09900A65,
    0x00420178, 0x0A650041, 0x09780A65, 0x00220580,
    0x0A650031, 0x0D680A6E, 0x00320568, 0x0A6E0062,
    0x03800A7D, 0x00650B80, 0x0A7D0031, 0x0D880A7E,
    0x00310998, 0x0A7E0032, 0x01980A7E, 0x00320588,
    0x0A7E0022, 0x05700A85, 0x00210D70, 0x0A850021,
    0x09800A85, 0x00220180, 0x0A850031, 0x09780A9E,
    0x00320568, 0x0A9E0032, 0x01780A9E, 0x00310D68,
    0x0A9E00E0, 0x03800AA2, 0x00E00B80, 0x0AA20022,
    0x05800AA5, 0x00210D80, 0x0AA50022, 0x01900AA5,
    0x00210990, 0x0AA50051, 0x0B200AA8, 0x00510340,
    0x0AA80051, 0x03200AA8, 0x00510300, 0x0AA80051,
    0x0B000AA8, 0x00510B40, 0x0AA80060, 0x03800C5D,
    0x00660B80, 0x0C5D0022, 0x05700C65, 0x00410D88,
    0x0C650042, 0x05880C65, 0x00210D70, 0x0C650042,
    0x01980C65, 0x00410998, 0x0C650060, 0x03800C7D,
    0x00660B80, 0x0C7D0032, 0x05880C7E, 0x00310998,
    0x0C7E0032, 0x01980C7E, 0x00310D88, 0x0C7E0021,
    0x0D700C85, 0x00210980, 0x0C850022, 0x01800C85,
    0x00220570, 0x0C850031, 0x09780C9E, 0x00320198,
    0x0C9E0032, 0x05880C9E, 0x00320178, 0x0C9E0031,
    0x0D880C9E, 0x00310998, 0x0C9E00F0, 0x03800CA2,
    0x00F00B80, 0x0CA20022, 0x05700CA5, 0x00210D70,
    0x0CA50050, 0x0BC00CA8, 0x00500C00, 0x0CA80050,
    0x03E00CA8, 0x00500BE0, 0x0CA80050, 0x03C00CA8,
    0x00500400, 0x0CA801A1, 0x02980E10, 0x01A10298,
    0x0E3001B1, 0x02980E50, 0x019102D0, 0x0E580181,
    0x02900E58, 0x01940260, 0x0E580174, 0x02400E58,
    0x017102B0, 0x0E580184, 0x02200E58, 0x00670B80,
    0x0E5D0061, 0x03800E5D, 0x01C40258, 0x0E6001C1,
    0x02C80E60, 0x00410978, 0x0E650041, 0x09980E65,
    0x00220570, 0x0E650021, 0x0D700E65, 0x00410D88,
    0x0E650042, 0x01780E65, 0x00420198, 0x0E650042,
    0x05880E65, 0x00310988, 0x0E6E0032, 0x01880E6E,
    0x01B102C8, 0x0E7001B4, 0x02580E70, 0x01940260,
    0x0E780184, 0x02200E78, 0x019102D0, 0x0E780181,
    0x02900E78, 0x017102B0, 0x0E780174, 0x02400E78,
    0x00610380, 0x0E7D0067, 0x0B800E7D, 0x00310D68,
    0x0E7E0032, 0x05680E7E, 0x01C10298, 0x0E8001C4,
    0x02280E80, 0x00220580, 0x0E850021, 0x0D800E85,
    0x00320188, 0x0E8E0031, 0x09880E8E, 0x01B40228,
    0x0E9001B1, 0x02980E90, 0x01940260, 0x0E980174,
    0x02400E98, 0x017102B0, 0x0E980191, 0x02D00E98,
    0x01810290, 0x0E980184, 0x02200E98, 0x00310D88,
    0x0E9E0032, 0x05880E9E, 0x01C102C8, 0x0EA001C4,
    0x02580EA0, 0x00F00380, 0x0EA200F0, 0x0B800EA2,
    0x00210D70, 0x0EA50022, 0x05700EA5, 0x00220180,
    0x0EA50021, 0x09800EA5, 0x00510C00, 0x0EA80051,
    0x04000EA8, 0x005103E0, 0x0EA80051, 0x0BE00EA8,
    0x00510BC0, 0x0EA80051, 0x03C00EA8, 0x01B40258,
    0x0EB001B1, 0x02C80EB0, 0x004A0218, 0x0EB50194,
    0x02600EB8, 0x019102D0, 0x0EB80181, 0x02900EB8,
    0x017102B0, 0x0EB80174, 0x02400EB8, 0x00000000,
};

u32 D_801BCD6C_7E5ECC[] = {
    0x00000030, 0x01400E3E, 0x10800030, 0x27020000,
    0x00480320, 0x0E5E10A0, 0x32020077, 0x00000049,
    0x03200C5E, 0x10903206, 0x00770000, 0x004A03E0,
    0x0A5E10A0, 0x32050077, 0x0000004B, 0x0320085E,
    0x10C03208, 0x00770000, 0x004C0B20, 0x0E5E10A0,
    0x32030077, 0x0000004D, 0x0B200C5E, 0x10C03204,
    0x00770000, 0x004E0BE0, 0x0A5E10A0, 0x32070077,
    0x0000004F, 0x09C8083E, 0x10C03209, 0x00770000,
    0x00500148, 0x0E880003, 0x00810032, 0x00000051,
    0x05B80E88, 0x00030080, 0x00320000, 0x005205B8,
    0x0C880003, 0x008B0032, 0x00000053, 0x01480C88,
    0x0003008B, 0x00320000, 0x00540148, 0x0A880003,
    0x00880032, 0x00000055, 0x05B80A88, 0x0003008A,
    0x00320000, 0x005605B8, 0x08880003, 0x00890032,
    0x00000057, 0x01480888, 0x0003008F, 0x00320000,
    0x00580948, 0x0E880003, 0x008D0032, 0x00000059,
    0x0DB80E88, 0x00030083, 0x00320000, 0x005A0DB8,
    0x0C880003, 0x00810032, 0x0000005B, 0x09480C88,
    0x00030085, 0x00320000, 0x005C0948, 0x0A880003,
    0x00820032, 0x0000005D, 0x0DB80A88, 0x00030081,
    0x00320000, 0x005E0DB8, 0x08880003, 0x00870032,
    0x00000060, 0x03480E88, 0x00040000, 0x00320000,
    0x00610348, 0x0C880004, 0x00000032, 0x00000062,
    0x03B80A88, 0x00040000, 0x00320000, 0x00630348,
    0x08880004, 0x00000032, 0x00000064, 0x0B480E88,
    0x00040000, 0x00320000, 0x00650B48, 0x0C880004,
    0x00000032, 0x00000066, 0x0BB80A88, 0x00040000,
    0x00320000, 0x00670482, 0x0E880000, 0x0000001C,
    0x00000068, 0x02820C88, 0x02000000, 0x001C0000,
    0x006A0482, 0x0A887100, 0x000A007A, 0x0000006B,
    0x0C820E88, 0x03000000, 0x001C0000, 0x006C0A82,
    0x0C880400, 0x0000001C, 0x0000006D, 0x0C820A88,
    0x00000000, 0x001CFF00,
};

u32 D_801BCF74_7E60D4[] = {
    0x0182017C, 0x00F20712, 0x01EC010C, 0x0030FFC2,
};

u32 D_801BCF84_7E60E4[] = {
    0x0182017C, 0x00F20212, 0x01EC010C, 0x0030FFC2,
};

u16 D_801BCF94_7E60F4[] = {
    0x0049, 0x004C, 0x0051, 0x0056, 0x0059, 0x005C, 0x0061, 0x0062,
    0x0063, 0x0067, 0x006B, 0x0070, 0x0072, 0x0000,
};

u32 D_801BCFB0_7E6110[] = {
    0x00630510, 0x014D00F0, 0x06100152, 0x00E003D0,
    0x015200F0, 0x04F00152, 0x00C303A6, 0x015C00C3,
    0x0376015C, 0x00C00346, 0x015C00C0, 0x0316015C,
    0x00C30316, 0x018C00C3, 0x03A6018C, 0x00C00376,
    0x018C00C0, 0x0346018C, 0x00500580, 0x01900051,
    0x02800190, 0x00C00376, 0x01BC00C3, 0x031601BC,
    0x00C003A6, 0x01BC00C3, 0x034601BC, 0x00500580,
    0x01D00051, 0x028001D0, 0x00500580, 0x02100051,
    0x02800210, 0x00F009C0, 0x024200F0, 0x03500242,
    0x00F009A0, 0x024200F0, 0x03A00242, 0x00E00130,
    0x02420073, 0x01F80246, 0x00730308, 0x02460052,
    0x09E80248, 0x00130210, 0x024E0013, 0x02F0024E,
    0x001307B0, 0x024E02C3, 0x0230024F, 0x02B302D0,
    0x024F0051, 0x02800250, 0x00500580, 0x025000F2,
    0x09E00252, 0x007301F8, 0x02560073, 0x03080256,
    0x00730308, 0x02660073, 0x01F80266, 0x001307D0,
    0x026E0013, 0x07B0026E, 0x00130790, 0x026E00E0,
    0x02100272, 0x00F002F0, 0x02720073, 0x01F80276,
    0x00730308, 0x02760050, 0x07600280, 0x002207B0,
    0x02850051, 0x07700288, 0x00510750, 0x02880051,
    0x02800290, 0x00510870, 0x02900050, 0x05800290,
    0x00500748, 0x02980050, 0x07780298, 0x00530760,
    0x02980022, 0x07B002A5, 0x00510750, 0x02A80051,
    0x077002A8, 0x00500760, 0x02B00032, 0x08A802BE,
    0x001807B0, 0x02BE0050, 0x058002D0, 0x00510870,
    0x02D00032, 0x08A802DE, 0x001807B0, 0x02DE0032,
    0x08A802FE, 0x00500580, 0x03100051, 0x08700310,
    0x003208A8, 0x031E0042, 0x08A80335, 0x00E00430,
    0x03420072, 0x09080346, 0x007207F8, 0x03460074,
    0x04F80346, 0x00740608, 0x03460012, 0x0810034E,
    0x001405F0, 0x034E0012, 0x08F0034E, 0x001208D0,
    0x034E0014, 0x0510034E, 0x02B208B0, 0x034F02B4,
    0x05D0034F, 0x02C40530, 0x034F02C2, 0x0830034F,
    0x00500580, 0x03500051, 0x08700350, 0x00720908,
    0x03560074, 0x06080356, 0x007207F8, 0x03560074,
    0x04F80356, 0x00720908, 0x03660074, 0x06080366,
    0x007207F8, 0x03660074, 0x04F80366, 0x00E00810,
    0x037200F0, 0x05F00372, 0x00F008F0, 0x037200E0,
    0x05100372, 0x007404F8, 0x03760072, 0x09080376,
    0x00740608, 0x03760072, 0x07F80376, 0x00500580,
    0x03900051, 0x08700390, 0x00000000,
};

u32 D_801BD23C_7E639C[] = {
    0x00000030, 0x0160014E, 0x10800030, 0x27020000,
    0x00480190, 0x013E0000, 0x00002704, 0x00000072,
    0x02E00188, 0x00000100, 0x27050000, 0x00860318,
    0x01580000, 0x00002605, 0x00000087, 0x03480158,
    0x00000000, 0x26050000, 0x00880348, 0x01880000,
    0x00002605, 0x00000089, 0x03780188, 0x00000000,
    0x26050000, 0x008A0378, 0x01B80000, 0x00002605,
    0x0000008B, 0x03A801B8, 0x00000000, 0x26050000,
    0x004903A0, 0x02480000, 0x04002705, 0x0000004A,
    0x015E0244, 0x00000000, 0x00430000, 0x004B016E,
    0x02440001, 0x00000043, 0x0000004C, 0x016E0254,
    0x00000201, 0x27050000, 0x004D0192, 0x02340002,
    0x00000043, 0x0000004E, 0x01A20234, 0x00030000,
    0x00430000, 0x004F01C2, 0x02340001, 0x00000043,
    0x00000050, 0x0440015E, 0x10803200, 0x27030000,
    0x00510460, 0x015E0000, 0x03002705, 0x00000052,
    0x05100158, 0x00000002, 0x00570000, 0x00530670,
    0x01340000, 0x00000043, 0x00000054, 0x06800134,
    0x00010000, 0x00430000, 0x005506A0, 0x013E0000,
    0x00102606, 0x00000056, 0x06A00146, 0x00000200,
    0x27050000, 0x005C0430, 0x03480000, 0x04012705,
    0x00000057, 0x04680344, 0x00020000, 0x00430000,
    0x00580498, 0x033E0000, 0x00002606, 0x00000059,
    0x04980346, 0x00000601, 0x27050000, 0x005A04B0,
    0x03340003, 0x00000043, 0x0000005B, 0x04C8033E,
    0x00000000, 0x26060000, 0x00820670, 0x03907300,
    0x150C001C, 0x0080005D, 0x06C003A0, 0x02000000,
    0x00490080, 0x005E06E0, 0x03800100, 0x00000049,
    0x0080005F, 0x07400380, 0x00000000, 0x00490080,
    0x00600760, 0x03A00200, 0x00000049, 0x00000061,
    0x07100370, 0x00000500, 0x27050000, 0x007107D0,
    0x034E1180, 0x32020077, 0x00000062, 0x08C00300,
    0x00000100, 0x27050000, 0x006309C0, 0x03900000,
    0x00002706, 0x00000067, 0x09900290, 0x00000000,
    0x27060000, 0x006B09C0, 0x02900000, 0x00002706,
    0x0000006F, 0x0730023E, 0x10801203, 0x00770000,
    0x00700788, 0x02980000, 0x01012705, 0x0000008C,
    0x02800170, 0x00000000, 0x27010000, 0x008D0580,
    0x01700000, 0x00012701, 0x0000008E, 0x08700270,
    0x00000002, 0x2701FF00,
};

u32 D_801BD4B4_7E6614[] = {
    0x00000030, 0x0160014E, 0x00800030, 0x27020000,
    0x00480190, 0x013E0000, 0x80002704, 0xFF000000,
};

u16 D_801BD4D4_7E6634[] = {
    0x8400, 0x0000, 0x0000, 0x0063, 0x0067, 0x8400, 0x0000, 0x0000,
    0x0063, 0x0067, 0x8400, 0x0000, 0x0000, 0x0063, 0x0067, 0x8400,
    0x0000, 0x0000, 0x0063, 0x0067, 0x8400, 0x0000, 0x0000, 0x0063,
    0x0067, 0x8400, 0x0000, 0x0000, 0x0063, 0x0067, 0x8400, 0x0000,
    0x0000, 0x0063, 0x0067, 0x8400, 0x0000, 0x0000, 0x0063, 0x0067,
    0x8400, 0x0000, 0x0000, 0x0063, 0x0067, 0x8400, 0x0000, 0x0000,
    0x0063, 0x0067, 0x8400, 0x0000, 0x0000, 0x0063, 0x0067, 0x8400,
    0x0000, 0x0000, 0x0063, 0x0067, 0x8400, 0x0000, 0x0000, 0x0063,
    0x0067, 0xFFFF,
};

u32 D_801BD558_7E66B8[] = {
    0x0000008F, 0x01F001A0, 0x00810000, 0x0032FF00,
};

u32 D_801BD568_7E66C8[] = {
    0x01A0017C, 0x01000300, 0x01EC010C, 0xFFB0FFC0,
};

u32 D_801BD578_7E66D8[] = {
    0x00000030, 0x01E00154, 0x00500011, 0x0D00FF00,
    0x0000008F, 0x020001A0, 0x00010000, 0x0032FF00,
};

u32 D_801BD598_7E66F8[] = {
    0x04000198, 0xFF701700, 0x02080128, 0xFFE0FFEB,
};

u32 D_801BD5A8_7E6708[] = {
    0x00000090, 0x039001A6, 0xFE030004, 0x000D0000,
    0x00910390, 0x01A60403, 0x0004000D, 0x00000092,
    0x039001A6, 0xFE030008, 0x000D0000, 0x00930390,
    0x01A60403, 0x0008000D, 0xFF000000,
};

u32 D_801BD5E4_7E6744[] = {
    0x0000008F, 0x04400184, 0x00010000, 0x1402FF00,
    0x00000090, 0x039001A6, 0xFE030004, 0x000D0000,
    0x00910390, 0x01A60403, 0x0004000D, 0x00000092,
    0x039001A6, 0xFE030008, 0x000D0000, 0x00930390,
    0x01A60403, 0x0008000D, 0xFF000000,
};

u32 D_801BD630_7E6790[] = {
    0x00000030, 0x00000000, 0x00000002, 0x0075FF00,
};

u16 D_801BD8C0_7E6A20;


void func_801B9900_7E2A60(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    if (gActors[0].posY.whole < -0x30) {
        D_800D291C = arg0 - 0x70;
        gStageCinemaState += arg3;
        return;
    }

    if ((gActors[0].posX.whole < -0x40) || (gActors[0].posX.whole >= 0x41)) {
        D_800D2920 = arg1 - 0x90;
        D_800D2924 = arg2 + 0x90;
        gStageCinemaState -= arg3;
    }
}

void func_801B99B8_7E2B18(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    if (gActors[0].posY.whole >= 0x31) {
        D_800D2918 = arg0 + 0x70;
        gStageCinemaState += arg3;
        return;
    }

    if ((gActors[0].posX.whole < -0x40) || (gActors[0].posX.whole >= 0x41)) {
        D_800D2920 = arg1 - 0x90;
        D_800D2924 = arg2 + 0x90;
        gStageCinemaState -= arg3;
    }
}

void func_801B9A70_7E2BD0(u16 arg0, u16 arg1, u16 arg2) {
    s16 position_y = gScreenPosCurrentY.whole;

    if (position_y >= arg1) {
        D_800D291C = arg1 - 0x70;
        gStageCinemaState += arg2;
        return;
    }

    if (arg0 >= position_y) {
        D_800D2918 = arg0 + 0x70;
        gStageCinemaState -= arg2;
        return;
    }

    if ((gActors[0].posX.whole < -0x60) || (gActors[0].posX.whole >= 0x61)) {
        if (position_y < ((arg0 + arg1) / 2)) {
            D_800D2918 = arg0 + 0x70;
            gStageCinemaState -= arg2;
            return;
        }

        D_800D291C = arg1 - 0x70;
        gStageCinemaState += arg2;
    }
}

void func_801B9B8C_7E2CEC(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    gStageCinemaState++;
}

void func_801B9BC0_7E2D20(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    gStageCinemaState--;
}

void func_801B9BF4_7E2D54(u16 arg0, u16 arg1, u16 arg2) {
    if (((arg0 - 0x20) < gScreenPosCurrentX.whole) && (gScreenPosCurrentX.whole < (arg0 + 0x20))) {
        func_801B9BC0_7E2D20(arg0);
        return;
    }

    if (((arg1 - 0x20) < gScreenPosCurrentX.whole) && (gScreenPosCurrentX.whole < (arg1 + 0x20))) {
        func_801B9B8C_7E2CEC(arg1);
        return;
    }

    if ((gActors[0].posY.whole < -0x60) || (gActors[0].posY.whole >= 0x61)) {
        if (arg2 != 0) {
            if (gScreenPosCurrentX.whole < ((arg0 + arg1) / 2)) {
                func_801B9B8C_7E2CEC(arg1);
            }
            else {
                func_801B9BC0_7E2D20(arg0);
            }
        }
        else {
            if (gScreenPosCurrentX.whole < ((arg0 + arg1) / 2)) {
                func_801B9BC0_7E2D20(arg0);
            }
            else {
                func_801B9B8C_7E2CEC(arg1);
            }
        }
    }
}

void func_801B9D38_7E2E98(void* arg0, u16* arg1, void* arg2) {
    func_80045FA4(arg0, arg1);
    Actor_ClearRange_30To90();
    Actor_LoadSpawnTable(D_801BBEB0_7E5010);
    Actor_LoadSpawnTable(arg2);
}

void func_801B9D78_7E2ED8(void) {
    if (func_80048CE4() == 1) {
        if (gActors[0].stateUpper == 4) {
            s32 actor_index = func_8003FF68(0, 1.0f);

            gActors[actor_index].posX.whole = gActors[0].posX.whole;
            gActors[actor_index].posY.whole = -0x50;
            gActors[actor_index].palette_18C = (u16*)0x8022D568;
            Sound_PlaySfxAtActor2(0xAA, 0);
            func_8005739C(0, 0x64);

            if (gActors[0].health >= 0) {
                D_800D28F0 = D_800D28E4;
                gStageCinemaState = 4;
                D_800D28E4 = 0x61;
            }
            else if (gGameState == GAMESTATE_GAMEPLAY) {
                gGameState = GAMESTATE_CONTINUE;
                gGameStateSubState = 0;
            }
        }
    }
}

void func_801B9E74_7E2FD4(void) {
    switch (gStageCinemaState) {
        case 0:
            if (gSkipStageIntro) {
                gStageCinemaState = 0x1000;
                break;
            }

            gStageCinemaState++;
            Palette_AdjustScenePalettes(8, 8, -2, 2, 2, -0x1F, 8, 0, -0x1F);
            func_801B9D38_7E2E98(D_801BBEC0_7E5020, (u16*)D_801BBF10_7E5070, D_801BC7FC_7E595C);
            D_800BE5F4.unk_00_s32 = 4;
            D_800BE544 = 0x8000;
            D_800D2928 = 0;
            D_800D292C = 0;
            D_800D2930 = 0;
            do { } while (0);
            break;

        case 1:
            if (!(gActors[0x50].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[0x50].flags |= ACTOR_FLAG_FLIPPED;
            }
            if (func_80046D5C() != 0) {
                D_800D28F8 = 4;
                gStageCinemaState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if (gStageCinemaState == 3) {
                D_800D2938 = 0;
                gStageCinemaState = 3;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800BE5F4.unk_00_s32 = 4;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            gStageCinemaState++;
            D_800BE544 = 0;

        case 4:
            gStageCinemaState++;
            switch (D_800D2928) {
                case 0:
                    func_801B9D38_7E2E98(D_801BBEE0_7E5040, (u16*)-7, D_801BC83C_7E599C);
                    break;

                case 1:
                    func_801B9D38_7E2E98(D_801BBEF0_7E5050, (u16*)-7, D_801BC83C_7E599C);
                    break;

                case 2:
                    func_801B9D38_7E2E98(D_801BBF00_7E5060, (u16*)-7, D_801BC83C_7E599C);
                    break;
            }

            gActors[0x40].posX.whole = gActors[0].posX.whole + 0x40;
            gActors[0x40].posY.whole = gActors[0].posY.whole - 0x10;
            gActors[0x30].posX.whole = gActors[0].posX.whole - 0xF0;

            if (D_800D292C != 0) {
                D_800BE5F4.unk_00_s32 = 0xA;
            }

        case 5:
            if (func_80046D5C() != 0) {
                gStageCinemaState++;
                D_800D28FC |= 8;
                D_800D292C = 1;
                gCannotPause = FALSE;
            }
            break;

        case 6:
            switch (D_800D2928) {
                case 0:
                    if (((gScreenPosCurrentX.whole + (gActors + 0)->posX.whole) >= 0x940) &&
                        ((gScreenPosCurrentX.whole + (gActors + 0x40)->posX.whole) >= 0x940)) {
                        D_800D2928++;
                    }
                    break;

                case 1:
                    if (((gScreenPosCurrentX.whole + (gActors + 0)->posX.whole) >= 0x1430) &&
                        ((gScreenPosCurrentX.whole + (gActors + 0x40)->posX.whole) >= 0x1430)) {
                        D_800D2928++;
                    }
                    break;

                case 2:
                    break;
            }

            func_801B9D78_7E2ED8();

            if ((gScreenPosCurrentX.whole + (gActors + 0)->posX.whole) >= 0x2070) {
                gActors[0].flags_098 |= 0x10000;

                if ((gScreenPosCurrentX.whole + (gActors + 0x41)->posX.whole) < 0x1FD8) {
                    gActors[0x40].flags = 0;
                    gActors[0x41].flags = 0;
                }

                D_800BE5F4.unk_00_s32 = 2;
                D_801373E0.unk_20 = gButton_DRight;
                D_801373E0.unk_24 = gButton_DRight;
                D_800D2920 = 0x1FF0;
                D_800BE568.whole = D_800D2920;
                D_800D28F8 = 4;

                if (((gScreenPosCurrentX.whole + (gActors + 0x41)->posX.whole) >= 0x2000) &&
                    ((gScreenPosCurrentY.whole + (gActors + 0x41)->posY.whole) >= 0x140) &&
                    (gActors[0x40].flags & 2)) {
                    gStageCinemaState = 7;
                }
                else {
                    gStageCinemaState = 0xA;
                }

                gCannotPause = TRUE;
            }
            break;

        case 7:
            gActors[0x40].velocityX.raw = Math_ApproachS32(gActors[0x40].velocityX.raw, 0, 0x4000);
            gActors[0].velocityX.raw = 0;
            D_800D2930++;
            if (D_800D2930 < 3) {
                D_801373E0.unk_20 = gButton_DRight;
                D_801373E0.unk_24 = 0;
            }
            func_80047714(2, 1, 1, 8);
            if (gStageCinemaState == 8) {
                D_800BE5F4.unk_00_s32 = 2;
            }
            break;

        case 8:
            D_800D2938 = 0;
            gStageCinemaState = 0xC;
            D_800D28F0 = 0;
            D_800D28E4 = 0x64;
            break;

        case 0xA:
            gActors[0x40].velocityX.raw = Math_ApproachS32(gActors[0x40].velocityX.raw, 0, 0x4000);
            gActors[0].velocityX.raw = 0;
            func_80047714(3, 1, 1, 0xB);
            if (gStageCinemaState == 0xB) {
                D_800BE5F4.unk_00_s32 = 2;
            }
            break;

        case 0xB:
            D_800D2938 = 0;
            D_800D2928 = 0;
            D_800D292C = 0;
            gStageCinemaState = 0x1000;
            D_800D28F0 = D_800D28E4;
            D_800D28E4 = 0x61;
            break;

        case 0xC:
            D_800BE5F4.unk_00_s32 = 2;
            break;

        case 0x1000:
            gStageCinemaState = 3;
            D_800D2928 = 0;
            D_800D292C = 0;
            D_800D2930 = 0;
            break;
    }

    Camera_UpdateViewBounds();

    if (gActors[0x40].flags & 2) {
        if ((gScreenPosCurrentY.whole + (gActors + 0x40)->posY.whole) < 0x81) {
            gActors[0x40].flags = 0;
            gActors[0x41].flags = 0;
        }
    }
}

void func_801BA534_7E3694(void) {
    switch (gStageCinemaState) {
        case 0:
            Palette_AdjustScenePalettes(4, 4, 8, -10, -10, -4, -4, -4, 8);
            func_80045FA4(D_801BC8BC_7E5A1C, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BC8CC_7E5A2C);
            gStageCinemaState++;

        case 1:
            if (func_80046D5C() != 0) {
                gStageCinemaState++;
                D_800D28FC |= 8;
            }
            break;

        case 2:
            break;

        case 3:
            func_8003D628(0);
            Sound_StartFade(0x81, 0x168);
            gStageCinemaState++;
            break;

        case 4:
            break;

        case 5:
            func_80064AA0(1, D_801BC8DC_7E5A3C);
            gStageCinemaState++;
            break;

        case 6:
            break;

        case 7:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA674_7E37D4(u16 arg0, u16 arg1, u16 arg2) {
    s32 snapped;
    u16 index;
    s16 saved[8];

    gScreenPosCurrentX.whole = arg0;
    gActors[0].posX.whole = 0;
    gScreenPosCurrentY.whole = arg1;
    gActors[0].posY.whole = -0x3E;
    gPlayerPosX.whole = gScreenPosCurrentX.whole + gActors->posX.whole;
    gPlayerPosY.whole = gScreenPosCurrentY.whole + gActors->posY.whole;

    if (gStageCinemaState != 0) {
        for (index = 0; index < 8; index++) {
            saved[index] = gActors[index + 0x48].unk_188_s16;
        }

        Actor_ClearRange_30To90();
    }

    Actor_LoadSpawnTable(D_801BBEB0_7E5010);
    Actor_LoadSpawnTable(D_801BCD6C_7E5ECC);

    if (arg2 == 0x2C) {
        gActors[0x4F].timer_110 = gActors[0x4F].timer_110 - 4096.0f;
    }

    if (gStageCinemaState != 0) {
        for (index = 0; index < 8; index++) {
            if (saved[index] == 0) {
                snapped = gActors[index + 0x48].timer_110;
                gActors[index + 0x48].timer_110 = snapped & ~0x7F;
            }
        }
    }

    gActors[0x60].unk_190 = (s32)D_801BC8FC_7E5A5C;
    gActors[0x61].unk_190 = (s32)D_801BC904_7E5A64;
    gActors[0x62].unk_190 = (s32)D_801BC90C_7E5A6C;
    gActors[0x63].unk_190 = (s32)D_801BC914_7E5A74;
    gActors[0x64].unk_190 = (s32)D_801BC91C_7E5A7C;
    gActors[0x65].unk_190 = (s32)D_801BC924_7E5A84;
    gActors[0x66].unk_190 = (s32)D_801BC92C_7E5A8C;
    gActors[0x67].unk_190 = (s32)D_801BC934_7E5A94;

    if ((arg0 == 0x182) || (arg0 == 0x982)) {
        gActors[0].flags |= 0x20;
    }
    else {
        gActors[0].flags &= ~0x20;
    }

    if (arg0 < 0x800) {
        D_800D2920 = 0xF2;
        D_800D2924 = 0x612;
    }
    else {
        D_800D2920 = 0x8F2;
        D_800D2924 = 0xE12;
    }

    D_800D2918 = arg1 + 0x70;
    D_800D291C = arg1 - 0x70;
    D_800BE5F4.unk_00_s32 = 0xA;
    gStageCinemaState = 8;
    D_801BD8C0_7E6A20 = arg2;
}

void func_801BA950_7E3AB0(void) {
    switch (gStageCinemaState) {
        case 0:
            if (gSkipStageIntro) {
                gStageCinemaState = 0x1000;
                break;
            }

            Palette_AdjustScenePalettes(2, 4, -2, -8, -2, -8, -3, 3, -3);
            func_80045FA4(D_801BC8EC_7E5A4C, (u16*)D_801BC93C_7E5A9C);
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            gStageCinemaState = 1;
            D_800BE5F4.unk_00_s32 = 7;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                D_800D28F8 = 4;
                gStageCinemaState++;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if (gStageCinemaState == 3) {
                D_800BE5F4.unk_00_s32 = 5;
                D_800D28FC |= 8;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            gCannotPause = FALSE;
            gStageCinemaState = 0x10;
            break;

        case 8:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                gStageCinemaState = D_801BD8C0_7E6A20;
            }
            break;

        case 16:
            func_801B9BF4_7E2D54(0, 0x482, 0);
            break;

        case 17:
            func_801B9900_7E2A60(0xC7C, 0x182, 0x582, 1);
            break;

        case 18:
            func_801B9A70_7E2BD0(0xC7C, 0xE7C, 0xFFFF);
            break;

        case 19:
            func_801B99B8_7E2B18(0xE7C, 0x182, 0x582, 0xFFFF);
            break;

        case 20:
            func_801B9BF4_7E2D54(0x482, 0x282, 1);
            break;

        case 21:
            func_801B9900_7E2A60(0xA7C, 0x182, 0x582, 1);
            break;

        case 22:
            func_801B9A70_7E2BD0(0xA7C, 0xC7C, 0xFFFF);
            break;

        case 23:
            func_801B99B8_7E2B18(0xC7C, 0x182, 0x582, 0xFFFF);
            break;

        case 24:
            func_801B9BF4_7E2D54(0x282, 0x482, 0);
            break;

        case 25:
            func_801B9900_7E2A60(0x87C, 0x182, 0x582, 1);
            break;

        case 26:
            func_801B9A70_7E2BD0(0x87C, 0xA7C, 0xFFFF);
            break;

        case 27:
            func_801B99B8_7E2B18(0xA7C, 0x182, 0x582, 0xFFFF);
            break;

        case 28:
            func_801B9BF4_7E2D54(0x482, 0, 1);
            break;

        case 32:
            func_801B9BF4_7E2D54(0, 0xC82, 0);
            break;

        case 33:
            func_801B9900_7E2A60(0xC7C, 0x982, 0xD82, 1);
            break;

        case 34:
            func_801B9A70_7E2BD0(0xC7C, 0xE7C, 0xFFFF);
            break;

        case 35:
            func_801B99B8_7E2B18(0xE7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 36:
            func_801B9BF4_7E2D54(0xC82, 0xA82, 1);
            break;

        case 37:
            func_801B9900_7E2A60(0xA7C, 0x982, 0xD82, 1);
            break;

        case 38:
            func_801B9A70_7E2BD0(0xA7C, 0xC7C, 0xFFFF);
            break;

        case 39:
            func_801B99B8_7E2B18(0xC7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 40:
            func_801B9BF4_7E2D54(0xA82, 0xC82, 0);
            break;

        case 41:
            func_801B9900_7E2A60(0x87C, 0x982, 0xD82, 1);
            break;

        case 42:
            func_801B9A70_7E2BD0(0x87C, 0xA7C, 0xFFFF);
            break;

        case 43:
            func_801B99B8_7E2B18(0xA7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 44:
            func_801B9BF4_7E2D54(0xC82, 0xA82, 1);
            break;

        case 45:
            func_801B9900_7E2A60(0x17C, 0x982, 0xD82, 1);
            break;

        case 46:
            if (gPlayerPosY.whole < 0x7E0) {
                gCannotPause = TRUE;
                D_800BE5D4 = 1;
                Sound_PlaySfx(0x3E);
                D_801BD8C2_7E6A22 = 0;
                gStageCinemaState++;
            }
            break;

        case 47: {
            s16 temp;
            s32 temp2;
            s32 temp3;

            D_801BD8C2_7E6A22++;
            temp = D_801BD8C2_7E6A22;
            temp3 = (s16)(temp / 0x18);
            temp2 = temp3;
            gActors[0x90].colorA = (temp / 4) + 0xB0 + (temp2 * 0);
            Palette_AdjustScenePalettes(2 - temp2, 4 - temp2, -2 - temp2, -8 - temp2, -2 - temp2, -8 - temp2,
                                        -3 - temp2, 3 - temp2, -3 - temp2);
            if (D_801BD8C2_7E6A22 >= 0x131) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x48);
            }
            break;
        }

        case 0x80:
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            break;

        case 0x81:
            func_801BA674_7E37D4(0x582, 0xE7C, 0x10);
            break;

        case 0x82:
            func_801BA674_7E37D4(0x582, 0xC7C, 0x14);
            break;

        case 0x83:
            func_801BA674_7E37D4(0x182, 0xC7C, 0x14);
            break;

        case 0x84:
            func_801BA674_7E37D4(0x182, 0xA7C, 0x18);
            break;

        case 0x85:
            func_801BA674_7E37D4(0x582, 0xA7C, 0x18);
            break;

        case 0x86:
            func_801BA674_7E37D4(0x582, 0x87C, 0x1C);
            break;

        case 0x87:
            func_801BA674_7E37D4(0x182, 0x87C, 0x1C);
            break;

        case 0x88:
            func_801BA674_7E37D4(0x982, 0xE7C, 0x20);
            break;

        case 0x89:
            func_801BA674_7E37D4(0xD82, 0xE7C, 0x20);
            break;

        case 0x8A:
            func_801BA674_7E37D4(0xD82, 0xC7C, 0x24);
            break;

        case 0x8B:
            func_801BA674_7E37D4(0x982, 0xC7C, 0x24);
            break;

        case 0x8C:
            func_801BA674_7E37D4(0x982, 0xA7C, 0x28);
            break;

        case 0x8D:
            func_801BA674_7E37D4(0xD82, 0xA7C, 0x28);
            break;

        case 0x8E:
            func_801BA674_7E37D4(0xD82, 0x87C, 0x2C);
            break;

        case 0x8F:
            func_801BA674_7E37D4(0x982, 0x87C, 0x2C);
            D_800BE56C.whole = 0xA12;
            D_800D2924 = D_800BE56C.whole;
            break;

        case 0x1000:
            func_80045FA4(D_801BC8EC_7E5A4C, (u16*)D_801BC93C_7E5A9C);
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            D_800BE5F4.unk_00_s32 = 5;
            gStageCinemaState = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                gStageCinemaState = 3;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

s32 func_801BB184_7E42E4(void) {
    u16 actor_index = D_801BCF94_7E60F4[0];
    u16 index = 1;

    while (actor_index != 0) {
        if (gActors[actor_index].state != 2) {
            return FALSE;
        }

        actor_index = D_801BCF94_7E60F4[index++];
    }

    return TRUE;
}

void func_801BB1F4_7E4354(void) {
    func_80045FA4(D_801BCF84_7E60E4, (u16*)D_801BCFB0_7E6110);
    Actor_LoadSpawnTable(D_801BBEB0_7E5010);
    Actor_LoadSpawnTable(D_801BD23C_7E639C);
    gActors[0].flags |= 0x20;
    D_800BE568.whole = 0xF2;
    D_800BE56C.whole = 0x712;
    D_800BE570.whole = 0x1EC;
    D_800BE574.whole = 0x10C;
    gStageCinemaState++;
}

void func_801BB28C_7E43EC(void) {
    if ((func_801BB184_7E42E4() != 0) && (gStageCinemaState < 0x800) && (D_800D28E4 < 0x61) 
      && (gGameState != GAMESTATE_CONTINUE) && (gActors[0].health >= 0)) {
        gStageCinemaState = 0x800;
    }

    switch (gStageCinemaState) {
        case 0:
            if (gSkipStageIntro) {
                gStageCinemaState = 0x1000;
                break;
            }

            Palette_AdjustScenePalettes(4, 4, 8, -10, -10, -4, -4, -4, 8);
            func_801BB1F4_7E4354();
            D_800BE5F4.unk_00_u32 = 7;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                D_800D28F8 = 4;
                gStageCinemaState++;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if (gStageCinemaState == 3) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28FC |= 8;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            func_80045F14(D_801BCF74_7E60D4);
            gCannotPause = FALSE;
            gStageCinemaState = 20;
            break;

        case 16:
            func_801B9BF4_7E2D54(0, 0x282, 0);
            break;

        case 17:
            func_801B9900_7E2A60(0x17C, 0x182, 0x382, 1);
            break;

        case 18:
            func_801B9A70_7E2BD0(0x17C, 0x27C, 0xFFFF);
            break;

        case 19:
            func_801B99B8_7E2B18(0x27C, 0x182, 0x682, 0xFFFF);
            break;

        case 20:
            func_801B9BF4_7E2D54(0x282, 0x582, 0);
            break;

        case 21:
            func_801B99B8_7E2B18(0x37C, 0x182, 0x682, 1);
            break;

        case 22:
            func_801B9A70_7E2BD0(0x17C, 0x37C, 1);
            break;

        case 23:
            func_801B9900_7E2A60(0x17C, 0x482, 0x982, 0xFFFF);
            break;

        case 24:
            func_801B9BF4_7E2D54(0x582, 0x882, 0);
            break;

        case 25:
            func_801B9900_7E2A60(0x27C, 0x482, 0x982, 1);
            break;

        case 26:
            func_801B9A70_7E2BD0(0x27C, 0x37C, 0xFFFF);
            break;

        case 27:
            func_801B99B8_7E2B18(0x37C, 0x782, 0x982, 0xFFFF);
            break;

        case 28:
            func_801B9BF4_7E2D54(0x882, 0, 1);
            break;

        case 0x800:
            Sound_StartFade(1, 0x60);
            gStageCinemaState++;
            break;

        case 0x801:
            if (gAudioFadeMode != 1) {
                if (D_800D28E4 < 0x61) {
                    if (gGameState != GAMESTATE_CONTINUE) {
                        if (gActors[0].health >= 0) {
                            D_800D2938 = 0;
                            D_800D28F0 = D_800D28E4;
                            D_800D28E4 = 0x61;
                            gStageCinemaState++;
                        }
                    }
                }
            }
            break;

        case 0x802:
            func_80045FA4(D_801BCF84_7E60E4, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD4B4_7E6614);
            func_80034D80(0x48, D_801BD4D4_7E6634);
            gActors[0].flags |= 0x20;
            D_800BE5F4.unk_00_s32 = 5;
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_GLOOMY);
            Camera_UpdateViewBounds();
            gStageCinemaState++;
            break;

        case 0x803:
            if (func_80046D5C() != 0) {
                D_800D28F8 = 4;
                func_8005DF40(0, 0xC);
                gStageCinemaState++;
            }
            break;

        case 0x804:
            func_80047714(4, 1, 2, 0x805);
            if (gStageCinemaState == 0x805) {
                SpawnGemRing(10);
                D_800D28FC |= 8;
                D_800D2928 = 0x40;
            }
            break;

        case 0x805:
            if ((u32)D_800D2928-- < 1U) {
                D_800BE5F4.unk_00_u32 = 5;
                func_80064AA0(0x3C, D_801BD558_7E66B8);
            }
            break;

        case 0x806:
        case 0x807:
            break;

        case 0x1000:
            func_801BB1F4_7E4354();
            D_800BE5F4.unk_00_u32 = 5;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                gStageCinemaState = 3;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

// state machine for intro/end of "Taurus!!"
void func_801BB85C_7E49BC(void) {
    switch (gStageCinemaState) {
        case 0:
            gCannotPause = TRUE;
            Palette_AdjustScenePalettes(2, 2, 6, 0, 0, -1, 0, 0, -6);
            Palette_AdjustRgb5551Array((u16*)0x80314548, (u16*)0x80314398, 0xD7, 0, 0, -5);
            func_80045FA4(D_801BD568_7E66C8, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD578_7E66D8);
            D_800BE5F4.unk_00_s32 = 7;
            if (!gSkipStageIntro) {
                gStageCinemaState = 1;
            }
            else {
                gStageCinemaState = 0x1000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                func_8005DF5C(1);
                gStageCinemaState = 2;
            }
            Cutscene_CheckSkipInput();
            break;

        case 2:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                gStageCinemaState = 3;
            }
            break;

        case 3:
            Cutscene_CheckSkipInput();
            break;

        case 4:
            func_8005DF5C(2);
            func_8005DF5C(3);
            func_8005DF5C(4);
            func_8005DF5C(5);
            func_8005DF5C(6);
            Cutscene_CheckSkipInput();
            gStageCinemaState = 5;
            break;

        case 5:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                gStageCinemaState = 10;
            }
            break;

        case 10:
            D_800BE5F4.unk_00_s32 = 5;
            gStageCinemaState = 20;
            D_800D28FC |= 8;

        case 20:
            gCannotPause = FALSE;
            if (gActors[0x30].health == 0) {
                Sound_StartFade(0x81, 0x3C);
                gStageCinemaState = 21;
            }
            break;

        case 21:
            if (gAudioFadeMode != 0x81) {
                D_800BE5F4.unk_00_u32 = 0x1F;
                Sound_PlayMusic(BGM_GET);
                gStageCinemaState = 22;
            }
            break;

        case 23:
            func_8005DF5C(7);
            func_8005DF5C(8);
            func_8005DF5C(9);
            func_8005DF5C(10);
            gStageCinemaState = 24;
            break;

        case 24:
            if (func_8005DEFC() == 0) {
                gStageCinemaState = 25;
            }
            break;

        case 25:
            if ((D_80137458 & 2) == 0) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x5B);
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BD568_7E66C8, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD578_7E66D8);
            D_800BE5F4.unk_00_s32 = 7;
            gStageCinemaState = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                func_800472D4();
            }
            break;

        case 0x1002:
            func_8004735C(0x14, 0);
            break;

        case 6:
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 22:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BBC00_7E4D60(void) {
    switch (gStageCinemaState) {
        case 0:
            if (gSkipStageIntro) {
                gStageCinemaState = 0x1000;
            }
            else {
                gStageCinemaState++;
                func_80046148(D_801BD598_7E66F8, (u16*)NULL);
                Actor_LoadSpawnTable(D_801BD5A8_7E6708);
                Actor_LoadSpawnTable(D_801BD5E4_7E6744);
                D_800BE544 = 0x8000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageCinemaState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 3:
            gStageCinemaState++;
            D_800D28FC |= 8;
            D_801373E0.unk_78 |= 1;
            gCannotPause = FALSE;
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;
            break;

        case 5:
            gStageCinemaState++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            gStageCinemaState++;
            Actor_LoadSpawnTable(D_801BD5A8_7E6708);
            break;

        case 9:
            gStageCinemaState = 0xC000;
            break;

        case 0x1000:
            gStageCinemaState++;
            func_80045FA4(D_801BD598_7E66F8, 0);
            Actor_LoadSpawnTable(D_801BD5A8_7E6708);
            Actor_LoadSpawnTable(D_801BD5E4_7E6744);
            gActors[0x8F].state = 0x10;
            D_800BE5F4.unk_00_s32 = 5;
            D_801373E0.unk_78 |= 1;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gStageCinemaState = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BD598_7E66F8, D_801BD630_7E6790);

        case 0xC001:
            if (func_80046D5C() != 0) {
                gStageCinemaState++;
            }
            break;

        case 4:
        case 6:
        case 8:
        case 0xC002:
            break;
    }
}
