.class public final Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ghomesdk/gameplus/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 104
    :cond_0
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$3;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$3;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 135
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$4;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$4;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 142
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance p2, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$5;

    invoke-direct {p2, p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$5;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    return-object p2

    .line 158
    :cond_1
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$6;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$6;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 164
    :cond_2
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$7;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$7;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 171
    :cond_3
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$8;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$8;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 179
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$9;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$9;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 186
    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$10;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$10;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 192
    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 193
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$11;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$11;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 198
    :cond_7
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_8

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 199
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 200
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$12;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$12;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 206
    :cond_8
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$13;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$13;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$14;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ghomesdk/gameplus/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    if-eqz v1, :cond_0

    .line 65
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$1;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 75
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/gson/InstanceCreator;

    if-eqz v1, :cond_1

    .line 77
    new-instance p1, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;

    invoke-direct {p1, p0, v1, v0}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor$2;-><init>(Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;Lcom/ghomesdk/gameplus/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 84
    :cond_1
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 89
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 95
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/ghomesdk/gameplus/gson/internal/ObjectConstructor;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/ghomesdk/gameplus/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
