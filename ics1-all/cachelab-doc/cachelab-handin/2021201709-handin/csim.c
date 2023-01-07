/*author:2021201709 Li Junlin(李俊霖)
*/
#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

//保存每个cache line的信息
typedef struct Cache
{
    int valid;        //有效位
    int tag;          //标记位
    int time_stamp;   //时间戳,LRU算法
}CacheLine;

//二维数组cache[S][E]。S=2^s，set的个数；E是每个set里cache line个数。
CacheLine **Cache = NULL;
int Hits;
int Misses;
int Evicts;

void init(int S, int E)
{
    Cache = ( CacheLine**)malloc(sizeof( CacheLine* ) * S);
    for(int i = 0; i < S; i++)
    {
        Cache[i] = ( CacheLine* )malloc(sizeof( CacheLine )*E);
        for(int j = 0; j < E; j++){
            Cache[i][j].valid = 0;
            Cache[i][j].tag = -1;
            Cache[i][j].time_stamp = -1;
        }
    }
}
void destroy(int S, int E)
{
    for(int i = 0; i < S; i++)
        free(Cache[i]);
    free(Cache);
}
//查找是否命中，对于index组里的每一行，查看是否已存在缓存，存在则命中
int find_hit(int E, int index, int tag)
{
    for(int i = 0; i < E; i++)
    {
        if(Cache[index][i].tag == tag)
        {
            Cache[index][i].time_stamp = 0;
            Hits++;
            return 1;
        }
    }
    return 0;
}
//查找组内空行
int find_emptyline(int E, int index, int tag)
{
    for(int i = 0; i < E; i++)
    {
        if (Cache[index][i].valid == 0){
            Cache[index][i].time_stamp = 0;
            Cache[index][i].valid = 1;
            Cache[index][i].tag = tag;
            Misses++;
            return 1;
        }
    }
    return 0;
}
//LRU：记录自上次被访问以来所经历的时间t，当须淘汰时，选择t最大的予以淘汰。
void LRU(int E, int index, int tag)
{
    int max_stamp = -1;
    int max_stamp_index = -1;
    for(int i = 0; i < E; i++)
    {
        if(Cache[index][i].time_stamp > max_stamp)
        {
            max_stamp = Cache[index][i].time_stamp;
            max_stamp_index = i;
        }
    }
    Cache[index][max_stamp_index].tag = tag;
    Cache[index][max_stamp_index].time_stamp = 0;
    return;
}
//模拟cache   [address:tag/index/offset (t/s/b)]
void solve_Cache(uint64_t addr, int b, int s, int E)
{
    int mask = ((unsigned)(-1)) >> (64 - s);
    int index = (addr >> b) & mask;
    int tag = addr >> (b + s);

    //对于index组里的每一行，查看是否已存在缓存，若有，则hit++，且不再执行以下步骤
    if(find_hit(E, index, tag)) return;
    //查找组内空行，若有，则miss++，且不再执行以下步骤
    if(find_emptyline(E, index, tag)) return;

    //没有缓存，组内没有又空行 -> LRU替换  
    LRU(E, index, tag);
    Evicts++;
    Misses++;
    return;
}
//时间戳更新
//实现：对于有效的cache，每次访问时间戳都加1
void update_Time_stamp(int S, int E)
{
    for(int i = 0; i < S; i++)
    {
        for(int j = 0; j < E; j++)
        {
            if(Cache[i][j].valid == 1)
                Cache[i][j].time_stamp++;
        }
    }
}

int main(int argc, char* argv[])
{
    int s,E,b;
    int size;
    char *file_path;
    for(int i = 1; i < argc; i++)   //命令行数据提取
    {
        if (argv[i][0] == '-'){
            char flag = argv[i][1];
            switch (flag) {
                case 's': 
                    i++;
                    s = argv[i][0] -'0';
                    break;
                case 'E':
                    i++;
                    E = argv[i][0] -'0';
                    break;
                case 'b':
                    i++;
                    b = argv[i][0] -'0';
                    break;
                case 't':
                    i++;
                    file_path = argv[i];
                    break;
                default:
                    break;
            }
        }
        if(i > argc)
            break;
    }

    init(1 << s, E);

    FILE *file = fopen(file_path, "r");
    if(file == NULL)
    {
        printf("open file failure!");
        return 0;
    }

    char str[1024];   
    uint64_t address;
    char operation;
    while( fgets(str, 100, file) != NULL )  //读入处理
    {
        sscanf(str, " %c %lx,%d", &operation, &address, &size);
        switch (operation) {
            case 'I':
                continue;
            case 'M':        //modify：一次读一次写，访问2次cache
                solve_Cache(address, b, s, E);
                solve_Cache(address, b, s, E);
                break;
            case 'L':
            case 'S':        //Load或Store：访问1次cache
                solve_Cache(address, b, s, E);
                break;
        }
        update_Time_stamp(1 << s, E);
    }
    fclose(file);
    destroy(1 << s, E);
    
    printSummary(Hits, Misses, Evicts);
    return 0;
}