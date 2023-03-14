.class public LXI/xo/XI/XI/CA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile J9:LXI/xo/XI/XI/CA;


# instance fields
.field public CA:LXI/xo/XI/XI/K0;

.field public K0:LXI/xo/XI/XI/XI;

.field public XI:LXI/xo/XI/XI/XI;

.field public kM:LXI/xo/XI/XI/XI;

.field public vs:Landroid/content/BroadcastReceiver;

.field public xo:LXI/xo/XI/XI/XI;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "udid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->XI:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->K0:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->xo:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/XI;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, LXI/xo/XI/XI/XI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->kM:LXI/xo/XI/XI/XI;

    new-instance v0, LXI/xo/XI/XI/K0;

    invoke-direct {v0}, LXI/xo/XI/XI/K0;-><init>()V

    iput-object v0, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    return-void
.end method

.method public static final XI()LXI/xo/XI/XI/CA;
    .locals 2

    sget-object v0, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    if-nez v0, :cond_1

    const-class v0, LXI/xo/XI/XI/CA;

    monitor-enter v0

    :try_start_0
    sget-object v1, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    if-nez v1, :cond_0

    new-instance v1, LXI/xo/XI/XI/CA;

    invoke-direct {v1}, LXI/xo/XI/XI/CA;-><init>()V

    sput-object v1, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, LXI/xo/XI/XI/CA;->J9:LXI/xo/XI/XI/CA;

    return-object v0
.end method

.method public static XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;
    .locals 3

    new-instance v0, LXI/xo/XI/XI/kM;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LXI/xo/XI/XI/kM;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    :cond_1
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, LXI/xo/XI/XI/kM;->K0:I

    :cond_2
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, LXI/xo/XI/XI/kM;->kM:J

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final XI(Landroid/content/Context;LXI/xo/XI/XI/XI;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-wide v1, p2, LXI/xo/XI/XI/XI;->XI:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object p1, p2, LXI/xo/XI/XI/XI;->K0:Ljava/lang/String;

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, LXI/xo/XI/XI/XI;->kM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/String;

    iget-object v1, p2, LXI/xo/XI/XI/XI;->kM:Ljava/lang/String;

    aput-object v1, v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {v1}, LXI/xo/XI/XI/CA;->XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;

    move-result-object v2

    iget-object v0, v2, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    .line 3
    iput-object v0, p2, LXI/xo/XI/XI/XI;->K0:Ljava/lang/String;

    .line 4
    iget-wide v3, v2, LXI/xo/XI/XI/kM;->kM:J

    .line 5
    iput-wide v3, p2, LXI/xo/XI/XI/XI;->XI:J

    .line 6
    iget v3, v2, LXI/xo/XI/XI/kM;->K0:I

    .line 7
    iput v3, p2, LXI/xo/XI/XI/XI;->xo:I

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, LXI/xo/XI/XI/XI;->kM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " errorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, LXI/xo/XI/XI/XI;->xo:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget p2, v2, LXI/xo/XI/XI/kM;->K0:I

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_5

    invoke-virtual {p0, p1}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v5}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support, forceQuery isSupported: "

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v5}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, v6}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceQuery isSupported : "

    goto :goto_1

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    move-object p2, v0

    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object p2, v0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryId, Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    return-object p2

    :goto_6
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final declared-synchronized XI(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LXI/xo/XI/XI/CA;->vs:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, LXI/xo/XI/XI/xo;

    invoke-direct {v1}, LXI/xo/XI/XI/xo;-><init>()V

    iput-object v1, p0, LXI/xo/XI/XI/CA;->vs:Landroid/content/BroadcastReceiver;

    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final XI(Landroid/content/Context;Z)Z
    .locals 10

    const-string v0, "com.meizu.safe"

    iget-object v1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 9
    iget-object v1, v1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_1
    return v3

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-nez p2, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppVersion, Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    move-object v4, v1

    :goto_1
    iget-object v5, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 12
    iget-object v6, v5, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    iget-object v5, v5, LXI/xo/XI/XI/K0;->XI:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_8

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "use same version cache, safeVersion : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 15
    iget-object p1, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_7
    return v3

    .line 16
    :cond_8
    iget-object v5, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 17
    iput-object v4, v5, LXI/xo/XI/XI/K0;->XI:Ljava/lang/String;

    const-string v4, "com.meizu.flyme.openidsdk"

    .line 18
    invoke-virtual {p2, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v4, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    :goto_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_b
    const/4 p2, 0x1

    :goto_5
    if-eqz p2, :cond_11

    const-string p2, "content://com.meizu.flyme.openidsdk/"

    .line 19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v2, [Ljava/lang/String;

    const-string p1, "supported"

    aput-object p1, v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, LXI/xo/XI/XI/CA;->XI(Landroid/database/Cursor;)LXI/xo/XI/XI/kM;

    move-result-object p1

    const/16 p2, 0x3e8

    iget v0, p1, LXI/xo/XI/XI/kM;->K0:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v0, :cond_c

    const-string p2, "0"

    :try_start_2
    iget-object p1, p1, LXI/xo/XI/XI/kM;->XI:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_d

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_f

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "querySupport, Exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_f

    :goto_7
    goto :goto_6

    .line 20
    :cond_f
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query support, result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    return v3

    :goto_9
    if-eqz v1, :cond_10

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw p1

    .line 23
    :cond_11
    iget-object p1, p0, LXI/xo/XI/XI/CA;->CA:LXI/xo/XI/XI/K0;

    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, LXI/xo/XI/XI/K0;->K0:Ljava/lang/Boolean;

    return v3
.end method
