.class public Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;
.super Ljava/lang/Object;
.source "PermissionMgrHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionMgrHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply360QiKuPermission(Landroid/content/Context;)Z
    .locals 4

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OverlaySettingsActivity"

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    return v2

    :cond_0
    const-string v1, "com.qihoo360.mobilesafe"

    const-string v3, "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"

    .line 473
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    return v2

    :cond_1
    const-string p0, "PermissionMgrHelper"

    const-string v0, "can\'t open permission page with particular name, please use \"adb shell dumpsys activity\" command and tell me the name of the float window permission page"

    .line 478
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static applyHuaWeiPermission(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "com.huawei.systemmanager"

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    .line 335
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 336
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 342
    invoke-static {v4, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    return v3

    .line 345
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getEmuiVersion()D

    move-result-wide v5

    const-wide v7, 0x4008cccccccccccdL    # 3.1

    cmpl-double v9, v5, v7

    if-nez v9, :cond_1

    .line 347
    invoke-static {p0, v4}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getEmuiVersion()D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_2

    .line 350
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 352
    invoke-static {p0, v4}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-static {p0, v4}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    return v3

    :catch_1
    nop

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.Android.settings"

    const-string v5, "com.android.settings.permission.TabItem"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 381
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_3
    return v3

    :catch_2
    nop

    .line 358
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 359
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v2, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    invoke-static {v4, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    invoke-static {p0, v4}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_4
    return v3
.end method

.method public static applyMeiZuPermission(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 397
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.safe.security.AppSecActivity"

    .line 398
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "packageName"

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 400
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    invoke-static {v1, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static applyMiuiPermission(Landroid/content/Context;)Z
    .locals 3

    .line 309
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getMiuiVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 311
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->goToMiuiPermissionActivity_V5(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 313
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->goToMiuiPermissionActivity_V6(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 315
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->goToMiuiPermissionActivity_V7(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 317
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->goToMiuiPermissionActivity_V8(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 319
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this is a special MIUI rom version, its version code "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PermissionMgrHelper"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "wuchaochao"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static applyOppoPermission(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 445
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 446
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coloros.safecenter"

    const-string v4, "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 450
    invoke-static {v1, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static apply_6_0_Permission(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 420
    :try_start_0
    const-class v1, Landroid/provider/Settings;

    const-string v2, "ACTION_MANAGE_OVERLAY_PERMISSION"

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 422
    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 423
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 425
    invoke-static {v2, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-static {p0, v2}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static checkFloatWindowPermission(Landroid/content/Context;)Z
    .locals 2

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    .line 141
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkOp(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIs360Rom()Z
    .locals 2

    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "QiKU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "360"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static checkIsHuaweiRom()Z
    .locals 2

    .line 100
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static checkIsMeizuRom()Z
    .locals 4

    const-string v0, "ro.build.display.id"

    .line 112
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "flyme"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static checkIsMiuiRom()Z
    .locals 1

    const-string v0, "ro.miui.ui.version.name"

    .line 107
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static checkIsOppoRom()Z
    .locals 2

    .line 131
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static checkOp(Landroid/content/Context;I)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "PermissionMgrHelper"

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    const-string v0, "appops"

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 182
    :try_start_0
    const-class v3, Landroid/app/AppOpsManager;

    const-string v4, "checkOp"

    const/4 v5, 0x3

    .line 183
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 184
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v9

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception p0

    .line 186
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "Below API 19 cannot invoke!"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method private static checkPermission(Landroid/content/Context;)Z
    .locals 2

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 151
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->commonROMPermissionCheck(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static commonROMPermissionCheck(Landroid/content/Context;)Z
    .locals 7

    .line 158
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkFloatWindowPermission(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 164
    :try_start_0
    const-class v2, Landroid/provider/Settings;

    const-string v3, "canDrawOverlays"

    .line 165
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v6

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PermissionMgrHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p0, v1

    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 486
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 487
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 488
    new-instance v1, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;

    const-string v2, "gl_app_theme_light"

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "\u7531\u4e8e\u60a8\u5173\u95ed\u4e86\u684c\u9762\u60ac\u6d6e\u7a97\u7684\u5f00\u5173\uff0c\u5bfc\u81f4\u60a8\u65e0\u6cd5\u8fdb\u884c\u6e38\u620f\uff0c\u8bf7\u70b9\u51fb\u201c\u8bbe\u7f6e\u201d\u5f00\u542f"

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;-><init>(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/ResultCallback;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 494
    sput-boolean p0, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->hasShowDialog:Z

    .line 495
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/FloatLimitDialog;->show()V

    goto :goto_0

    .line 497
    :cond_0
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->showFailInfo(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static getEmuiVersion()D
    .locals 2

    :try_start_0
    const-string v0, "ro.build.version.emui"

    .line 49
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    return-wide v0
.end method

.method public static getMiuiVersion()I
    .locals 3

    const-string v0, "ro.miui.ui.version.name"

    .line 64
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 70
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get miui version code error, version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionMgrHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Exception while closing InputStream"

    const-string v1, "PermissionMgrHelper"

    const/4 v2, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getprop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 81
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v2

    .line 85
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read sysprop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    .line 90
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 92
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_1

    .line 90
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 92
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_1
    :goto_4
    throw p0
.end method

.method public static goToMiuiPermissionActivity_V5(Landroid/content/Context;)Z
    .locals 4

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    const/4 v3, 0x0

    .line 236
    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 238
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    invoke-static {v1, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "PermissionMgrHelper"

    const-string v0, "intent is not available!"

    .line 243
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static goToMiuiPermissionActivity_V6(Landroid/content/Context;)Z
    .locals 3

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "PermissionMgrHelper"

    const-string v0, "Intent is not available!"

    .line 261
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static goToMiuiPermissionActivity_V7(Landroid/content/Context;)Z
    .locals 3

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 276
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "PermissionMgrHelper"

    const-string v0, "Intent is not available!"

    .line 280
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static goToMiuiPermissionActivity_V8(Landroid/content/Context;)Z
    .locals 3

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->enterFloatWindomSetting(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "PermissionMgrHelper"

    const-string v0, "Intent is not available!"

    .line 298
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static jumpToFloatWindowPermissionPage(Landroid/content/Context;)V
    .locals 3

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 506
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 512
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->apply_6_0_Permission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 515
    :cond_1
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIsHuaweiRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->applyHuaWeiPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 518
    :cond_2
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIsMiuiRom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->applyMiuiPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 521
    :cond_3
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIsMeizuRom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->applyMeiZuPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 524
    :cond_4
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIs360Rom()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->apply360QiKuPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 526
    :cond_5
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->checkIsOppoRom()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 527
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->applyOppoPermission(Landroid/content/Context;)Z

    move-result v1

    :cond_6
    :goto_0
    if-nez v1, :cond_7

    const/4 v0, 0x1

    const-string v1, "\u5efa\u8bae\u5230\"\u8bbe\u7f6e\u6216\u8f6f\u4ef6\u7ba1\u5bb6\"\u91cc\u624b\u52a8\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650\u8bbe\u7f6e"

    .line 535
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static showFailInfo(Landroid/content/Context;)V
    .locals 2

    const-string v0, "\u8fdb\u5165\u8bbe\u7f6e\u9875\u9762\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u8bbe\u7f6e"

    const/4 v1, 0x1

    .line 326
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
