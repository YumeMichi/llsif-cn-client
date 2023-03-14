.class public Lcom/bytedance/applog/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/m$b;
    }
.end annotation


# static fields
.field public static m:J

.field public static n:J

.field public static o:Lcom/bytedance/applog/m$b;


# instance fields
.field public final a:Lcom/bytedance/applog/h;

.field public b:Lcom/bytedance/applog/c1;

.field public c:Lcom/bytedance/applog/c1;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:J

.field public volatile h:Z

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;

.field public volatile l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/applog/m;->g:J

    iput-object p1, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    return-void
.end method

.method public static b()J
    .locals 4

    sget-wide v0, Lcom/bytedance/applog/m;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/applog/m;->n:J

    return-wide v0
.end method

.method public static b(Lcom/bytedance/applog/u0;)Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/applog/c1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/applog/c1;

    invoke-virtual {p0}, Lcom/bytedance/applog/c1;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v1, v1, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v1, v1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/applog/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/bytedance/applog/m;->e:J

    sub-long v1, p1, v1

    cmp-long v3, v1, p3

    if-lez v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p3, p0, Lcom/bytedance/applog/m;->j:I

    const-string p4, "session_no"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p3, p0, Lcom/bytedance/applog/m;->f:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/bytedance/applog/m;->f:I

    const-string p4, "send_times"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide p3, p0, Lcom/bytedance/applog/m;->e:J

    sub-long p3, p1, p3

    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    const-string v1, "current_duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide p3, p0, Lcom/bytedance/applog/m;->g:J

    .line 4
    sget-object v1, Lcom/bytedance/applog/u0;->j:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "session_start_time"

    .line 5
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/bytedance/applog/m;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;Z)Lcom/bytedance/applog/a1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/u0;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;Z)",
            "Lcom/bytedance/applog/a1;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/bytedance/applog/m$b;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/bytedance/applog/u0;->b:J

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    iget-boolean p1, p1, Lcom/bytedance/applog/h;->v:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/m;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/applog/m;->l:Ljava/lang/String;

    :cond_1
    const-wide/16 v5, 0x2710

    sput-wide v5, Lcom/bytedance/applog/m;->n:J

    iput-wide v3, p0, Lcom/bytedance/applog/m;->g:J

    iput-boolean p3, p0, Lcom/bytedance/applog/m;->h:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/bytedance/applog/m;->i:J

    const/4 p1, 0x1

    if-eqz p3, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const-string v0, ""

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    .line 13
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 14
    iget-object v5, p0, Lcom/bytedance/applog/m;->k:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 15
    iget-object v5, v0, Lcom/bytedance/applog/x;->d:Landroid/content/SharedPreferences;

    const-string v7, "session_last_day"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    iput-object v5, p0, Lcom/bytedance/applog/m;->k:Ljava/lang/String;

    .line 17
    iget-object v5, v0, Lcom/bytedance/applog/x;->d:Landroid/content/SharedPreferences;

    const-string v7, "session_order"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 18
    iput v5, p0, Lcom/bytedance/applog/m;->j:I

    :cond_2
    iget-object v5, p0, Lcom/bytedance/applog/m;->k:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-object p3, p0, Lcom/bytedance/applog/m;->k:Ljava/lang/String;

    iput p1, p0, Lcom/bytedance/applog/m;->j:I

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/bytedance/applog/m;->j:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/bytedance/applog/m;->j:I

    :goto_1
    iget v5, p0, Lcom/bytedance/applog/m;->j:I

    .line 19
    iget-object v0, v0, Lcom/bytedance/applog/x;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "session_last_day"

    invoke-interface {v0, v7, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "session_order"

    invoke-interface {p3, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    iput v6, p0, Lcom/bytedance/applog/m;->f:I

    :cond_4
    const/4 p3, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    new-instance v0, Lcom/bytedance/applog/a1;

    invoke-direct {v0}, Lcom/bytedance/applog/a1;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/bytedance/applog/m;->h:Z

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/bytedance/applog/a1;->m:Z

    invoke-static {}, Lcom/bytedance/applog/m;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/applog/u0;->c:J

    iget-wide v1, p0, Lcom/bytedance/applog/m;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/applog/u0;->a(J)V

    iget-object p1, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    .line 21
    iget-object p1, p1, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/applog/y;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/applog/a1;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    .line 23
    iget-object p1, p1, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/applog/y;->e()I

    move-result p1

    iput p1, v0, Lcom/bytedance/applog/a1;->k:I

    sget-wide v1, Lcom/bytedance/applog/m;->m:J

    iput-wide v1, v0, Lcom/bytedance/applog/u0;->e:J

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/applog/u0;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, p3

    :goto_2
    sget p1, Lcom/bytedance/applog/AppLog;->sLaunchFrom:I

    if-gtz p1, :cond_6

    const/4 p1, 0x6

    sput p1, Lcom/bytedance/applog/AppLog;->sLaunchFrom:I

    :cond_6
    const-string p1, "startSession, "

    invoke-static {p1}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/bytedance/applog/m;->h:Z

    if-eqz p2, :cond_7

    const-string p2, "fg"

    goto :goto_3

    :cond_7
    const-string p2, "bg"

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1, p3}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/bytedance/applog/u0;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-wide v0, Lcom/bytedance/applog/m;->m:J

    iput-wide v0, p1, Lcom/bytedance/applog/u0;->e:J

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/m;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/applog/u0;->c:J

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/applog/u0;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/h;->b()I

    move-result v0

    iput v0, p1, Lcom/bytedance/applog/u0;->h:I

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/applog/m;->h:Z

    if-eqz v0, :cond_0

    .line 7
    iget-wide v0, p0, Lcom/bytedance/applog/m;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/u0;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/bytedance/applog/c1;

    invoke-static {p1}, Lcom/bytedance/applog/m;->b(Lcom/bytedance/applog/u0;)Z

    move-result v1

    iget-wide v2, p0, Lcom/bytedance/applog/m;->g:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/bytedance/applog/m;->b(Lcom/bytedance/applog/u0;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;Z)Lcom/bytedance/applog/a1;

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/applog/m;->h:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v4}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;Z)Lcom/bytedance/applog/a1;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/bytedance/applog/m;->i:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_2

    iget-wide v7, p1, Lcom/bytedance/applog/u0;->b:J

    iget-object v9, p0, Lcom/bytedance/applog/m;->a:Lcom/bytedance/applog/h;

    .line 8
    iget-object v9, v9, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 9
    iget-object v9, v9, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x7530

    const-string v12, "session_interval"

    invoke-interface {v9, v12, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    add-long/2addr v9, v2

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-wide v2, p0, Lcom/bytedance/applog/m;->g:J

    iget-wide v7, p1, Lcom/bytedance/applog/u0;->b:J

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v7, v9

    cmp-long v9, v2, v7

    if-lez v9, :cond_3

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;Z)Lcom/bytedance/applog/a1;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/bytedance/applog/c1;

    invoke-virtual {v0}, Lcom/bytedance/applog/c1;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p1, Lcom/bytedance/applog/u0;->b:J

    iput-wide v1, p0, Lcom/bytedance/applog/m;->e:J

    iput-wide v5, p0, Lcom/bytedance/applog/m;->i:J

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v0, Lcom/bytedance/applog/c1;->l:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/bytedance/applog/m;->c:Lcom/bytedance/applog/c1;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_4

    iget-wide v5, v0, Lcom/bytedance/applog/u0;->b:J

    iget-wide v7, p2, Lcom/bytedance/applog/u0;->b:J

    sub-long/2addr v5, v7

    iget-wide v7, p2, Lcom/bytedance/applog/c1;->k:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/bytedance/applog/m;->b:Lcom/bytedance/applog/c1;

    if-eqz p2, :cond_9

    iget-wide v5, v0, Lcom/bytedance/applog/u0;->b:J

    iget-wide v7, p2, Lcom/bytedance/applog/u0;->b:J

    sub-long/2addr v5, v7

    iget-wide v7, p2, Lcom/bytedance/applog/c1;->k:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v1

    if-gez v3, :cond_9

    :goto_2
    iget-object p2, p2, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/applog/c1;->l:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-wide v1, p1, Lcom/bytedance/applog/u0;->b:J

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/bytedance/applog/m;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "play_session"

    invoke-static {v2, v1}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iput-wide v5, p0, Lcom/bytedance/applog/m;->e:J

    iget-wide v1, v0, Lcom/bytedance/applog/u0;->b:J

    iput-wide v1, p0, Lcom/bytedance/applog/m;->i:J

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    iput-object v0, p0, Lcom/bytedance/applog/m;->b:Lcom/bytedance/applog/c1;

    goto :goto_3

    :cond_7
    iput-object v0, p0, Lcom/bytedance/applog/m;->c:Lcom/bytedance/applog/c1;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/applog/m;->b:Lcom/bytedance/applog/c1;

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lcom/bytedance/applog/m$b;

    if-nez v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;)V

    return v4
.end method
