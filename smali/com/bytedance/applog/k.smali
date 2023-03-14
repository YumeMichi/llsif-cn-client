.class public Lcom/bytedance/applog/k;
.super Lcom/bytedance/applog/f;
.source ""


# static fields
.field public static final f:[J

.field public static final g:[J

.field public static final h:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/applog/k;->f:[J

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bytedance/applog/k;->g:[J

    const/16 v0, 0xe

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bytedance/applog/k;->h:[J

    return-void

    :array_0
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    :array_1
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
        0xafc80
        0xafc80
    .end array-data

    :array_2
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;J)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "cpuModel"

    const-string v3, "imsi"

    const-string v4, "mac"

    const-string v5, "props"

    const-string v6, "band"

    const-string v7, "accid"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v9, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 3
    iget-object v10, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v10}, Lcom/bytedance/applog/InitConfig;->getPreInstallCallback()Lcom/bytedance/applog/w2;

    .line 4
    invoke-virtual {v9}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_30

    .line 5
    iget-object v13, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 6
    invoke-virtual {v13}, Lcom/bytedance/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    move-result-object v13

    .line 7
    iget-object v14, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 8
    invoke-virtual {v14}, Lcom/bytedance/applog/InitConfig;->isAntiCheatingEnable()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/bytedance/applog/AppLog;->reportPhoneDetailInfo()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    if-nez v13, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    :goto_0
    if-eqz v14, :cond_2

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v14, v10}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-object v10, v14

    .line 9
    :cond_2
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAntiCheatingEnable()Z

    move-result v0

    const-string v14, "ssid"

    const-string v12, ""

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/bytedance/applog/AppLog;->reportPhoneDetailInfo()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 11
    iget-object v0, v0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    if-nez v0, :cond_3

    goto/16 :goto_1f

    .line 12
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    :try_start_0
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :cond_4
    const-string v0, "android.os.SystemProperties"

    .line 13
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    .line 14
    :goto_2
    sget-object v15, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-string v1, "get"

    const-string v19, "gsm.version.baseband"

    if-nez v15, :cond_5

    .line 15
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    const/4 v8, 0x1

    :try_start_4
    new-array v13, v8, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v18, v13, v17

    invoke-virtual {v15, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v19, v15, v17

    invoke-virtual {v13, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    goto/16 :goto_1d

    :catch_3
    move-object/from16 v20, v8

    move-object/from16 v21, v13

    :catch_4
    move-object v8, v12

    .line 16
    :goto_3
    :try_start_5
    sget-object v13, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-static {v13, v6, v8}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    :goto_4
    move-object/from16 v24, v9

    move-object/from16 v23, v10

    goto/16 :goto_8

    :cond_5
    move-object/from16 v20, v8

    move-object/from16 v21, v13

    .line 18
    :goto_5
    sget-object v6, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/16 v8, 0x10

    new-array v8, v8, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v19, v8, v13

    const-string v13, "ro.debuggable"

    const/4 v15, 0x1

    aput-object v13, v8, v15

    const/4 v13, 0x2

    const-string v15, "ro.serialno"

    aput-object v15, v8, v13

    const/4 v13, 0x3

    const-string v15, "ro.boot.hardware"

    aput-object v15, v8, v13

    const/4 v13, 0x4

    const-string v15, "ro.build.tags"

    aput-object v15, v8, v13

    const/4 v13, 0x5

    const-string v15, "ro.build.date.utc"

    aput-object v15, v8, v13

    const/4 v13, 0x6

    const-string v15, "ro.product.name"

    aput-object v15, v8, v13

    const/4 v13, 0x7

    const-string v15, "gsm.network.type"

    aput-object v15, v8, v13

    const/16 v13, 0x8

    const-string v15, "gsm.sim.state"

    aput-object v15, v8, v13

    const/16 v13, 0x9

    const-string v15, "persist.sys.country"

    aput-object v15, v8, v13

    const/16 v13, 0xa

    const-string v15, "persist.sys.language"

    aput-object v15, v8, v13

    const/16 v13, 0xb

    const-string v15, "sys.usb.state"

    aput-object v15, v8, v13

    const/16 v13, 0xc

    const-string v15, "net.dns1"

    aput-object v15, v8, v13

    const/16 v13, 0xd

    const-string v15, "net.hostname"

    aput-object v15, v8, v13

    const/16 v13, 0xe

    const-string v15, "net.eth0.gw"

    aput-object v15, v8, v13

    const/16 v13, 0xf

    const-string v15, "net.gprs.local-ip"

    aput-object v15, v8, v13

    array-length v13, v8

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v13, :cond_6

    move/from16 v19, v13

    aget-object v13, v8, v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v22, v8

    .line 19
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    const/4 v10, 0x1

    :try_start_7
    new-array v9, v10, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v18, v9, v17

    invoke-virtual {v8, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v13, v9, v17

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-object/from16 v24, v9

    move-object/from16 v23, v10

    :catch_8
    move-object v8, v12

    .line 20
    :goto_7
    :try_start_8
    invoke-static {v6, v13, v8}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v19

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    goto :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_4

    .line 17
    :goto_8
    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v10, v23

    move-object/from16 v1, v24

    goto/16 :goto_1e

    :cond_6
    move-object/from16 v24, v9

    move-object/from16 v23, v10

    .line 20
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :cond_7
    move-object/from16 v24, v9

    move-object/from16 v23, v10

    :goto_9
    if-nez v11, :cond_8

    goto :goto_a

    .line 21
    :cond_8
    :try_start_9
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b

    :catch_a
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, ","

    if-eqz v0, :cond_a

    .line 22
    :try_start_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v9, "ap"

    :try_start_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    :cond_9
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v6, "aps"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_a
    if-nez v11, :cond_b

    goto :goto_d

    .line 23
    :cond_b
    :try_start_d
    sget-object v0, Lcom/bytedance/applog/g1;->a:Lcom/bytedance/applog/g1$b;

    invoke-virtual {v0, v11}, Lcom/bytedance/applog/g1$b;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_e

    :catch_b
    move-exception v0

    .line 24
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_c

    .line 25
    sget-object v5, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v6, "cell"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 26
    :cond_c
    :try_start_f
    invoke-static {v11}, Lcom/bytedance/applog/f1;->e(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_10

    :catch_c
    move-exception v0

    :try_start_10
    invoke-static {v12, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    const/4 v0, 0x0

    .line 27
    :goto_10
    sget-object v5, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v6, "bssid"

    invoke-static {v5, v6, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v11}, Lcom/bytedance/applog/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-static {v5, v4, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const-string v4, "phone"

    if-nez v0, :cond_12

    .line 28
    :try_start_11
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/ISensitiveInfoProvider;->getImsi()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_12

    :cond_f
    if-nez v11, :cond_10

    goto :goto_11

    .line 29
    :cond_10
    :try_start_12
    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v0, :cond_11

    :try_start_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v5, v0

    :try_start_14
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_11

    :catch_e
    move-exception v0

    :try_start_15
    invoke-static {v12, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 30
    :goto_12
    sget-object v5, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-static {v5, v3, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    const-string v3, "t"

    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-nez v0, :cond_13

    :try_start_17
    invoke-static {}, Lcom/bytedance/applog/f1;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-static {v3, v2, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catch_f
    :cond_13
    :try_start_18
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "btmac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v0, :cond_18

    if-nez v11, :cond_14

    goto :goto_14

    .line 31
    :cond_14
    :try_start_19
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_address"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_15

    :cond_15
    const-string v0, "\u84dd\u7259\u672a\u5f00\u542f"

    goto :goto_13

    :cond_16
    const-string v0, "\u6ca1\u6709\u84dd\u7259\u8bbe\u5907"

    :goto_13
    const/4 v2, 0x0

    .line 32
    :try_start_1a
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_14

    :catch_10
    move-exception v0

    .line 33
    :try_start_1b
    invoke-static {v12, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    const/4 v0, 0x0

    .line 34
    :cond_17
    :goto_15
    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v3, "btmac"

    invoke-static {v2, v3, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "boot"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    const-string v2, "boot"

    :try_start_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    :cond_19
    invoke-static {v11}, Lcom/bytedance/applog/f1;->e(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_16

    :cond_1a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {v11}, Lcom/bytedance/applog/f1;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    array-length v2, v0

    if-lez v2, :cond_1d

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v3, :cond_1c

    aget-object v6, v0, v5

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_1c
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "mem"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/bytedance/applog/f1;->c()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_1e

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v5, "mem"

    invoke-virtual {v0, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1e
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "cpuFreq"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/bytedance/applog/f1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    sget-object v3, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    const-string v5, "cpuFreq"

    :try_start_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_20
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 38
    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v3, "brand"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v3, "brand"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "proc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    if-nez v0, :cond_25

    if-nez v11, :cond_22

    goto :goto_18

    .line 39
    :cond_22
    :try_start_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_23

    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto :goto_19

    :cond_24
    move-object v0, v12

    goto :goto_19

    :catch_11
    :goto_18
    const/4 v0, 0x0

    .line 40
    :goto_19
    :try_start_1f
    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v3, "proc"

    invoke-static {v2, v3, v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    const-string v2, "sim"

    if-nez v11, :cond_26

    goto :goto_1a

    .line 41
    :cond_26
    :try_start_20
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_27

    :goto_1a
    const/4 v3, 0x0

    goto :goto_1b

    :cond_27
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 42
    :goto_1b
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "cpi_abi2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const-string v2, "cpi_abi2"

    .line 43
    :try_start_21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_28

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_28
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 44
    :goto_1c
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_29
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 46
    sget-object v1, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "diaplay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    const-string v2, "diaplay"

    .line 47
    :try_start_22
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const-string v2, "manufacturer"

    .line 49
    :try_start_23
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    const-string v2, "hardware"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    const-string v1, "product"

    .line 51
    :try_start_24
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a
    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    move-object/from16 v1, v24

    :try_start_25
    invoke-static {v11, v0, v1}, Lcom/bytedance/applog/n1;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/applog/y;)V

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    if-lez v0, :cond_2b

    const-string v0, "anti_cheating"

    :try_start_26
    sget-object v2, Lcom/bytedance/applog/f1;->a:Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_13
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    move-object/from16 v10, v23

    :try_start_27
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_12
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    goto :goto_20

    :catchall_2
    move-exception v0

    goto :goto_1e

    :catch_12
    nop

    goto :goto_20

    :catch_13
    :cond_2b
    move-object/from16 v10, v23

    goto :goto_20

    :catchall_3
    move-exception v0

    move-object/from16 v10, v23

    goto :goto_1e

    :catchall_4
    move-exception v0

    :goto_1d
    move-object v1, v9

    goto :goto_1e

    :catchall_5
    move-exception v0

    move-object/from16 v20, v8

    move-object v1, v9

    move-object/from16 v21, v13

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20

    :cond_2c
    :goto_1f
    move-object/from16 v20, v8

    move-object v1, v9

    move-object/from16 v21, v13

    :goto_20
    if-eqz v21, :cond_2e

    .line 53
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_21

    :cond_2e
    const-string v0, "header"

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "magic_tag"

    const-string v3, "ss_app_log"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "_gen_time"

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 54
    iget-object v0, v0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 55
    invoke-virtual {v1}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v6}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/bytedance/applog/r0;->a()Ljava/util/HashMap;

    move-result-object v4

    :try_start_28
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/applog/f1;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v5

    invoke-static {v0}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v2, v4}, Lcom/bytedance/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    goto :goto_22

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_2f

    :try_start_29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_16

    :try_start_2a
    invoke-static {v2}, Lcom/bytedance/applog/r0;->a(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_15

    move-object v10, v2

    goto :goto_24

    :catch_15
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_23

    :catch_16
    move-exception v0

    const/16 v16, 0x0

    :goto_23
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v10, v16

    goto :goto_24

    :cond_2f
    const/4 v10, 0x0

    :goto_24
    if-eqz v10, :cond_31

    const-string v0, "device_id"

    .line 57
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "install_id"

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "bd_did"

    invoke-virtual {v10, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "cd"

    invoke-virtual {v10, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v1

    move-object v12, v0

    invoke-virtual/range {v9 .. v15}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_30
    move-object v3, v1

    const-string v0, "U SHALL NOT PASS!"

    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method

.method public e()[J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/y;->c()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "U SHALL NOT PASS!"

    .line 3
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/bytedance/applog/k;->f:[J

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/applog/k;->g:[J

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bytedance/applog/k;->h:[J

    :goto_1
    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 2
    iget-boolean v0, v0, Lcom/bytedance/applog/m;->h:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1499700

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2932e00

    :goto_0
    return-wide v0
.end method
