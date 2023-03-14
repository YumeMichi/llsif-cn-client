.class public abstract Lcom/bytedance/applog/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/applog/h;

.field public b:I

.field public c:Z

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/h;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 2
    iput-wide p2, p0, Lcom/bytedance/applog/f;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    const-string v0, " worked:"

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->b()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/applog/f;->c()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/applog/f;->d:J

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/bytedance/applog/f;->b:I

    add-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lcom/bytedance/applog/f;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "U SHALL NOT PASS!"

    .line 2
    invoke-static {v4, v3}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/applog/f;->d:J

    iget v3, p0, Lcom/bytedance/applog/f;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bytedance/applog/f;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_1
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/applog/f;->b()J

    move-result-wide v1

    goto :goto_3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/applog/f;->d:J

    iget v4, p0, Lcom/bytedance/applog/f;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bytedance/applog/f;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    throw v3

    :cond_1
    :goto_3
    return-wide v1
.end method

.method public final b()J
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/h;->b()I

    move-result v0

    sget-object v1, Lcom/bytedance/applog/a2$a;->c:Lcom/bytedance/applog/a2$a;

    .line 1
    iget v1, v1, Lcom/bytedance/applog/a2$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "checkWorkTime, 0"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/applog/f;->c:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput-wide v1, p0, Lcom/bytedance/applog/f;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/f;->c:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bytedance/applog/f;->b:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/applog/f;->e()[J

    move-result-object v1

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-wide v0, v1, v0

    move-wide v1, v0

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/applog/f;->g()J

    move-result-wide v1

    :goto_0
    iget-wide v3, p0, Lcom/bytedance/applog/f;->d:J

    add-long/2addr v1, v3

    move-wide v0, v1

    :goto_1
    return-wide v0
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()[J
.end method

.method public abstract f()Z
.end method

.method public abstract g()J
.end method

.method public h()Lcom/bytedance/applog/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/bytedance/applog/f;",
            ">()TT;"
        }
    .end annotation

    const-string v0, "setImmediately, "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/applog/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/applog/f;->c:Z

    return-object p0
.end method
