# ZCFileDataCache

介绍：一个非常简单易用的文件缓存class，调用接口基本保持与NSDictionary保持一致，具体参考dome

注：将代码文件导入工程时需要将GTMBase64这个class标记为-fno-objc-arc

接口介绍：

设置一个value到文件储存中

- (void)setObject:(id)value forKey:(NSString *)defaultName;

同上

- (void)setValue:(id)value forKey:(NSString *)defaultName

使用相应的key取出对应文件的储存值

- (id)objectForKey:(NSString *)defaultName;

同上

- (id)valueForKey:(NSString *)key;

删除某个文件储存key值

- (void)removeObjectForKey:(NSString *)key;

更新文件储存数据

- (void)updateDataCacheDict;

将内存中的储存的文件数据更新到硬盘储存中

- (void)updateDiskData;

删除所有储存数据

- (void)clearDataCache;

使用dome：

[[ZCFileDataCache sharedInstance] setObject:@{@"test":@"123"} forKey:@"testDict"]

[[ZCFileDataCache sharedInstance] objectForKey:@"testDict"]