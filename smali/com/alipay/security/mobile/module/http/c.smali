.class public Lcom/alipay/security/mobile/module/http/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/security/mobile/module/http/a;


# static fields
.field public static d:Lcom/alipay/security/mobile/module/http/c;

.field public static e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;


# instance fields
.field public a:Lcom/alipay/android/phone/mrpc/core/w;

.field public b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field public c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/c;->a:Lcom/alipay/android/phone/mrpc/core/w;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/c;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/c;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/aa;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/aa;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/mrpc/core/aa;->a(Ljava/lang/String;)V

    new-instance p2, Lcom/alipay/android/phone/mrpc/core/h;

    invoke-direct {p2, p1}, Lcom/alipay/android/phone/mrpc/core/h;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/alipay/security/mobile/module/http/c;->a:Lcom/alipay/android/phone/mrpc/core/w;

    const-class p1, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {p2, p1, v0}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/c;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object p1, p0, Lcom/alipay/security/mobile/module/http/c;->a:Lcom/alipay/android/phone/mrpc/core/w;

    const-class p2, Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/phone/mrpc/core/w;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/c;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/c;
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/module/http/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/http/c;->d:Lcom/alipay/security/mobile/module/http/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/security/mobile/module/http/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/security/mobile/module/http/c;->d:Lcom/alipay/security/mobile/module/http/c;

    :cond_0
    sget-object p0, Lcom/alipay/security/mobile/module/http/c;->d:Lcom/alipay/security/mobile/module/http/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/alipay/security/mobile/module/http/c;)Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;
    .locals 0

    iget-object p0, p0, Lcom/alipay/security/mobile/module/http/c;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    return-object p0
.end method

.method public static synthetic a()Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/c;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object v0
.end method

.method public static synthetic a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/module/http/c;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/c;->c:Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    if-eqz v1, :cond_1

    sput-object v0, Lcom/alipay/security/mobile/module/http/c;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/http/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/b;-><init>(Lcom/alipay/security/mobile/module/http/c;Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const p1, 0x493e0

    :goto_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/c;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 p1, p1, -0x32

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/alipay/security/mobile/module/http/c;->e:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    return-object p1
.end method

.method public logCollect(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/c;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method
