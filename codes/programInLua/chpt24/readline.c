extern "C"
{
    #include <stdio.h>
    #include <string.h>

    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

int main()
{
    char buff[256] = {0};
    int error;
    lua_State *L = luaL_newstate(); // 打开Lua
    luaL_openlibs(L); // 打开标准库
    while (fgets(buff, sizeof(buff), stdin) != NULL)
    {
        error = luaL_loadbuffer(L, buff, strlen(buff), "line")
            || lua_pcall(L, 0, 0, 0);
        if (error)
        {
            fprintf(stderr, "%s", lua_tostring(L, -1));
            lua_pop(L, 1); // 从栈中弹出错误消息
        }
    }

    lua_close(L);
    return 0;
}
