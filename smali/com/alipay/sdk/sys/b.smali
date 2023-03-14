.class public Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/alipay/sdk/sys/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/alipay/sdk/sys/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/alipay/sdk/sys/b;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    .line 4
    :cond_0
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    return-object v0
.end method

.method public static e()Z
    .locals 7

    const/16 v0, 0xa

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/app/Superuser.apk"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "/sbin/su"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "/system/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "/system/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "/data/local/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "/system/sd/xbin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "/system/bin/failsafe/su"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "/data/local/su"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "/su/bin/su"

    aput-object v5, v1, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 11
    aget-object v5, v1, v4

    .line 12
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public a()Lcom/alipay/sdk/data/b;
    .locals 1

    .line 3
    invoke-static {}, Lcom/alipay/sdk/data/b;->b()Lcom/alipay/sdk/data/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/alipay/sdk/data/b;->b()Lcom/alipay/sdk/data/b;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const-string v0, "getUtdidEx"

    :goto_0
    return-object v0
.end method
