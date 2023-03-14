.class public Lcom/bytedance/applog/n1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I

.field public static b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "goldfish"

    aput-object v3, v1, v2

    sput-object v1, Lcom/bytedance/applog/n1;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "000000000000000"

    aput-object v3, v1, v2

    const-string v2, "012345678912345"

    aput-object v2, v1, v0

    sput-object v1, Lcom/bytedance/applog/n1;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/applog/y;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "/proc/version"

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/applog/f1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const-string v3, "kernel"

    .line 3
    :try_start_1
    invoke-static {v0}, Lcom/bytedance/applog/f1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/bytedance/applog/n1;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "gravity"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "temperature"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    int-to-float v0, v0

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v0, v8

    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_3

    const-string v0, ""

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v7

    const-string v0, "%.1f\u00b0C"

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v4

    :goto_2
    const-string v8, "battery_temp"

    .line 7
    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "voltage"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    move-object v0, v4

    :goto_4
    const-string v3, "battery_volt"

    .line 9
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "location"

    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v3, "gps"

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    :goto_6
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_7
    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_a
    new-instance v3, Lcom/bytedance/applog/r1;

    invoke-direct {v3}, Lcom/bytedance/applog/r1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v3, v0

    if-gtz v3, :cond_b

    goto :goto_9

    :cond_b
    array-length v3, v0

    const/4 v5, 0x0

    const/4 v8, -0x1

    :goto_8
    if-ge v5, v3, :cond_d

    aget-object v9, v0, v5

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bytedance/applog/f1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/bytedance/applog/f1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bytedance/applog/f1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v9, :cond_c

    if-le v9, v8, :cond_c

    move v8, v9

    :catchall_0
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    if-gez v8, :cond_e

    :goto_9
    goto :goto_7

    :cond_e
    :goto_a
    const/16 v0, 0x3e8

    .line 13
    div-int/2addr v8, v0

    const/16 v3, 0x168

    if-le v8, v3, :cond_f

    const/16 v3, 0x1b8

    if-ge v8, v3, :cond_f

    const-string v0, "400M"

    goto/16 :goto_b

    :cond_f
    const/16 v3, 0x1cc

    if-le v8, v3, :cond_10

    const/16 v3, 0x21c

    if-ge v8, v3, :cond_10

    const-string v0, "500M"

    goto/16 :goto_b

    :cond_10
    const/16 v3, 0x230

    if-le v8, v3, :cond_11

    const/16 v3, 0x280

    if-ge v8, v3, :cond_11

    const-string v0, "600M"

    goto :goto_b

    :cond_11
    const/16 v3, 0x294

    if-le v8, v3, :cond_12

    const/16 v3, 0x2e4

    if-ge v8, v3, :cond_12

    const-string v0, "700M"

    goto :goto_b

    :cond_12
    const/16 v3, 0x2f8

    if-le v8, v3, :cond_13

    const/16 v3, 0x348

    if-ge v8, v3, :cond_13

    const-string v0, "800M"

    goto :goto_b

    :cond_13
    const/16 v3, 0x35c

    if-le v8, v3, :cond_14

    const/16 v3, 0x3ac

    if-ge v8, v3, :cond_14

    const-string v0, "900M"

    goto :goto_b

    :cond_14
    const/16 v3, 0x3c0

    if-le v8, v3, :cond_15

    const/16 v3, 0x410

    if-ge v8, v3, :cond_15

    const-string v0, "1G"

    goto :goto_b

    :cond_15
    if-ge v8, v0, :cond_16

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "%dM"

    :try_start_4
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "%.1fG"

    :try_start_5
    new-array v5, v6, [Ljava/lang/Object;

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    const-string v0, "0M"

    :goto_b
    const-string v3, "cpu_freq"

    .line 14
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lcom/bytedance/applog/w1;

    invoke-direct {v3}, Lcom/bytedance/applog/w1;-><init>()V

    .line 15
    new-instance v0, Ljava/io/File;

    const-string v5, "/proc/tty/drivers"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v5, 0x400

    new-array v5, v5, [B

    :try_start_6
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    sget-object v5, Lcom/bytedance/applog/n1;->b:[Ljava/lang/String;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v8, :cond_18

    aget-object v10, v5, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v0, "Result:"

    const-string v5, "Find know_qemu_drivers!"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_18
    const-string v0, "Result:"

    const-string v5, "Not Find known_qemu_drivers!"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 16
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v5, Lcom/bytedance/applog/n1;->a:I

    const/4 v8, 0x2

    if-eqz v0, :cond_19

    const/4 v9, 0x2

    goto :goto_f

    :cond_19
    const/4 v9, 0x0

    :goto_f
    or-int/2addr v5, v9

    sput v5, Lcom/bytedance/applog/n1;->a:I

    const/16 v5, 0xa

    .line 17
    new-array v5, v5, [Ljava/lang/String;

    const-string v9, "/system/bin/qemu_props"

    aput-object v9, v5, v7

    const-string v9, "/system/bin/androVM-prop"

    aput-object v9, v5, v6

    const-string v9, "/system/bin/microvirt-prop"

    aput-object v9, v5, v8

    const/4 v9, 0x3

    const-string v10, "/system/lib/libdroid4x.so"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "/system/bin/windroyed"

    aput-object v10, v5, v9

    const/4 v10, 0x5

    const-string v11, "/system/bin/microvirtd"

    aput-object v11, v5, v10

    const/4 v10, 0x6

    const-string v11, "/system/bin/nox-prop"

    aput-object v11, v5, v10

    const/4 v11, 0x7

    const-string v12, "/system/bin/ttVM-prop"

    aput-object v12, v5, v11

    const/16 v11, 0x8

    const-string v12, "/system/bin/droid4x-prop"

    aput-object v12, v5, v11

    const/16 v12, 0x9

    const-string v13, "/data/.bluestacks.prop"

    aput-object v13, v5, v12

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "init.svc.vbox86-setup"

    aput-object v13, v12, v7

    const-string v14, "init.svc.droid4x"

    aput-object v14, v12, v6

    const-string v14, "init.svc.qemud"

    aput-object v14, v12, v8

    const/4 v8, 0x3

    const-string v14, "init.svc.su_kpbs_daemon"

    aput-object v14, v12, v8

    const-string v8, "init.svc.noxd"

    aput-object v8, v12, v9

    const/4 v8, 0x5

    const-string v14, "init.svc.ttVM_x86-setup"

    aput-object v14, v12, v8

    const-string v8, "init.svc.xxkmsg"

    aput-object v8, v12, v10

    const/4 v8, 0x7

    const-string v14, "init.svc.microvirtd"

    aput-object v14, v12, v8

    const-string v8, "ro.kernel.android.qemud"

    aput-object v8, v12, v11

    const/16 v8, 0x9

    const-string v14, "androVM.vbox_dpi"

    aput-object v14, v12, v8

    const/16 v8, 0xa

    const-string v14, "androVM.vbox_graph_mode"

    aput-object v14, v12, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_10
    array-length v15, v5

    const-string v4, "EmulatorChecker"

    if-ge v8, v15, :cond_1c

    aget-object v15, v5, v8

    invoke-static {v15}, Lcom/bytedance/applog/n1;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    shl-int v15, v6, v8

    goto :goto_11

    :cond_1a
    const/4 v15, 0x0

    :goto_11
    or-int/2addr v14, v15

    aget-object v15, v5, v8

    invoke-static {v15}, Lcom/bytedance/applog/n1;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b

    aget-object v15, v5, v8

    invoke-static {v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_10

    :cond_1c
    array-length v5, v5

    array-length v8, v12

    move v15, v14

    move v14, v5

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v8, :cond_1f

    aget-object v7, v12, v5

    invoke-virtual {v3, v7}, Lcom/bytedance/applog/w1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/16 v17, 0x0

    goto :goto_13

    :cond_1d
    shl-int v17, v6, v14

    :goto_13
    or-int v15, v15, v17

    invoke-virtual {v3, v7}, Lcom/bytedance/applog/w1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1e

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_12

    :cond_1f
    new-instance v5, Landroid/util/Pair;

    const-string v7, "ro.product.manufacturer"

    const-string v8, "Genymotion"

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/bytedance/applog/w1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    shl-int v7, v6, v14

    or-int/2addr v15, v7

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_20
    sget v4, Lcom/bytedance/applog/n1;->a:I

    if-lez v15, :cond_21

    goto :goto_14

    :cond_21
    const/4 v9, 0x0

    :goto_14
    or-int/2addr v4, v9

    sput v4, Lcom/bytedance/applog/n1;->a:I

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUdid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    .line 19
    iget-object v5, v5, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 20
    check-cast v5, Lcom/bytedance/applog/l1;

    invoke-virtual {v5}, Lcom/bytedance/applog/l1;->d()[Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-nez v7, :cond_22

    goto :goto_15

    :cond_22
    :try_start_7
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_16

    :catch_3
    :goto_15
    const/4 v7, 0x0

    .line 22
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_26

    sget-object v1, Lcom/bytedance/applog/n1;->c:[Ljava/lang/String;

    array-length v8, v1

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_18
    if-ge v9, v8, :cond_27

    aget-object v14, v1, v9

    if-nez v12, :cond_25

    invoke-static {v14, v4}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    goto :goto_19

    :cond_24
    const/4 v12, 0x0

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v12, 0x1

    :goto_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_26
    const/4 v12, 0x0

    :cond_27
    if-eqz v5, :cond_2a

    array-length v1, v5

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v1, :cond_2a

    aget-object v8, v5, v4

    const-string v9, "310260000000000"

    invoke-static {v8, v9}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    if-eqz v12, :cond_28

    goto :goto_1c

    :cond_28
    const/4 v12, 0x0

    goto :goto_1d

    :cond_29
    :goto_1c
    const/4 v12, 0x1

    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    if-nez v12, :cond_2c

    const-string v1, "15552175049"

    invoke-static {v7, v1}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_1e

    :cond_2b
    const/4 v1, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1e
    const/4 v1, 0x1

    .line 23
    :goto_1f
    sget v4, Lcom/bytedance/applog/n1;->a:I

    if-eqz v1, :cond_2d

    goto :goto_20

    :cond_2d
    const/4 v11, 0x0

    :goto_20
    or-int/2addr v4, v11

    sput v4, Lcom/bytedance/applog/n1;->a:I

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string v9, "generic"

    if-eqz v4, :cond_2e

    .line 24
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_2e
    if-eqz v5, :cond_2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_2f
    if-eqz v7, :cond_30

    const-string v4, "goldfish"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    :cond_30
    const-string v4, "android-test"

    invoke-static {v8, v4}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_31
    const/4 v4, 0x1

    goto :goto_21

    :cond_32
    const/4 v4, 0x0

    .line 25
    :goto_21
    sget v5, Lcom/bytedance/applog/n1;->a:I

    if-eqz v4, :cond_33

    const/16 v7, 0x10

    goto :goto_22

    :cond_33
    const/4 v7, 0x0

    :goto_22
    or-int/2addr v5, v7

    sput v5, Lcom/bytedance/applog/n1;->a:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v10}, Ljava/util/HashMap;-><init>(I)V

    const-string v7, "ro.hardware"

    const-string v8, "goldfish"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ro.product.device"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ro.product.model"

    const-string v8, "sdk"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ro.product.name"

    const-string v8, "sdk"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "stopped"

    invoke-interface {v5, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "running"

    invoke-interface {v5, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/bytedance/applog/w1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/bytedance/applog/y1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    const/4 v3, 0x1

    goto :goto_23

    :cond_35
    const/4 v3, 0x0

    :goto_23
    sget v5, Lcom/bytedance/applog/n1;->a:I

    if-eqz v3, :cond_36

    const/16 v7, 0x20

    goto :goto_24

    :cond_36
    const/4 v7, 0x0

    :goto_24
    or-int/2addr v5, v7

    sput v5, Lcom/bytedance/applog/n1;->a:I

    invoke-static {}, Lcom/bytedance/applog/n1;->a()Z

    move-result v5

    sget v7, Lcom/bytedance/applog/n1;->a:I

    if-eqz v5, :cond_37

    const/16 v8, 0x40

    goto :goto_25

    :cond_37
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v7, v8

    sput v7, Lcom/bytedance/applog/n1;->a:I

    const-string v7, "/sys/class/thermal/thermal_zone0"

    .line 26
    invoke-static {v7}, Lcom/bytedance/applog/n1;->a(Ljava/lang/String;)Z

    move-result v7

    .line 27
    sget v8, Lcom/bytedance/applog/n1;->a:I

    if-eqz v7, :cond_38

    const/4 v9, 0x0

    goto :goto_26

    :cond_38
    const/16 v9, 0x80

    :goto_26
    or-int/2addr v8, v9

    sput v8, Lcom/bytedance/applog/n1;->a:I

    if-nez v0, :cond_3a

    if-gtz v15, :cond_3a

    if-nez v1, :cond_3a

    if-nez v4, :cond_3a

    if-nez v3, :cond_3a

    if-nez v5, :cond_3a

    if-nez v7, :cond_39

    goto :goto_27

    :cond_39
    const/16 v16, 0x0

    goto :goto_28

    :cond_3a
    :goto_27
    const/16 v16, 0x1

    :goto_28
    sget v0, Lcom/bytedance/applog/n1;->a:I

    or-int v0, v0, v16

    sput v0, Lcom/bytedance/applog/n1;->a:I

    sget v0, Lcom/bytedance/applog/n1;->a:I

    const-string v1, "emulator"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "emulator_file_flag"

    invoke-virtual {v2, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No such file or directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
