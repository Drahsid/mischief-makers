typedef unsigned short uint16_t;
extern uint16_t gGameState;
extern void func_80001670();
extern void func_80007C8C();
extern void func_80012F98();
extern void func_80017800();
extern void func_8001817C();
extern void func_800188CC(void);
extern void func_800191B8(void);
extern void func_8001B460();
extern void func_8001D654();
extern void func_80021034();
extern void func_80021270();
extern uint16_t func_80022F48();
extern void func_800232A4();
void func_80001670(void)
{
  switch (gGameState)
  {
    if (!gGameState)
    {
    }

    case 0:
    {
      func_80022F48();
      break;
    }

    case 1:
    {
      func_80017800();
      break;
    }

    case 2:
    {
      func_8001817C();
      break;
    }

    case 3:
    {
      func_800188CC();
      break;
    }

    case 4:
    {
      func_800191B8();
      break;
    }

    case 5:
    {
      func_800232A4();
      break;
    }

    case 6:
    {
      func_80021034();
      break;
    }

    case 7:
    {
      func_80012F98();
      break;
    }

    case 8:
    {
      func_80388000();
      break;
    }

    case 9:
    {
      func_80388008();
      break;
    }

    case 10:
    {
      func_80021270();
      break;
    }

    case 11:
    {
      func_80007C8C();
      break;
    }

    case 12:
    {
      func_8001B460();
      break;
    }

    case 13:
    {
      func_8001D654();
      break;
    }

  }

}

