.class public Lcom/bytedance/applog/l;
.super Lcom/bytedance/applog/f;
.source ""


# static fields
.field public static final g:[J


# instance fields
.field public f:Lcom/bytedance/applog/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/l;->g:[J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;)V

    new-instance v0, Lcom/bytedance/applog/m0;

    .line 1
    iget-object p1, p1, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    const-string v1, "sender_"

    .line 2
    invoke-direct {v0, v1, p1}, Lcom/bytedance/applog/m0;-><init>(Ljava/lang/String;Lcom/bytedance/applog/x;)V

    iput-object v0, p0, Lcom/bytedance/applog/l;->f:Lcom/bytedance/applog/m0;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 22

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    if-eqz v0, :cond_0

    const-wide/32 v4, 0xc350

    .line 2
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/applog/m;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "play_session"

    invoke-static {v2, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bytedance/applog/AppLog;->flush()V

    :cond_0
    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/h;->a()Lcom/bytedance/applog/w0;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 3
    iget-object v2, v2, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 4
    invoke-virtual {v2}, Lcom/bytedance/applog/y;->c()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "U SHALL NOT PASS!"

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7, v2}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/bytedance/applog/w0;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget-object v2, v1, Lcom/bytedance/applog/l;->f:Lcom/bytedance/applog/m0;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/applog/m0;->a()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v2, Lcom/bytedance/applog/m0;->f:J

    sub-long v9, v7, v9

    sget-object v11, Lcom/bytedance/applog/m0;->h:[[J

    iget v12, v2, Lcom/bytedance/applog/m0;->c:I

    aget-object v13, v11, v12

    aget-wide v14, v13, v4

    cmp-long v13, v9, v14

    if-ltz v13, :cond_3

    iput v5, v2, Lcom/bytedance/applog/m0;->d:I

    iput-wide v7, v2, Lcom/bytedance/applog/m0;->f:J

    goto :goto_0

    :cond_3
    iget v7, v2, Lcom/bytedance/applog/m0;->d:I

    int-to-long v8, v7

    aget-object v10, v11, v12

    const/4 v11, 0x2

    aget-wide v11, v10, v11

    cmp-long v10, v8, v11

    if-gez v10, :cond_4

    add-int/2addr v7, v5

    iput v7, v2, Lcom/bytedance/applog/m0;->d:I

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_11

    .line 7
    :cond_6
    iget-object v2, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 8
    iget-object v7, v2, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/applog/h;->a()Lcom/bytedance/applog/w0;

    move-result-object v2

    iget-object v8, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 10
    iget-object v8, v8, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 11
    invoke-virtual {v2}, Lcom/bytedance/applog/w0;->a()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v0, :cond_7

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v12, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v8}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v12, v8, v4}, Lcom/bytedance/applog/s0;->a(Lcom/bytedance/applog/h;Lorg/json/JSONObject;Z)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/applog/b1;

    iget-object v14, v13, Lcom/bytedance/applog/b1;->k:[B

    if-eqz v14, :cond_11

    array-length v15, v14

    if-gtz v15, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-static {v8, v14, v7}, Lcom/bytedance/applog/r0;->a([Ljava/lang/String;[BLcom/bytedance/applog/x;)I

    move-result v14

    invoke-static {v14}, Lcom/bytedance/applog/r0;->a(I)Z

    move-result v15

    const-string v6, "downgrade_index"

    const-string v4, "downgrade_time"

    if-eqz v15, :cond_b

    iget-object v0, v1, Lcom/bytedance/applog/l;->f:Lcom/bytedance/applog/m0;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/applog/m0;->a()Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_8

    :cond_9
    iget v7, v0, Lcom/bytedance/applog/m0;->c:I

    sget-object v8, Lcom/bytedance/applog/m0;->h:[[J

    array-length v8, v8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_a

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v12, v0, Lcom/bytedance/applog/m0;->c:I

    add-int/2addr v12, v5

    iput v12, v0, Lcom/bytedance/applog/m0;->c:I

    iput v5, v0, Lcom/bytedance/applog/m0;->d:I

    const/4 v12, 0x0

    iput v12, v0, Lcom/bytedance/applog/m0;->e:I

    iput-wide v7, v0, Lcom/bytedance/applog/m0;->f:J

    iput-wide v7, v0, Lcom/bytedance/applog/m0;->g:J

    iget-object v12, v0, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 14
    iget-object v12, v12, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 15
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-static {v13, v14, v4}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v0, v0, Lcom/bytedance/applog/m0;->c:I

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 16
    iput v4, v0, Lcom/bytedance/applog/m0;->e:I

    goto/16 :goto_8

    :cond_b
    const/16 v15, 0xc8

    if-ne v14, v15, :cond_10

    .line 17
    iget-object v14, v1, Lcom/bytedance/applog/l;->f:Lcom/bytedance/applog/m0;

    .line 18
    invoke-virtual {v14}, Lcom/bytedance/applog/m0;->a()Z

    move-result v15

    if-nez v15, :cond_d

    :cond_c
    :goto_3
    move-object/from16 v16, v7

    goto :goto_5

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget v15, v14, Lcom/bytedance/applog/m0;->e:I

    move-object/from16 v19, v6

    int-to-long v5, v15

    sget-object v20, Lcom/bytedance/applog/m0;->h:[[J

    iget v1, v14, Lcom/bytedance/applog/m0;->c:I

    aget-object v1, v20, v1

    const/16 v18, 0x1

    aget-wide v20, v1, v18

    cmp-long v1, v5, v20

    if-gez v1, :cond_f

    iget-wide v5, v14, Lcom/bytedance/applog/m0;->g:J

    sub-long v16, v16, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v1, v16, v5

    if-lez v1, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/bytedance/applog/m0;->e:I

    goto :goto_3

    :cond_f
    :goto_4
    iget v1, v14, Lcom/bytedance/applog/m0;->c:I

    if-lez v1, :cond_c

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v1, v14, Lcom/bytedance/applog/m0;->c:I

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    iput v1, v14, Lcom/bytedance/applog/m0;->c:I

    iput v15, v14, Lcom/bytedance/applog/m0;->d:I

    iput v15, v14, Lcom/bytedance/applog/m0;->e:I

    iput-wide v5, v14, Lcom/bytedance/applog/m0;->f:J

    iput-wide v5, v14, Lcom/bytedance/applog/m0;->g:J

    iget-object v1, v14, Lcom/bytedance/applog/m0;->b:Lcom/bytedance/applog/x;

    .line 20
    iget-object v1, v1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 21
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    iget-object v7, v14, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    invoke-static {v15, v7, v4}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v14, Lcom/bytedance/applog/m0;->a:Ljava/lang/String;

    move-object/from16 v6, v19

    invoke-static {v4, v5, v6}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, v14, Lcom/bytedance/applog/m0;->c:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_5
    if-eqz v0, :cond_12

    .line 22
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v13, v5, v1, v4}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_7

    :cond_10
    move-object/from16 v16, v7

    iput v14, v13, Lcom/bytedance/applog/b1;->m:I

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_11
    :goto_6
    move-object/from16 v16, v7

    :cond_12
    :goto_7
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, v16

    goto/16 :goto_2

    :cond_13
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    goto :goto_9

    :cond_14
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 23
    :cond_15
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/bytedance/applog/u0;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x337f9800

    cmp-long v8, v4, v6

    if-lez v8, :cond_16

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_17
    :try_start_0
    iget-object v0, v2, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "DELETE FROM pack WHERE _id=?"

    const/4 v5, 0x1

    :try_start_3
    new-array v7, v5, [Ljava/lang/String;

    iget-wide v12, v1, Lcom/bytedance/applog/u0;->a:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v7, v12

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 24
    :try_start_4
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_18
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;

    iget-object v4, v1, Lcom/bytedance/applog/b1;->r:Lcom/bytedance/applog/a1;

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;)Z

    :cond_19
    iget-wide v4, v1, Lcom/bytedance/applog/u0;->a:J

    iget v7, v1, Lcom/bytedance/applog/b1;->l:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    :try_start_5
    iput v7, v1, Lcom/bytedance/applog/b1;->l:I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE pack SET _fail="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " WHERE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_c

    :cond_1a
    const/16 v18, 0x1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_d

    :catchall_2
    move-exception v0

    const/16 v18, 0x1

    goto :goto_d

    :catchall_3
    move-exception v0

    const/16 v18, 0x1

    const/4 v6, 0x0

    .line 28
    :goto_d
    :try_start_7
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_1b

    .line 29
    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 30
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_1b
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sender"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_1c

    .line 33
    :try_start_9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 34
    invoke-static {v3, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_1c
    :goto_f
    throw v1

    :cond_1d
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 36
    invoke-static {v3, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_1e
    const/4 v12, 0x0

    :goto_10
    const/16 v18, 0x0

    :goto_11
    return v18
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "sender"

    return-object v0
.end method

.method public e()[J
    .locals 1

    sget-object v0, Lcom/bytedance/applog/l;->g:[J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "batch_event_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
