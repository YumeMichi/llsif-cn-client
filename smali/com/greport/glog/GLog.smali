.class public Lcom/greport/glog/GLog;
.super Ljava/lang/Object;
.source "GLog.java"


# static fields
.field private static TAG:Ljava/lang/String; = "GLog"

.field private static final agent:Lcom/greport/glog/RealAgent;

.field private static debug:Z = true

.field private static isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/greport/glog/RealAgent;

    invoke-direct {v0}, Lcom/greport/glog/RealAgent;-><init>()V

    sput-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/greport/glog/GLog;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/greport/glog/GLog;->TAG:Ljava/lang/String;

    const-string v1, "glog init start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1, p1, p1}, Lcom/greport/glog/GLog;->setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "appId"

    .line 39
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/greport/glog/GLogConfig;->RAPP_ID:I

    const-string p1, "gameId"

    .line 40
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/greport/glog/GLogConfig;->GAPP_ID:I

    .line 41
    sget-object p1, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {p1, p0, p2}, Lcom/greport/glog/RealAgent;->init(Landroid/content/Context;Ljava/util/Map;)V

    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/greport/glog/GLog;->isInitialized:Z

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/greport/glog/GLog;->debug:Z

    return v0
.end method

.method public static isGLogInitialized()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/greport/glog/GLog;->isInitialized:Z

    return v0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static onCreate(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 93
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static onCreate(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 102
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static onDestroy(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 110
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static onDestroy(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 163
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 168
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 193
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onEventEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 188
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onEventStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 209
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/greport/glog/RealAgent;->onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onPause(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static onPause(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onPause(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static onPause(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onPause(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onResume(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public static onResume(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->onResume(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static onResume(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->onResume(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method public static reportAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 226
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1, p2}, Lcom/greport/glog/RealAgent;->reportAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 213
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 217
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0, p1}, Lcom/greport/glog/RealAgent;->reportError(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 80
    sput-boolean p0, Lcom/greport/glog/GLog;->debug:Z

    return-void
.end method

.method public static setDeviceIdServer(Ljava/lang/String;)V
    .locals 1

    .line 231
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->setDeviceIdServer(Ljava/lang/String;)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 56
    sput-boolean p0, Lcom/greport/glog/GLog;->debug:Z

    return-void
.end method

.method public static setOaidKey(Ljava/lang/String;)V
    .locals 1

    .line 235
    sget-object v0, Lcom/greport/glog/GLog;->agent:Lcom/greport/glog/RealAgent;

    invoke-virtual {v0, p0}, Lcom/greport/glog/RealAgent;->setOaidKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/greport/glog/GLogConfig;->UPLOAD_URL:Ljava/lang/String;

    .line 48
    sput-object p1, Lcom/greport/glog/GLogConfig;->UPLOAD_ERROR_URL_PREFIX:Ljava/lang/String;

    .line 49
    sput-object p2, Lcom/greport/glog/GLogConfig;->UPLOAD_URL_ANR:Ljava/lang/String;

    return-void
.end method

.method public static showReport(Z)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/greport/glog/RealAgent;->setShowReport(Z)V

    return-void
.end method
