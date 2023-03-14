.class public final Lcom/bytedance/applog/p2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static k:Lcom/bytedance/applog/IOaidObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public b:Lcom/bytedance/applog/q2;

.field public c:Z

.field public d:Lcom/bytedance/applog/s2;

.field public final e:Landroid/content/Context;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/applog/p2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/p2;->i:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/applog/p2;->i:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/applog/p2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/applog/p2;->e:Landroid/content/Context;

    .line 1
    invoke-static {}, Lcom/bytedance/applog/u1;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/bytedance/applog/u2;

    new-instance v0, Lcom/bytedance/applog/z2;

    invoke-direct {v0}, Lcom/bytedance/applog/z2;-><init>()V

    invoke-direct {v2, v0}, Lcom/bytedance/applog/u2;-><init>(Lcom/bytedance/applog/q2;)V

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/z2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/bytedance/applog/z2;

    invoke-direct {v2}, Lcom/bytedance/applog/z2;-><init>()V

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/bytedance/applog/t2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/bytedance/applog/t2;

    invoke-direct {v2, p1}, Lcom/bytedance/applog/t2;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 2
    :cond_2
    invoke-static {}, Lcom/bytedance/applog/u1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HUAWEI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v2, Lcom/bytedance/applog/k2;

    invoke-direct {v2}, Lcom/bytedance/applog/k2;-><init>()V

    goto/16 :goto_4

    .line 4
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "OnePlus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v0, Lcom/bytedance/applog/u2;

    .line 6
    invoke-direct {v0, v2}, Lcom/bytedance/applog/u2;-><init>(Lcom/bytedance/applog/q2;)V

    move-object v2, v0

    goto/16 :goto_4

    .line 7
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "meizu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    .line 8
    new-instance v2, Lcom/bytedance/applog/n2;

    invoke-direct {v2}, Lcom/bytedance/applog/n2;-><init>()V

    goto/16 :goto_4

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_f

    .line 9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    .line 10
    new-instance v2, Lcom/bytedance/applog/x2;

    invoke-direct {v2}, Lcom/bytedance/applog/x2;-><init>()V

    goto/16 :goto_4

    .line 11
    :cond_9
    invoke-static {}, Lcom/bytedance/applog/u1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NUBIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12
    new-instance v2, Lcom/bytedance/applog/o2;

    invoke-direct {v2}, Lcom/bytedance/applog/o2;-><init>()V

    goto :goto_4

    .line 13
    :cond_a
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "VIBEUI_V2"

    if-nez v2, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3

    :cond_b
    const-string v0, "ro.build.version.incremental"

    invoke-static {v0}, Lcom/bytedance/applog/u1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    .line 14
    new-instance v2, Lcom/bytedance/applog/m2;

    invoke-direct {v2}, Lcom/bytedance/applog/m2;-><init>()V

    goto :goto_4

    .line 15
    :cond_d
    invoke-static {}, Lcom/bytedance/applog/u1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16
    new-instance v2, Lcom/bytedance/applog/b2;

    invoke-direct {v2}, Lcom/bytedance/applog/b2;-><init>()V

    goto :goto_4

    :cond_e
    new-instance v2, Lcom/bytedance/applog/f2;

    invoke-direct {v2}, Lcom/bytedance/applog/f2;-><init>()V

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/bytedance/applog/u1;->e()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/bytedance/applog/k2;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v2, Lcom/bytedance/applog/k2;

    invoke-direct {v2}, Lcom/bytedance/applog/k2;-><init>()V

    .line 17
    :cond_10
    :goto_4
    iput-object v2, p0, Lcom/bytedance/applog/p2;->b:Lcom/bytedance/applog/q2;

    iget-object v0, p0, Lcom/bytedance/applog/p2;->b:Lcom/bytedance/applog/q2;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/bytedance/applog/q2;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/applog/p2;->c:Z

    goto :goto_5

    :cond_11
    iput-boolean v1, p0, Lcom/bytedance/applog/p2;->c:Z

    :goto_5
    new-instance v0, Lcom/bytedance/applog/s2;

    invoke-direct {v0, p1}, Lcom/bytedance/applog/s2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/applog/p2;->d:Lcom/bytedance/applog/s2;

    return-void
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .locals 1
    .param p0    # Lcom/bytedance/applog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bytedance/applog/p2;->k:Lcom/bytedance/applog/IOaidObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/bytedance/applog/p2;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/applog/p2;->b()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/p2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/applog/p2$a;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/p2$a;-><init>(Lcom/bytedance/applog/p2;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    const-string v3, "-query"

    invoke-static {v1, v2, v3}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "TrackerDr"

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/applog/j2;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/applog/j2;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 12

    sget-object v0, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Oaid#initOaid"

    .line 1
    invoke-static {v0, v2, v1}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Oaid#initOaid exec"

    .line 3
    :try_start_1
    invoke-static {v0, v2, v1}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/applog/p2;->d:Lcom/bytedance/applog/s2;

    invoke-virtual {v0}, Lcom/bytedance/applog/s2;->a()Lcom/bytedance/applog/r2;

    move-result-object v0

    sget-object v2, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oaid#initOaid fetch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, v3, v1}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, v0, Lcom/bytedance/applog/r2;->a:Ljava/lang/String;

    sput-object v2, Lcom/bytedance/applog/p2;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/applog/r2;->a()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/applog/p2;->g:Ljava/util/Map;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/applog/p2;->e:Landroid/content/Context;

    .line 7
    iget-object v5, p0, Lcom/bytedance/applog/p2;->b:Lcom/bytedance/applog/q2;

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/bytedance/applog/q2;->a(Landroid/content/Context;)Lcom/bytedance/applog/q2$a;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/bytedance/applog/q2$a;->a:Ljava/lang/String;

    iget-boolean v6, v4, Lcom/bytedance/applog/q2$a;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    instance-of v7, v4, Lcom/bytedance/applog/k2$b;

    if-eqz v7, :cond_2

    check-cast v4, Lcom/bytedance/applog/k2$b;

    iget-wide v7, v4, Lcom/bytedance/applog/k2$b;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/applog/p2;->h:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v5, v1

    move-object v6, v5

    :cond_2
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/bytedance/applog/r2;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/applog/r2;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move-object v2, v1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v7, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    new-instance v10, Lcom/bytedance/applog/r2;

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/Boolean;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v11, p0, Lcom/bytedance/applog/p2;->h:Ljava/lang/Long;

    move-object v2, v10

    move-object v4, v7

    move-object v5, v8

    move-object v7, v9

    move-object v8, v0

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/applog/r2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/bytedance/applog/p2;->d:Lcom/bytedance/applog/s2;

    invoke-virtual {v0, v10}, Lcom/bytedance/applog/s2;->a(Lcom/bytedance/applog/r2;)V

    goto :goto_2

    :cond_6
    move-object v10, v1

    :goto_2
    if-eqz v10, :cond_7

    iget-object v0, v10, Lcom/bytedance/applog/r2;->a:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/applog/p2;->l:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/bytedance/applog/r2;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/p2;->g:Ljava/util/Map;

    :cond_7
    sget-object v0, Lcom/bytedance/applog/p2;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oaid#initOaid oaidModel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v0, v2, v1}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/applog/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v1, Lcom/bytedance/applog/p2;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/p2;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/applog/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v2, Lcom/bytedance/applog/p2;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/applog/p2;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    throw v0
.end method
