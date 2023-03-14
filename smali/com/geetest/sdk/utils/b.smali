.class public Lcom/geetest/sdk/utils/b;
.super Ljava/lang/Object;
.source "CheckEnvironmentUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "/sbin/su"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "/system/xbin/su"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "/data/local/xbin/su"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "/data/local/bin/su"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "/system/sd/xbin/su"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "/system/bin/failsafe/su"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "/data/local/su"

    aput-object v10, v0, v9

    const/16 v9, 0x9

    const-string v10, "/su/bin/su"

    aput-object v10, v0, v9

    sput-object v0, Lcom/geetest/sdk/utils/b;->a:[Ljava/lang/String;

    .line 12
    new-array v0, v7, [Ljava/lang/String;

    const-string v9, "com.noshufou.android.su"

    aput-object v9, v0, v1

    const-string v9, "com.noshufou.android.su.elite"

    aput-object v9, v0, v2

    const-string v9, "eu.chainfire.supersu"

    aput-object v9, v0, v3

    const-string v9, "com.koushikdutta.superuser"

    aput-object v9, v0, v4

    const-string v9, "com.thirdparty.superuser"

    aput-object v9, v0, v5

    const-string v9, "com.yellowes.su"

    aput-object v9, v0, v6

    sput-object v0, Lcom/geetest/sdk/utils/b;->b:[Ljava/lang/String;

    .line 19
    new-array v0, v5, [Ljava/lang/String;

    const-string v9, "com.koushikdutta.rommanager"

    aput-object v9, v0, v1

    const-string v9, "com.dimonvideo.luckypatcher"

    aput-object v9, v0, v2

    const-string v9, "com.chelpus.lackypatch"

    aput-object v9, v0, v3

    const-string v9, "com.ramdroid.appquarantine"

    aput-object v9, v0, v4

    sput-object v0, Lcom/geetest/sdk/utils/b;->c:[Ljava/lang/String;

    .line 24
    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "com.devadvance.rootcloak"

    aput-object v8, v0, v1

    const-string v1, "de.robv.android.xposed.installer"

    aput-object v1, v0, v2

    const-string v1, "com.saurik.substrate"

    aput-object v1, v0, v3

    const-string v1, "com.devadvance.rootcloakplus"

    aput-object v1, v0, v4

    const-string v1, "com.zachspong.temprootremovejb"

    aput-object v1, v0, v5

    const-string v1, "com.amphoras.hidemyroot"

    aput-object v1, v0, v6

    const-string v1, "com.formyhm.hideroot"

    aput-object v1, v0, v7

    sput-object v0, Lcom/geetest/sdk/utils/b;->d:[Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/geetest/sdk/utils/b;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/geetest/sdk/utils/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    sget-object v1, Lcom/geetest/sdk/utils/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v1, Lcom/geetest/sdk/utils/b;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/geetest/sdk/utils/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {p0}, Lcom/geetest/sdk/utils/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
