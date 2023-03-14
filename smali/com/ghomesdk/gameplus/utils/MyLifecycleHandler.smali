.class public Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;
.super Ljava/lang/Object;
.source "MyLifecycleHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String; = "DataReport,MyLife"

.field private static currentTimeMillis:J

.field private static paused:I

.field private static resumed:I

.field private static started:I

.field private static stopped:I


# instance fields
.field private isFirst:Z

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->state:I

    .line 16
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->isFirst:Z

    return-void
.end method

.method public static changeCurrentTimeMillis()J
    .locals 2

    .line 76
    sget-wide v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->currentTimeMillis:J

    return-wide v0
.end method

.method public static isApplicationInForeground()Z
    .locals 2

    .line 72
    sget v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isApplicationVisible()Z
    .locals 2

    .line 67
    sget v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->started:I

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->stopped:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 43
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application is in foreground: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    sget v2, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataReport,MyLife"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    if-gt p1, v1, :cond_1

    .line 46
    iput v3, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->state:I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->currentTimeMillis:J

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTimeMillis = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->currentTimeMillis:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 29
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    .line 30
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->resumed:I

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->paused:I

    if-le p1, v1, :cond_1

    .line 31
    iput v0, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->state:I

    .line 32
    iget-boolean p1, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->isFirst:Z

    if-nez p1, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->currentTimeMillis:J

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentTimeMillis = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataReport,MyLife"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->isFirst:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 24
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->started:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->started:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 54
    sget p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->stopped:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->stopped:I

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application is visible: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->started:I

    sget v2, Lcom/ghomesdk/gameplus/utils/MyLifecycleHandler;->stopped:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataReport,MyLife"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
