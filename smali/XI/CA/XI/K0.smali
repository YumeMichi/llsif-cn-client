.class public LXI/CA/XI/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CA:LXI/CA/XI/kM;

.field public static volatile CV:LXI/CA/XI/XI;

.field public static FL:Landroid/os/Handler;

.field public static J9:Landroid/os/HandlerThread;

.field public static K0:Z

.field public static WI:Ljava/lang/String;

.field public static XI:Landroid/content/Context;

.field public static bs:Ljava/lang/String;

.field public static cs:Ljava/lang/String;

.field public static kM:LXI/CA/XI/kM;

.field public static volatile q6:LXI/CA/XI/K0;

.field public static vs:Ljava/lang/Object;

.field public static xo:LXI/CA/XI/kM;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LXI/CA/XI/K0;->vs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LXI/CA/XI/K0;->XI()V

    new-instance v0, LXI/CA/XI/XI;

    sget-object v1, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-direct {v0, v1}, LXI/CA/XI/XI;-><init>(Landroid/content/Context;)V

    sput-object v0, LXI/CA/XI/K0;->CV:LXI/CA/XI/XI;

    return-void
.end method

.method public static K0()Z
    .locals 9

    const-string v0, "0"

    sget-boolean v1, LXI/CA/XI/K0;->K0:Z

    if-nez v1, :cond_0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const-string v1, "persist.sys.identifierid.supported"

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "get"

    const/4 v4, 0x2

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :catch_0
    :catchall_0
    const-string v1, "1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LXI/CA/XI/K0;->K0:Z

    .line 4
    :cond_0
    sget-boolean v0, LXI/CA/XI/K0;->K0:Z

    return v0
.end method

.method public static XI(Landroid/content/Context;)LXI/CA/XI/K0;
    .locals 2

    invoke-static {}, LXI/CA/XI/K0;->K0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    if-nez v0, :cond_3

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    sput-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    :cond_3
    sget-object p0, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    if-nez p0, :cond_5

    const-class p0, LXI/CA/XI/K0;

    monitor-enter p0

    :try_start_0
    sget-object v0, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    if-nez v0, :cond_4

    new-instance v0, LXI/CA/XI/K0;

    invoke-direct {v0}, LXI/CA/XI/K0;-><init>()V

    sput-object v0, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_1
    sget-object p0, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    return-object p0
.end method

.method public static XI()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, LXI/CA/XI/K0;->J9:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, LXI/CA/XI/K0$XI;

    sget-object v1, LXI/CA/XI/K0;->J9:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, LXI/CA/XI/K0$XI;-><init>(Landroid/os/Looper;)V

    sput-object v0, LXI/CA/XI/K0;->FL:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized XI(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const-class v0, LXI/CA/XI/K0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const/16 v4, 0x1c

    const/16 v5, 0x1d

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p1, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    if-nez p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_1

    new-instance p1, LXI/CA/XI/kM;

    sget-object p2, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    invoke-direct {p1, p2, v2, v1}, LXI/CA/XI/kM;-><init>(LXI/CA/XI/K0;ILjava/lang/String;)V

    sput-object p1, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "content://com.vivo.vms.IdProvider/IdentifierId/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    :goto_0
    invoke-virtual {p0, p1, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v4, :cond_5

    new-instance p1, LXI/CA/XI/kM;

    sget-object v1, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    invoke-direct {p1, v1, v2, p2}, LXI/CA/XI/kM;-><init>(LXI/CA/XI/K0;ILjava/lang/String;)V

    sput-object p1, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    goto :goto_0

    :cond_2
    sget-object p1, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    if-nez p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_3

    new-instance p1, LXI/CA/XI/kM;

    sget-object p2, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    invoke-direct {p1, p2, v2, v1}, LXI/CA/XI/kM;-><init>(LXI/CA/XI/K0;ILjava/lang/String;)V

    sput-object p1, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    new-instance p1, LXI/CA/XI/kM;

    sget-object v1, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    invoke-direct {p1, v1, v2, p2}, LXI/CA/XI/kM;-><init>(LXI/CA/XI/K0;ILjava/lang/String;)V

    sput-object p1, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    goto :goto_0

    :cond_4
    sget-object p1, LXI/CA/XI/K0;->kM:LXI/CA/XI/kM;

    if-nez p1, :cond_5

    new-instance p1, LXI/CA/XI/kM;

    sget-object p2, LXI/CA/XI/K0;->q6:LXI/CA/XI/K0;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v3, v1}, LXI/CA/XI/kM;-><init>(LXI/CA/XI/K0;ILjava/lang/String;)V

    sput-object p1, LXI/CA/XI/K0;->kM:LXI/CA/XI/kM;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, LXI/CA/XI/K0;->kM:LXI/CA/XI/kM;

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public K0(ILjava/lang/String;)V
    .locals 3

    sget-object v0, LXI/CA/XI/K0;->FL:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    const-string p1, "appid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p1, LXI/CA/XI/K0;->FL:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final XI(ILjava/lang/String;)V
    .locals 3

    sget-object v0, LXI/CA/XI/K0;->vs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, LXI/CA/XI/K0;->K0(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p1, LXI/CA/XI/K0;->vs:Ljava/lang/Object;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
