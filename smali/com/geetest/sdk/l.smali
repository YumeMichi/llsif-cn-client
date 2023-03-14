.class final Lcom/geetest/sdk/l;
.super Ljava/lang/Object;
.source "GeeIdHelper.java"


# static fields
.field private static final a:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sdcard/.system_log.trace"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sdcard/tencent/.DrvZPZQ"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sdcard/alipay/.Wg83DS3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gt_di"

    .line 1
    invoke-static {p0, v0}, Lcom/geetest/sdk/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/geetest/sdk/i;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "utf-8"

    const/4 v4, 0x0

    const-string v5, "gee_id"

    const-string v6, "VedaT=ZbPq0Zv7Do"

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    invoke-virtual {p0, v8, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v8, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-direct {v2, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/geetest/sdk/o;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/geetest/sdk/h;->a([BLjava/lang/String;)[B

    move-result-object v8

    .line 16
    new-instance v9, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {p0, v0, v2}, Lcom/geetest/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    const/4 v2, 0x1

    .line 25
    :try_start_1
    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/geetest/sdk/o;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-static {v8, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-static {v9, v6}, Lcom/geetest/sdk/h;->a([BLjava/lang/String;)[B

    move-result-object v9

    .line 27
    new-instance v10, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0, v0, v8}, Lcom/geetest/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v9, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-static {v8, v9}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v9

    .line 37
    :catch_1
    :try_start_2
    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/geetest/sdk/o;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-static {v8, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-static {v9, v6}, Lcom/geetest/sdk/h;->a([BLjava/lang/String;)[B

    move-result-object v9

    .line 39
    new-instance v10, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p0, v0, v8}, Lcom/geetest/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v9, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-static {v8, v9}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v9, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v8, v9}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v9

    .line 50
    :catch_2
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 51
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 52
    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v5, "ts"

    .line 53
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "ver"

    const-string v10, "1.0.0"

    .line 54
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/geetest/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/geetest/sdk/o;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {p0, v0, v3}, Lcom/geetest/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object p0, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-static {v3, p0}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-static {v3, p0}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/geetest/sdk/l;->a:[Ljava/lang/String;

    aget-object p0, p0, v7

    invoke-static {v3, p0}, Lcom/geetest/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-object p0

    :catch_3
    :cond_1
    return-object v4

    .line 70
    :cond_2
    :try_start_5
    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, v6}, Lcom/geetest/sdk/h;->a([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v3}, Lcom/geetest/sdk/o;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-object p0

    :catch_4
    return-object v4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, v0}, Lcom/geetest/sdk/o;->a(Ljava/lang/String;Ljava/io/Writer;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 76
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
