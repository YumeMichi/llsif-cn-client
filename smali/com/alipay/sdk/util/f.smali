.class public Lcom/alipay/sdk/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/f$c;,
        Lcom/alipay/sdk/util/f$d;,
        Lcom/alipay/sdk/util/f$e;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "failed"

.field public static final k:Ljava/lang/String; = "scheme_failed"


# instance fields
.field public a:Landroid/app/Activity;

.field public volatile b:Lcom/alipay/android/app/IAlixPay;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Lcom/alipay/sdk/util/f$e;

.field public final f:Lcom/alipay/sdk/sys/a;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/util/f$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alipay/sdk/util/f;->g:Z

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->h:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->i:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 138
    iput-object p2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    .line 139
    iput-object p3, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$e;

    const-string p1, "mspl"

    const-string p2, "alipaySdk"

    .line 140
    invoke-static {p1, p2}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/sys/a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 382
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 383
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-static/range {p2 .. p2}, Lcom/alipay/sdk/util/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/alipay/sdk/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "biz"

    const-string v11, "PgBindStarting"

    invoke-static {v4, v10, v11, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v10, v4, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v4, v2, v10}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 401
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "biz"

    const-string v12, "stSrv"

    if-eqz v0, :cond_1

    .line 404
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "null"

    :goto_1
    :try_start_2
    invoke-static {v4, v11, v12, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "biz"

    const-string v11, "stSrv"

    const-string v12, "skipped"

    .line 407
    invoke-static {v4, v0, v11, v12}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v11, "biz"

    const-string v12, "TryStartServiceEx"

    .line 410
    invoke-static {v4, v11, v12, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    :goto_2
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x41

    const-string v11, "biz"

    const-string v12, "bindFlg"

    const-string v13, "imp"

    .line 418
    invoke-static {v4, v11, v12, v13}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 421
    :goto_3
    new-instance v11, Lcom/alipay/sdk/util/f$d;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, Lcom/alipay/sdk/util/f$d;-><init>(Lcom/alipay/sdk/util/f;Lcom/alipay/sdk/util/f$a;)V

    .line 423
    iget-object v13, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5, v11, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_11

    .line 433
    iget-object v5, v1, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 434
    :try_start_4
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-nez v0, :cond_4

    .line 436
    :try_start_5
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/sdk/data/a;->j()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_6
    const-string v13, "biz"

    const-string v14, "BindWaitTimeoutEx"

    .line 438
    invoke-static {v4, v13, v14, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    :cond_4
    :goto_4
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    .line 443
    iget-object v5, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    if-nez v5, :cond_6

    .line 448
    :try_start_7
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/alipay/sdk/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    const-string v3, "biz"

    const-string v7, "ClientBindFailed"

    .line 449
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v7, v0}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v3, Landroid/util/Pair;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const-string v0, "failed"

    :try_start_9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 522
    :try_start_a
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 524
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 528
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v4, v5, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v5, v4, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v4, v2, v5}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iput-object v12, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 532
    iget-boolean v0, v1, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 534
    iput-boolean v9, v1, Lcom/alipay/sdk/util/f;->d:Z

    :cond_5
    return-object v3

    .line 535
    :cond_6
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const-string v0, "biz"

    const-string v3, "PgBinded"

    .line 536
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0, v3, v6}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$e;

    if-eqz v0, :cond_7

    .line 539
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$e;

    invoke-interface {v0}, Lcom/alipay/sdk/util/f$e;->b()V

    .line 542
    :cond_7
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_8

    .line 543
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 544
    iput-boolean v10, v1, Lcom/alipay/sdk/util/f;->d:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 550
    :cond_8
    :try_start_d
    invoke-interface {v5}, Lcom/alipay/android/app/IAlixPay;->getVersion()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 552
    :try_start_e
    invoke-static {v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 555
    :goto_6
    new-instance v3, Lcom/alipay/sdk/util/f$c;

    invoke-direct {v3, v1, v12}, Lcom/alipay/sdk/util/f$c;-><init>(Lcom/alipay/sdk/util/f;Lcom/alipay/sdk/util/f$a;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v6, 0x3

    if-lt v0, v6, :cond_9

    .line 558
    :try_start_f
    invoke-interface {v5, v3, v2, v12}, Lcom/alipay/android/app/IAlixPay;->registerCallback03(Lcom/alipay/android/app/IRemoteServiceCallback;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 560
    :cond_9
    invoke-interface {v5, v3}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 563
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    const-string v15, "biz"

    const-string v12, "PgBindPay"

    .line 564
    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v16, v11

    :try_start_11
    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v15, v12, v6}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    if-lt v0, v6, :cond_a

    const-string v6, "biz"

    const-string v11, "bind_pay"

    const/4 v12, 0x0

    .line 566
    invoke-interface {v5, v6, v11, v12}, Lcom/alipay/android/app/IAlixPay;->r03(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_a
    const/4 v6, 0x2

    if-lt v0, v6, :cond_b

    .line 572
    :try_start_12
    invoke-static/range {p3 .. p3}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-string v6, "ts_bind"

    .line 573
    :try_start_13
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const-string v6, "ts_bend"

    .line 574
    :try_start_14
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const-string v6, "ts_pay"

    .line 575
    :try_start_15
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-interface {v5, v2, v0}, Lcom/alipay/android/app/IAlixPay;->pay02(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 578
    :cond_b
    invoke-interface {v5, v2}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_8
    move-object v6, v0

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_16
    const-string v6, "biz"

    const-string v7, "ClientBindException"

    .line 583
    invoke-static {v4, v6, v7, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    invoke-static {}, Lcom/alipay/sdk/app/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_8

    .line 594
    :goto_9
    :try_start_17
    invoke-interface {v5, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 597
    invoke-static {v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 601
    :goto_a
    :try_start_18
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    .line 603
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 607
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "biz"

    const-string v5, "PgBindEnd"

    invoke-static {v4, v3, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v3, v4, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 610
    iput-object v2, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 611
    iget-boolean v0, v1, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 612
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 613
    iput-boolean v2, v1, Lcom/alipay/sdk/util/f;->d:Z

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    .line 617
    :goto_c
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_6
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v7, v11

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v7, v11

    const/4 v3, 0x0

    :goto_d
    :try_start_19
    const-string v6, "biz"

    const-string v8, "ClientBindFailed"

    const-string v9, "in_bind"

    .line 618
    invoke-static {v4, v6, v8, v0, v9}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 619
    new-instance v6, Landroid/util/Pair;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    const-string v0, "failed"

    const/4 v8, 0x1

    :try_start_1a
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v3, :cond_d

    .line 623
    :try_start_1b
    invoke-interface {v5, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v3, v0

    .line 626
    invoke-static {v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 630
    :cond_d
    :goto_e
    :try_start_1c
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    .line 632
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 636
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "biz"

    const-string v5, "PgBindEnd"

    invoke-static {v4, v3, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v3, v4, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 639
    iput-object v2, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 640
    iget-boolean v0, v1, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    .line 641
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 642
    iput-boolean v2, v1, Lcom/alipay/sdk/util/f;->d:Z

    :cond_e
    return-object v6

    :catchall_b
    move-exception v0

    move-object v6, v0

    if-eqz v3, :cond_f

    .line 643
    :try_start_1d
    invoke-interface {v5, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object v3, v0

    .line 646
    invoke-static {v3}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 650
    :cond_f
    :goto_10
    :try_start_1e
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    .line 652
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 656
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "biz"

    const-string v5, "PgBindEnd"

    invoke-static {v4, v3, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v3, v4, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 659
    iput-object v2, v1, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 660
    iget-boolean v0, v1, Lcom/alipay/sdk/util/f;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    .line 661
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 662
    iput-boolean v2, v1, Lcom/alipay/sdk/util/f;->d:Z

    :cond_10
    throw v6

    :catchall_e
    move-exception v0

    .line 663
    :try_start_1f
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw v0

    .line 664
    :cond_11
    :try_start_20
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "bindService fail"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    :catchall_f
    move-exception v0

    const-string v2, "biz"

    const-string v3, "ClientBindServiceFailed"

    .line 667
    invoke-static {v4, v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "failed"

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/alipay/sdk/util/f;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method public static synthetic a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/alipay/sdk/util/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "scheme_failed"

    const-string v0, "sc"

    const-string v4, ""

    .line 205
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v7, 0x20

    .line 206
    invoke-static {v7}, Lcom/alipay/sdk/util/l;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 210
    iget-object v10, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "biz"

    const-string v13, "BSPStart"

    invoke-static {v10, v12, v13, v11}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v10, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v10, v7}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    .line 214
    new-instance v10, Lcom/alipay/sdk/util/f$a;

    invoke-direct {v10, v1, v5}, Lcom/alipay/sdk/util/f$a;-><init>(Lcom/alipay/sdk/util/f;Ljava/util/concurrent/CountDownLatch;)V

    .line 221
    sget-object v11, Lcom/alipay/sdk/app/AlipayResultActivity;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v13, "&"

    const/4 v14, -0x1

    .line 253
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 258
    array-length v14, v13

    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x0

    if-ge v15, v14, :cond_2

    aget-object v10, v13, v15

    const-string v11, "bizcontext="

    .line 259
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "{"

    .line 261
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v13, "}"

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x0

    .line 264
    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 265
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 267
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "h5tonative"

    .line 269
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "h5tonative_scheme"

    .line 270
    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v6, "h5tonative_sdkscheme"

    .line 272
    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object v11, v4

    move-object v14, v11

    move-object/from16 v10, v16

    move-object v13, v10

    .line 277
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 286
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v6, "multi ctx_args"

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v6, "empty ctx_args"

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 296
    :try_start_1
    iget-object v6, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "BSPSCReplaceEx"

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v12, v10, v0, v11}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 300
    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "sourcePid"

    .line 301
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "external_info"

    .line 302
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "pkgName"

    .line 303
    :try_start_4
    iget-object v10, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "session"

    .line 304
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "alipays"

    .line 309
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "platformapi"

    .line 310
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "startapp"

    .line 311
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "appId"

    const-string v10, "20000125"

    .line 312
    invoke-virtual {v6, v7, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "mqpSchemePay"

    .line 313
    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    :try_start_5
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v0}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v7, "ts_scheme"

    .line 318
    :try_start_6
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v0, "mqpLoc"

    .line 320
    :try_start_7
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 322
    :try_start_8
    iget-object v7, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v8, "BSPLocEx"

    invoke-static {v7, v12, v8, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    :goto_3
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object/from16 v7, p2

    .line 327
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 328
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    iget-object v7, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v8, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v9, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v9, v9, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 337
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v2

    iget-object v6, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v7, v1, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Z)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "mspl"

    .line 339
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pay scheme waiting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 343
    iget-object v2, v1, Lcom/alipay/sdk/util/f;->h:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 347
    :try_start_a
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "resultStatus"

    .line 348
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v0, :cond_5

    const-string v0, "null"

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 353
    :try_start_b
    iget-object v5, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v6, "BSPStatEx"

    invoke-static {v5, v12, v6, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v0, "unknown"

    .line 357
    :cond_5
    :goto_4
    :try_start_c
    iget-object v5, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BSPDone-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v12, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 361
    iget-object v0, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v2, "BSPEmpty"

    invoke-static {v0, v12, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :cond_6
    move-object v3, v2

    goto :goto_6

    .line 370
    :goto_5
    iget-object v2, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v4, "BSPEx"

    invoke-static {v2, v12, v4, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 371
    iget-object v2, v1, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v3, "BSPWaiting"

    invoke-static {v2, v12, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    sget-object v0, Lcom/alipay/sdk/app/c;->i:Lcom/alipay/sdk/app/c;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/c;->b()I

    move-result v0

    sget-object v2, Lcom/alipay/sdk/app/c;->i:Lcom/alipay/sdk/app/c;

    invoke-virtual {v2}, Lcom/alipay/sdk/app/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/alipay/sdk/app/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    return-object v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p3, :cond_0

    .line 92
    iget v0, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_0
    if-eqz p3, :cond_1

    .line 93
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    const-string v0, "mspl"

    const-string v1, "pay bind or scheme"

    .line 94
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "biz"

    const-string v2, "PgWltVer"

    invoke-static {v0, v1, v2, p3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p3, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v1, v0, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {p3, v0, p1, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alipay/sdk/util/l$c;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 102
    iget v1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-eqz p3, :cond_1

    .line 103
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    const-string v3, "mspl"

    const-string v4, "pay bind or scheme"

    .line 105
    invoke-static {v3, v4}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v5, "biz"

    const-string v7, "PgWltVer"

    invoke-static {v4, v5, v7, p3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/alipay/sdk/sys/a;->g:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 115
    iget-object p3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object p3, p3, Lcom/alipay/sdk/sys/a;->g:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "auth"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_2
    const-string p3, "failed"

    if-nez v0, :cond_4

    .line 117
    invoke-static {}, Lcom/alipay/sdk/util/l;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_3

    .line 119
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-direct {p0, p4}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/l$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    :cond_3
    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v0, "BindSkipByModel"

    invoke-static {p4, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object p4, p3

    goto/16 :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v0, p2}, Lcom/alipay/sdk/util/l;->d(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 130
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-direct {p0, p4}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/l$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :catchall_1
    :cond_5
    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v0, "BindSkipByL"

    invoke-static {p4, v5, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    .line 143
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 145
    invoke-direct {p0, p4}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/l$c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 150
    :catchall_2
    :cond_7
    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-direct {p0, p1, p2, p4}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Landroid/util/Pair;

    move-result-object p4

    .line 151
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 155
    :try_start_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alipay/sdk/data/a;->m()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 157
    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v4, "BindRetry"

    invoke-static {p4, v5, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-direct {p0, p1, p2, p4}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Landroid/util/Pair;

    move-result-object p4

    .line 160
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p4

    .line 163
    iget-object v4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v7, "BindRetryEx"

    invoke-static {v4, v5, v7, p4}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object p4, v0

    .line 168
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay bind result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v4, v3, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, p1, v4}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 175
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/sdk/data/a;->h()Z

    move-result p3

    if-nez p3, :cond_9

    .line 179
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string p2, "BSPNotStartByConfig"

    invoke-static {p1, v5, p2, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_9
    const-string p3, "com.eg.android.AlipayGphone"

    .line 183
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    const/16 p3, 0x7d

    if-gt v1, p3, :cond_a

    goto :goto_5

    .line 190
    :cond_a
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/sdk/data/a;->l()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 191
    iget-object p3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    if-eqz p3, :cond_b

    iget p3, p3, Lcom/alipay/sdk/sys/a;->f:I

    invoke-static {p3}, Lcom/alipay/sdk/util/l;->b(I)I

    move-result p3

    if-eqz p3, :cond_b

    .line 193
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string p2, "BSPNotStartByUsr"

    invoke-static {p1, v5, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 197
    :cond_b
    iget-object p3, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    if-eqz p3, :cond_d

    iget-object p4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {p2, p3, p4}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/sys/a;)Z

    move-result p3

    if-nez p3, :cond_c

    goto :goto_4

    .line 203
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_4
    const-string p1, "scheme_failed"

    return-object p1

    .line 204
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BSPNotStartByPkg"

    invoke-static {p1, v5, p3, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-object p4
.end method

.method private a(Lcom/alipay/sdk/util/l$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object p1, p1, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    return-void

    .line 83
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alipay.android.app.TransProcessPayActivity"

    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 89
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v1, "biz"

    const-string v2, "StartLaunchAppTransEx"

    invoke-static {v0, v1, v2, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, 0xc8

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/sys/a;)Z
    .locals 6

    const-string v0, "BSPDetectFail"

    const-string v1, "biz"

    const/4 v2, 0x0

    .line 373
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "com.alipay.android.msp.ui.views.MspContainerActivity"

    .line 374
    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 377
    invoke-static {p2, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 381
    invoke-static {p2, v1, v0, p0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static synthetic b(Lcom/alipay/sdk/util/f;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lcom/alipay/sdk/util/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "scheme_failed"

    .line 3
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v2, 0x20

    .line 4
    invoke-static {v2}, Lcom/alipay/sdk/util/l;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 8
    iget-object v5, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "biz"

    const-string v8, "BSAStart"

    invoke-static {v5, v7, v8, v6}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v5, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v5, v2}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    .line 12
    new-instance v5, Lcom/alipay/sdk/util/f$b;

    invoke-direct {v5, p0, v1}, Lcom/alipay/sdk/util/f$b;-><init>(Lcom/alipay/sdk/util/f;Ljava/util/concurrent/CountDownLatch;)V

    .line 19
    sget-object v6, Lcom/alipay/sdk/app/APayEntranceActivity;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :try_start_0
    iget-object v5, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {v5}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "ts_intent"

    .line 27
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 30
    :try_start_2
    iget-object v4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v5, "BSALocEx"

    invoke-static {v4, v7, v5, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 33
    :goto_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    const-class v6, Lcom/alipay/sdk/app/APayEntranceActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ap_order_info"

    .line 34
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "ap_target_packagename"

    .line 35
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ap_session"

    .line 36
    invoke-virtual {v4, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    const-string p2, "ap_local_info"

    .line 38
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v3, v3, Lcom/alipay/sdk/sys/a;->d:Ljava/lang/String;

    invoke-static {p2, v2, p1, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Z)V

    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 47
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    :try_start_4
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-static {p2, p1}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "resultStatus"

    .line 52
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p2, :cond_1

    const-string p2, "null"

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 57
    :try_start_5
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v2, "BSAStatEx"

    invoke-static {v1, v7, v2, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string p2, "unknown"

    .line 61
    :cond_1
    :goto_1
    :try_start_6
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSADone-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v7, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 65
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string p2, "BSAEmpty"

    invoke-static {p1, v7, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 74
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v1, "BSAEx"

    invoke-static {p2, v7, v1, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 75
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v0, "BSAWaiting"

    invoke-static {p2, v7, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    sget-object p1, Lcom/alipay/sdk/app/c;->i:Lcom/alipay/sdk/app/c;

    invoke-virtual {p1}, Lcom/alipay/sdk/app/c;->b()I

    move-result p1

    sget-object p2, Lcom/alipay/sdk/app/c;->i:Lcom/alipay/sdk/app/c;

    invoke-virtual {p2}, Lcom/alipay/sdk/app/c;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/app/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static synthetic c(Lcom/alipay/sdk/util/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic d(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/util/f$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$e;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/data/a;->k()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/sdk/data/a;->g:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 10
    :cond_0
    sget-object v2, Lcom/alipay/sdk/app/a;->d:Ljava/util/List;

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    iget-object v4, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v2}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/l$c;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "failed"

    if-eqz v2, :cond_8

    .line 16
    :try_start_1
    iget-object v4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    invoke-virtual {v2, v4}, Lcom/alipay/sdk/util/l$c;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/alipay/sdk/util/l$c;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 21
    :cond_2
    iget-object v4, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lcom/alipay/sdk/util/l;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 26
    :cond_3
    iget-object v3, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    const-string v3, "com.eg.android.AlipayGphone"

    :try_start_2
    iget-object v4, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    iget-object v3, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_5
    :goto_0
    invoke-static {}, Lcom/alipay/sdk/util/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_1
    iget-object v3, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_6

    .line 37
    iget-object v1, v2, Lcom/alipay/sdk/util/l$c;->a:Landroid/content/pm/PackageInfo;

    .line 41
    :cond_6
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/data/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_9

    .line 44
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 46
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 47
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 48
    :catch_0
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_7

    .line 51
    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lt v7, v6, :cond_7

    .line 53
    :try_start_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 55
    invoke-static {}, Lcom/alipay/sdk/data/a;->v()Lcom/alipay/sdk/data/a;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 56
    invoke-virtual {v6, v7, v5}, Lcom/alipay/sdk/data/a;->a(Landroid/content/Context;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/sdk/util/f;->g:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_7

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_8
    :goto_2
    return-object v3

    :catchall_1
    move-exception v3

    move-object v2, v1

    .line 72
    :goto_3
    iget-object v4, p0, Lcom/alipay/sdk/util/f;->f:Lcom/alipay/sdk/sys/a;

    const-string v5, "biz"

    const-string v6, "CheckClientSignEx"

    invoke-static {v4, v5, v6, v3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :catchall_2
    :cond_9
    :goto_4
    iget-boolean v3, p0, Lcom/alipay/sdk/util/f;->g:Z

    if-eqz v3, :cond_a

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_a
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alipay/sdk/util/l$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 672
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$e;

    return-void
.end method
