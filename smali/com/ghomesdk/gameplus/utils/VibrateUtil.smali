.class public Lcom/ghomesdk/gameplus/utils/VibrateUtil;
.super Ljava/lang/Object;
.source "VibrateUtil.java"


# static fields
.field public static isNeedVibrate:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vibrate(Landroid/content/Context;J)V
    .locals 2

    .line 14
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->getIsNeedVibrate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "vibrator"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public static Vibrate(Landroid/content/Context;[JZ)V
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->getIsNeedVibrate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "vibrator"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 23
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    return-void
.end method

.method public static getIsNeedVibrate(Landroid/content/Context;)Z
    .locals 2

    .line 38
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isNeedVibrate"

    const/4 v1, 0x1

    .line 39
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->isNeedVibrate:Z

    .line 40
    sget-boolean p0, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->isNeedVibrate:Z

    return p0
.end method

.method public static setIsNeedVibrate(Landroid/content/Context;Z)V
    .locals 1

    .line 28
    sput-boolean p1, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->isNeedVibrate:Z

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 32
    sget-boolean p1, Lcom/ghomesdk/gameplus/utils/VibrateUtil;->isNeedVibrate:Z

    const-string v0, "isNeedVibrate"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
