.class Lcom/geetest/sdk/z;
.super Ljava/lang/Object;
.source "CGeeLoggerProtocol.java"

# interfaces
.implements Lcom/geetest/sdk/ak;


# static fields
.field private static j:Lcom/geetest/sdk/z;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/geetest/sdk/aj;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/z;->d:Ljava/util/Set;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    if-gez p2, :cond_2

    const-string v0, "gee_logger_write"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0xfdc

    if-eq p2, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/geetest/sdk/z;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/z;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/z;->c:Lcom/geetest/sdk/aj;

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v0, p1, p2}, Lcom/geetest/sdk/aj;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private b(ILjava/lang/String;JLjava/lang/String;JZ)I
    .locals 2

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "c"

    .line 50
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "f"

    .line 51
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "i"

    .line 52
    invoke-virtual {v0, p1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "l"

    .line 53
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "m"

    .line 54
    invoke-virtual {v0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "n"

    .line 55
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 61
    array-length p2, p1

    add-int/lit8 p3, p2, 0x5

    .line 62
    new-array p3, p3, [B

    const/4 p4, 0x0

    const/4 p5, 0x1

    .line 63
    aput-byte p5, p3, p4

    shr-int/lit8 p6, p2, 0x18

    and-int/lit16 p6, p6, 0xff

    int-to-byte p6, p6

    .line 64
    aput-byte p6, p3, p5

    shr-int/lit8 p6, p2, 0x10

    and-int/lit16 p6, p6, 0xff

    int-to-byte p6, p6

    const/4 p7, 0x2

    .line 65
    aput-byte p6, p3, p7

    shr-int/lit8 p6, p2, 0x8

    and-int/lit16 p6, p6, 0xff

    int-to-byte p6, p6

    const/4 p7, 0x3

    .line 66
    aput-byte p6, p3, p7

    and-int/lit16 p6, p2, 0xff

    int-to-byte p6, p6

    const/4 p7, 0x4

    .line 67
    aput-byte p6, p3, p7

    const/4 p6, 0x5

    .line 68
    invoke-static {p1, p4, p3, p6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/geetest/sdk/z;->e:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, p5}, Lcom/geetest/sdk/aa;->a(Ljava/io/File;[BZ)V

    const/16 p1, -0xfaa

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 7

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "ver"

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 30
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x6

    .line 36
    new-array v3, v2, [B

    .line 37
    invoke-static {v0}, Lcom/geetest/sdk/ap;->a(I)[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0xd

    .line 43
    aput-byte v4, v3, v6

    sub-int/2addr v2, v1

    const/16 v1, 0xe

    .line 44
    aput-byte v1, v3, v2

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p1, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/geetest/sdk/z;->e:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/geetest/sdk/aa;->a(Ljava/io/File;[B)V

    const/16 p1, -0x7da

    return p1

    :cond_0
    const/16 p1, -0x7e4

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "gee_logger_cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[ init ]: cacheParentFile created"

    .line 4
    invoke-static {p1}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "[ init ]: dirFile created"

    .line 11
    invoke-static {p2}, Lcom/geetest/sdk/ai;->a(Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance p2, Ljava/io/File;

    const-string v1, "cache.log"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/z;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/z;->f:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/geetest/sdk/z;->i:I

    .line 18
    iput-object p4, p0, Lcom/geetest/sdk/z;->g:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/geetest/sdk/z;->h:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/geetest/sdk/z;->b()V

    .line 23
    :cond_2
    invoke-static {}, Lcom/geetest/sdk/ap;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, -0x3f2

    return p1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x406

    return p1
.end method

.method static c()Lcom/geetest/sdk/z;
    .locals 2

    .line 1
    sget-object v0, Lcom/geetest/sdk/z;->j:Lcom/geetest/sdk/z;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geetest/sdk/z;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/geetest/sdk/z;->j:Lcom/geetest/sdk/z;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/geetest/sdk/z;

    invoke-direct {v1}, Lcom/geetest/sdk/z;-><init>()V

    sput-object v1, Lcom/geetest/sdk/z;->j:Lcom/geetest/sdk/z;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/geetest/sdk/z;->j:Lcom/geetest/sdk/z;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/geetest/sdk/z;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/geetest/sdk/z;->b()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;JLjava/lang/String;JZ)V
    .locals 6

    const-string v0, "gee_logger_write"

    .line 29
    iget-boolean v1, p0, Lcom/geetest/sdk/z;->b:Z

    if-nez v1, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/geetest/sdk/z;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/geetest/sdk/z;->i:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/geetest/sdk/z;->a()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/geetest/sdk/z;->b(ILjava/lang/String;JLjava/lang/String;JZ)I

    move-result p1

    const/16 p2, -0xfaa

    if-ne p1, p2, :cond_2

    .line 39
    sget-boolean p2, Lcom/geetest/sdk/ac;->c:Z

    if-eqz p2, :cond_3

    .line 40
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/16 p1, -0xfdc

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/geetest/sdk/aj;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/geetest/sdk/z;->c:Lcom/geetest/sdk/aj;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "gee_logger_open"

    .line 13
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/geetest/sdk/z;->f:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/geetest/sdk/z;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/geetest/sdk/z;->b:Z

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x816

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "gee_logger_init"

    .line 1
    iget-boolean v1, p0, Lcom/geetest/sdk/z;->a:Z

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/geetest/sdk/z;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/geetest/sdk/z;->a:Z

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/16 p1, -0x424

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/geetest/sdk/z;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iget-boolean p1, p0, Lcom/geetest/sdk/z;->a:Z

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/geetest/sdk/z;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/geetest/sdk/z;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/geetest/sdk/z;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/geetest/sdk/z;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/geetest/sdk/aa;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
