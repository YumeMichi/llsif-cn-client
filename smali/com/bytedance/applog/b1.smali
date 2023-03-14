.class public Lcom/bytedance/applog/b1;
.super Lcom/bytedance/applog/u0;
.source ""


# instance fields
.field public k:[B

.field public l:I

.field public m:I

.field public n:Lorg/json/JSONArray;

.field public o:J

.field public p:Lorg/json/JSONArray;

.field public q:J

.field public r:Lcom/bytedance/applog/a1;

.field public s:Lorg/json/JSONArray;

.field public t:Lcom/bytedance/applog/e1;

.field public u:Lorg/json/JSONObject;

.field public v:Lorg/json/JSONArray;

.field public w:J

.field public x:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/applog/u0;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lorg/json/JSONObject;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;",
            "Lorg/json/JSONObject;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Lcom/bytedance/applog/b1;

    invoke-direct {v9}, Lcom/bytedance/applog/b1;-><init>()V

    const/4 v1, 0x3

    new-array v6, v1, [Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v6, v3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x2

    aput-object v0, v6, v2

    new-array v7, v1, [J

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/u0;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "event"

    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v6, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    const-string v2, "eventv3"

    :try_start_2
    invoke-virtual {v1}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v6, v4

    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/applog/u0;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    invoke-virtual {v9}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "U SHALL NOT PASS!"

    .line 2
    invoke-static {p1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 2
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/u0;->a:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/u0;->b:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/b1;->k:[B

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/applog/b1;->l:I

    const-string p1, ""

    iput-object p1, p0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/applog/b1;->u:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->t:Lcom/bytedance/applog/e1;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->n:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->v:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/bytedance/applog/b1;->x:Lorg/json/JSONArray;

    const/4 p1, 0x4

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/applog/u0;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    const-string v0, "U SHALL NOT PASS!"

    .line 1
    invoke-static {v0, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/applog/u0;->a(J)V

    iput-object p1, p0, Lcom/bytedance/applog/b1;->u:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    iput-object p3, p0, Lcom/bytedance/applog/b1;->t:Lcom/bytedance/applog/e1;

    iput-object p4, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    const/4 p1, 0x0

    aget-object p2, p5, p1

    iput-object p2, p0, Lcom/bytedance/applog/b1;->n:Lorg/json/JSONArray;

    aget-wide p1, p6, p1

    iput-wide p1, p0, Lcom/bytedance/applog/b1;->o:J

    const/4 p1, 0x1

    aget-object p2, p5, p1

    iput-object p2, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    aget-wide p1, p6, p1

    iput-wide p1, p0, Lcom/bytedance/applog/b1;->q:J

    const/4 p1, 0x2

    aget-object p2, p5, p1

    iput-object p2, p0, Lcom/bytedance/applog/b1;->v:Lorg/json/JSONArray;

    aget-wide p1, p6, p1

    iput-wide p1, p0, Lcom/bytedance/applog/b1;->w:J

    iput-object p7, p0, Lcom/bytedance/applog/b1;->x:Lorg/json/JSONArray;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "integer primary key autoincrement"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "local_time_ms"

    aput-object v2, v0, v1

    const-string v1, "integer"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "blob"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "_fail"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/bytedance/applog/u0;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/bytedance/applog/b1;->i()[B

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    const-string v0, "U SHALL NOT PASS!"

    .line 1
    invoke-static {v0, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/applog/u0;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "pack"

    return-object v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/applog/b1;->u:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/bytedance/applog/r0;->b:Lorg/json/JSONObject;

    const-string v2, "time_sync"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "local_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    invoke-virtual {v2}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "launch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/applog/b1;->t:Lcom/bytedance/applog/e1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "page_key"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "duration"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    const-string v3, "activites"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    sget v3, Lcom/bytedance/applog/AppLog;->sLaunchFrom:I

    if-lez v3, :cond_4

    const-string v4, "launch_from"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sput v2, Lcom/bytedance/applog/AppLog;->sLaunchFrom:I

    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "terminate"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/bytedance/applog/b1;->n:Lorg/json/JSONArray;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-lez v1, :cond_7

    iget-object v3, p0, Lcom/bytedance/applog/b1;->n:Lorg/json/JSONArray;

    const-string v4, "event"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v3, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-static {}, Lcom/bytedance/applog/h;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    iput-object v4, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    goto :goto_5

    :cond_9
    if-lez v3, :cond_a

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_a

    iget-object v5, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bytedance/applog/b1;->s:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object v4, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-lez v4, :cond_c

    iget-object v5, p0, Lcom/bytedance/applog/b1;->p:Lorg/json/JSONArray;

    const-string v6, "event_v3"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v5, p0, Lcom/bytedance/applog/b1;->v:Lorg/json/JSONArray;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    if-lez v5, :cond_e

    iget-object v6, p0, Lcom/bytedance/applog/b1;->v:Lorg/json/JSONArray;

    const-string v7, "log_data"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v6, p0, Lcom/bytedance/applog/b1;->x:Lorg/json/JSONArray;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    :cond_f
    if-lez v2, :cond_10

    iget-object v6, p0, Lcom/bytedance/applog/b1;->x:Lorg/json/JSONArray;

    const-string v7, "item_impression"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pack {"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/bytedance/applog/u0;->b:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", la:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    const-string v8, "0"

    if-eqz v7, :cond_11

    goto :goto_8

    :cond_11
    move-object v7, v8

    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", te:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/applog/b1;->t:Lcom/bytedance/applog/e1;

    if-eqz v7, :cond_12

    goto :goto_9

    :cond_12
    move-object v7, v8

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", p:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v1:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v3:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imp:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public i()[B
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/b1;->k:[B

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/f1;->d(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/b1;->k:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/bytedance/applog/b1;->k:[B

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/bytedance/applog/w0;->f:[Lcom/bytedance/applog/w0$b;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/bytedance/applog/w0$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
