.class public Lcom/bytedance/applog/w0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/w0$a;,
        Lcom/bytedance/applog/w0$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/u0;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:[Lcom/bytedance/applog/u0;

.field public static final f:[Lcom/bytedance/applog/w0$b;


# instance fields
.field public final a:Lcom/bytedance/applog/h;

.field public final b:Lcom/bytedance/applog/w0$a;

.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/bytedance/applog/c1;

    invoke-direct {v0}, Lcom/bytedance/applog/c1;-><init>()V

    .line 1
    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/bytedance/applog/a1;

    invoke-direct {v0}, Lcom/bytedance/applog/a1;-><init>()V

    .line 3
    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "launch"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/bytedance/applog/e1;

    invoke-direct {v0}, Lcom/bytedance/applog/e1;-><init>()V

    .line 5
    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/bytedance/applog/b1;

    invoke-direct {v0}, Lcom/bytedance/applog/b1;-><init>()V

    .line 7
    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 8
    new-array v1, v0, [Lcom/bytedance/applog/u0;

    new-instance v2, Lcom/bytedance/applog/x0;

    invoke-direct {v2}, Lcom/bytedance/applog/x0;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/bytedance/applog/z0;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/bytedance/applog/z0;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/bytedance/applog/y0;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, ""

    invoke-direct {v2, v6, v5}, Lcom/bytedance/applog/y0;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    sget-object v1, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v2, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v7, v1, v6

    invoke-static {v7}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/u0;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Lcom/bytedance/applog/w0$b;

    new-instance v1, Lcom/bytedance/applog/w0$b;

    invoke-direct {v1}, Lcom/bytedance/applog/w0$b;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/applog/w0$b;

    invoke-direct {v1}, Lcom/bytedance/applog/w0$b;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/bytedance/applog/w0$b;

    invoke-direct {v1}, Lcom/bytedance/applog/w0$b;-><init>()V

    aput-object v1, v0, v5

    sput-object v0, Lcom/bytedance/applog/w0;->f:[Lcom/bytedance/applog/w0$b;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/applog/w0$a;

    .line 1
    iget-object v1, p1, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    const/4 v2, 0x0

    const/16 v3, 0x24

    .line 2
    invoke-direct {v0, v1, p2, v2, v3}, Lcom/bytedance/applog/w0$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    iput-object p1, p0, Lcom/bytedance/applog/w0;->a:Lcom/bytedance/applog/h;

    return-void
.end method

.method public static a(Lcom/bytedance/applog/u0;)V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I
    .locals 17

    move-object/from16 v1, p5

    .line 39
    sget-object v0, Lcom/bytedance/applog/w0;->f:[Lcom/bytedance/applog/w0$b;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    const-string v6, ""

    iput-object v6, v5, Lcom/bytedance/applog/w0$b;->a:Ljava/lang/String;

    iput v3, v5, Lcom/bytedance/applog/w0$b;->b:I

    iput v3, v5, Lcom/bytedance/applog/w0$b;->c:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move/from16 v6, p1

    if-ge v0, v6, :cond_1

    .line 40
    aput-object v2, v1, v0

    aput-wide v4, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0xc8

    move v8, v0

    const/16 v7, 0xc8

    :goto_2
    if-lez v7, :cond_9

    sget-object v0, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v9, v0

    if-ge v8, v9, :cond_9

    .line 41
    aget-object v0, v0, v8

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 42
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " WHERE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "session_id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p4, :cond_2

    const-string v11, "=\'"

    goto :goto_3

    :cond_2
    const-string v11, "!=\'"

    :goto_3
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v11, p3

    :try_start_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' ORDER BY "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_id"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " LIMIT "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v12, p2

    .line 43
    :try_start_3
    invoke-virtual {v12, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v14, v4

    const/4 v13, 0x0

    :goto_4
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_5

    if-gt v13, v6, :cond_5

    invoke-virtual {v0, v10}, Lcom/bytedance/applog/u0;->a(Landroid/database/Cursor;)I

    sget-object v16, Lcom/bytedance/applog/w0;->f:[Lcom/bytedance/applog/w0$b;

    aget-object v3, v16, v8

    .line 44
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/w0$b;->a(Lcom/bytedance/applog/u0;)V

    .line 45
    sget-boolean v3, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryEvent, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-wide v4, v0, Lcom/bytedance/applog/u0;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v3, v4, v14

    if-lez v3, :cond_4

    move-wide v14, v4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc8

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    :goto_5
    move-object v10, v2

    const-wide/16 v14, 0x0

    :goto_6
    :try_start_5
    const-string v3, "U SHALL NOT PASS!"

    .line 46
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v10, :cond_6

    .line 47
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    aput-object v9, v1, v8

    aput-wide v14, p6, v8

    .line 48
    aget-object v0, v1, v8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v7, v0

    sget-object v3, Lcom/bytedance/applog/w0;->f:[Lcom/bytedance/applog/w0$b;

    aget-object v3, v3, v8

    iput v0, v3, Lcom/bytedance/applog/w0$b;->c:I

    if-lez v7, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc8

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    if-eqz v10, :cond_8

    .line 49
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    add-int/lit8 v0, v8, 0x1

    .line 50
    :goto_7
    array-length v3, v1

    if-ge v0, v3, :cond_a

    aput-object v2, v1, v0

    const-wide/16 v3, 0x0

    aput-wide v3, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    return v8
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "=\'"

    goto :goto_0

    :cond_0
    const-string p1, "!=\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/b1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY _id DESC LIMIT 8"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;

    invoke-virtual {v1, v3}, Lcom/bytedance/applog/b1;->a(Landroid/database/Cursor;)I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    :goto_1
    :try_start_2
    const-string v4, "U SHALL NOT PASS!"

    .line 51
    invoke-static {v4, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 52
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPack, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/b1;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/a1;

    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/bytedance/applog/e1;

    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/bytedance/applog/c1;

    sget-object v1, Lcom/bytedance/applog/w0;->d:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/bytedance/applog/b1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_1
    new-array v14, v1, [Lorg/json/JSONArray;

    new-array v15, v1, [J

    iget-object v1, v11, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "SELECT * FROM launch ORDER BY _id LIMIT 5"

    invoke-virtual {v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v1, v11, Lcom/bytedance/applog/w0;->a:Lcom/bytedance/applog/h;

    .line 18
    iget-object v1, v1, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 19
    iget-object v7, v1, Lcom/bytedance/applog/m;->d:Ljava/lang/String;

    .line 20
    iget-boolean v6, v1, Lcom/bytedance/applog/m;->h:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/high16 v16, -0x8000000000000000L

    const-wide v18, 0x7fffffffffffffffL

    move-object/from16 v24, v2

    move-wide/from16 v22, v16

    move-wide/from16 v20, v18

    move-object/from16 v2, p1

    .line 21
    :goto_0
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Lcom/bytedance/applog/a1;->a(Landroid/database/Cursor;)I

    iget-object v1, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iput-object v1, v13, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-virtual {v11, v0, v5}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/a1;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v25

    iget-object v1, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v6, 0x1

    :try_start_5
    iput-boolean v1, v0, Lcom/bytedance/applog/a1;->m:Z

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v0

    move-object v4, v13

    move-object v5, v9

    move/from16 v26, v6

    move-object v6, v14

    move-object/from16 v27, v7

    move-object v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/applog/w0;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/b1;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)Ljava/util/ArrayList;

    move-result-object v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, v25

    move/from16 v6, v26

    move-object/from16 v7, v27

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v8

    move-object v14, v9

    goto/16 :goto_8

    :cond_0
    move/from16 v26, v6

    move-object/from16 v27, v7

    :try_start_6
    iget-wide v1, v0, Lcom/bytedance/applog/u0;->a:J

    cmp-long v3, v1, v20

    if-gez v3, :cond_1

    move-wide/from16 v20, v1

    :cond_1
    iget-wide v1, v0, Lcom/bytedance/applog/u0;->a:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    cmp-long v3, v1, v22

    if-lez v3, :cond_2

    move-wide/from16 v22, v1

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v0

    move-object v4, v13

    move-object v5, v12

    move-object v6, v10

    move-object v7, v9

    move-object/from16 v28, v8

    move-object v8, v14

    move-object/from16 v29, v14

    move-object v14, v9

    move-object v9, v15

    :try_start_7
    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/applog/w0;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/b1;Lcom/bytedance/applog/c1;Lcom/bytedance/applog/e1;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v9, v14

    move-object/from16 v2, v25

    move/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v14, v29

    goto :goto_0

    :cond_3
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v14

    move-object v14, v9

    cmp-long v1, v20, v18

    if-eqz v1, :cond_4

    cmp-long v1, v22, v16

    if-eqz v1, :cond_4

    :try_start_8
    const-string v1, "DELETE FROM launch WHERE _id>=? AND _id<=?"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    const/4 v4, 0x2

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v14, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_5

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, v27

    move-object/from16 v9, v29

    move-object v10, v15

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/applog/w0;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lcom/bytedance/applog/c1;Lcom/bytedance/applog/b1;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V

    :cond_5
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_b
    const-string v0, "U SHALL NOT PASS!"

    .line 22
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 23
    :goto_1
    :try_start_c
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v28, v8

    move-object v14, v9

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v28, v8

    move-object v14, v9

    :goto_2
    move-object v1, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v28, v8

    move-object v14, v9

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v14, v9

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v14, v9

    move-object/from16 v28, v2

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v14, v2

    move-object/from16 v28, v14

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v14, v2

    move-object/from16 v28, v14

    :goto_3
    move-object/from16 v24, v2

    :goto_4
    move-object/from16 v2, v28

    :try_start_d
    const-string v1, "U SHALL NOT PASS!"

    .line 25
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v2, :cond_6

    .line 26
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_f
    const-string v0, "U SHALL NOT PASS!"

    .line 27
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :cond_6
    :goto_5
    if-eqz v14, :cond_7

    .line 28
    :try_start_10
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_6

    :catch_5
    move-exception v0

    :try_start_11
    const-string v1, "U SHALL NOT PASS!"

    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 28
    :cond_7
    :goto_6
    monitor-exit p0

    return-object v24

    :catchall_7
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object/from16 v28, v2

    :goto_8
    if-eqz v28, :cond_8

    :try_start_12
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_13
    const-string v0, "U SHALL NOT PASS!"

    .line 29
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :cond_8
    :goto_9
    if-eqz v14, :cond_9

    .line 30
    :try_start_14
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_15
    const-string v0, "U SHALL NOT PASS!"

    .line 31
    invoke-static {v0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_9
    :goto_a
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public final a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/b1;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/applog/a1;",
            "Lcom/bytedance/applog/b1;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lorg/json/JSONArray;",
            "[J)",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/b1;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p6

    const-string v0, "packCurrentData, "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    .line 33
    invoke-static {v0, v12}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object v0, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;)Z

    move-result v9

    iget-object v3, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    invoke-virtual {v7, v8}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/a1;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v6, 0x1

    if-nez v9, :cond_1

    invoke-virtual {v7, v13}, Lcom/bytedance/applog/w0;->a([J)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v12

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    move-object v11, v8

    goto :goto_1

    :cond_2
    move-object v11, v12

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v17, v12

    move-object v12, v2

    move-object v5, v13

    move-object v13, v3

    move-object v4, v14

    move-object/from16 v14, p5

    move-object v3, v15

    move-object/from16 v15, p6

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    if-nez v1, :cond_3

    sget-object v1, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/b1;

    invoke-virtual {v1}, Lcom/bytedance/applog/b1;->i()[B

    new-instance v12, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    move-object/from16 v18, v12

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v3, v6, v4, v6}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_2
    move v1, v0

    move-object/from16 v18, v17

    :goto_3
    sget-object v0, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v9, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object v15, v3

    move-object v3, v9

    move-object v14, v4

    move v4, v10

    move-object v13, v5

    move-object/from16 v5, p5

    const/4 v12, 0x1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-virtual {v7, v13}, Lcom/bytedance/applog/w0;->a([J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v11, v8

    goto :goto_4

    :cond_4
    move-object/from16 v11, v17

    :goto_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v3, 0x1

    move-object v12, v0

    move-object v13, v2

    move-object v0, v14

    move-object/from16 v14, p5

    move-object v2, v15

    move-object/from16 v15, p6

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    invoke-virtual {v7, v2, v3, v0, v3}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_5

    :cond_5
    move-object v0, v14

    move-object v2, v15

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v5, p6

    move-object v4, v0

    move-object v3, v2

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    return-object v18
.end method

.method public final a(Lcom/bytedance/applog/a1;)Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/bytedance/applog/v1;->a()Lcom/bytedance/applog/v1;

    move-result-object v1

    iget-wide v2, p1, Lcom/bytedance/applog/u0;->a:J

    iget-object p1, p1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/bytedance/applog/v1;->onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "U SHALL NOT PASS!"

    .line 6
    invoke-static {v1, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "item_impression"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 8
    :cond_0
    sget-object v1, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/applog/t1;->a()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, v0}, Lcom/bytedance/applog/t1;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/bytedance/applog/a1;ZLcom/bytedance/applog/e1;Lcom/bytedance/applog/c1;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, v1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM page WHERE session_id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v12, "=\'"

    const-string v13, "!=\'"

    if-eqz p2, :cond_0

    move-object v14, v12

    goto :goto_0

    :cond_0
    move-object v14, v13

    :goto_0
    :try_start_1
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' ORDER BY "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p2, :cond_1

    const-string v10, "session_id,"

    goto :goto_1

    :cond_1
    const-string v10, ""

    :goto_1
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "duration"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " DESC LIMIT 500"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v3, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v11, 0x0

    :try_start_3
    new-instance v14, Ljava/util/HashMap;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v15, 0x1

    move-object/from16 v18, v9

    move-object/from16 v19, v18

    const-wide/16 v16, 0x0

    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v0, v10}, Lcom/bytedance/applog/c1;->a(Landroid/database/Cursor;)I

    sget-boolean v11, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPage, "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v5, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/applog/c1;->i()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v15

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v0, Lcom/bytedance/applog/c1;->k:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-long v5, v16, v5

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v11, v0, Lcom/bytedance/applog/c1;->o:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v0, Lcom/bytedance/applog/c1;->o:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v9, v0, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide/from16 v16, v5

    move-object/from16 v19, v9

    move-object/from16 v18, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v5

    move-object/from16 v18, v11

    goto :goto_7

    :cond_4
    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    invoke-virtual {v14, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/bytedance/applog/c1;->m:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iput-wide v7, v0, Lcom/bytedance/applog/c1;->k:J

    iget-wide v5, v0, Lcom/bytedance/applog/c1;->k:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-long v5, v16, v5

    :try_start_8
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    move-wide/from16 v16, v5

    :goto_4
    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v5

    goto :goto_7

    :cond_8
    if-eqz v11, :cond_a

    :try_start_9
    iget-object v0, v1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM page WHERE session_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    move-object v12, v13

    :goto_5
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    const/4 v10, 0x0

    :goto_6
    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_7
    :try_start_a
    const-string v3, "U SHALL NOT PASS!"

    .line 57
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v10, :cond_b

    .line 56
    :cond_a
    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v3, v19

    .line 58
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_f

    cmp-long v5, v16, v7

    if-lez v5, :cond_c

    move-wide/from16 v7, v16

    :cond_c
    iput-wide v7, v2, Lcom/bytedance/applog/e1;->k:J

    if-eqz p2, :cond_d

    iget-object v5, v1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iput-object v5, v2, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iget-wide v5, v1, Lcom/bytedance/applog/u0;->b:J

    goto :goto_9

    :cond_d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    :goto_9
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/applog/u0;->a(J)V

    iget-wide v5, v1, Lcom/bytedance/applog/u0;->e:J

    iput-wide v5, v2, Lcom/bytedance/applog/u0;->e:J

    iget-object v5, v1, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;

    iput-object v5, v2, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/bytedance/applog/u0;->g:Ljava/lang/String;

    iput-object v5, v2, Lcom/bytedance/applog/u0;->g:Ljava/lang/String;

    iget-wide v5, v2, Lcom/bytedance/applog/u0;->b:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/bytedance/applog/e1;->l:J

    invoke-static {}, Lcom/bytedance/applog/m;->b()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/bytedance/applog/u0;->c:J

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/bytedance/applog/e1;->m:Ljava/lang/String;

    iget-object v5, v1, Lcom/bytedance/applog/a1;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v0, v1, Lcom/bytedance/applog/a1;->n:Ljava/lang/String;

    iput-object v0, v2, Lcom/bytedance/applog/e1;->m:Ljava/lang/String;

    goto :goto_a

    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iput-object v0, v2, Lcom/bytedance/applog/e1;->m:Ljava/lang/String;

    iput-object v3, v2, Lcom/bytedance/applog/u0;->f:Ljava/lang/String;

    :cond_f
    :goto_a
    return-object v4

    :catchall_5
    move-exception v0

    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_10
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public final a(Lcom/bytedance/applog/a1;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p1, Lcom/bytedance/applog/a1;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/applog/w0;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v1, v1, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    invoke-virtual {v1}, Lcom/bytedance/applog/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/bytedance/applog/a1;->k:I

    iget-object v1, p0, Lcom/bytedance/applog/w0;->a:Lcom/bytedance/applog/h;

    .line 3
    iget-object v1, v1, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/applog/y;->e()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p2}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "app_version"

    :try_start_1
    iget-object v2, p1, Lcom/bytedance/applog/a1;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "version_code"

    :try_start_2
    iget p1, p1, Lcom/bytedance/applog/a1;->k:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "U SHALL NOT PASS!"

    .line 5
    invoke-static {v0, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 13

    move-object v0, p1

    if-nez p3, :cond_0

    move-object v7, p0

    iget-object v1, v7, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    move-object v9, v1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p0

    const/4 v2, 0x0

    move-object/from16 v9, p3

    const/4 v8, 0x0

    :goto_0
    const-string v10, "U SHALL NOT PASS!"

    if-eqz v8, :cond_1

    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    const-string v1, "pack"

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/bytedance/applog/u0;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    iget-wide v1, v0, Lcom/bytedance/applog/b1;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v11, 0x0

    cmp-long v3, v1, v11

    if-lez v3, :cond_3

    const-string v2, "event"

    :try_start_2
    iget-object v3, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iget-wide v5, v0, Lcom/bytedance/applog/b1;->o:J

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    iget-wide v5, v0, Lcom/bytedance/applog/b1;->q:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v5, v11

    if-lez v1, :cond_4

    const-string v2, "eventv3"

    :try_start_3
    iget-object v3, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    iget-wide v4, v0, Lcom/bytedance/applog/b1;->w:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v1, v4, v11

    if-lez v1, :cond_5

    const-string v1, "event_misc"

    :try_start_4
    iget-object v2, v0, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_3

    .line 10
    :goto_2
    :try_start_5
    invoke-static {v10, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_7

    .line 11
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 12
    invoke-static {v10, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_8

    .line 13
    :try_start_7
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 14
    invoke-static {v10, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_8
    :goto_5
    throw v1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 17
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;)V"
        }
    .end annotation

    const-string v1, "eventv3"

    const-string v2, "event"

    const-string v3, "U SHALL NOT PASS!"

    const-string v0, "save, "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v7, p0

    :try_start_0
    iget-object v0, v7, Lcom/bytedance/applog/w0;->b:Lcom/bytedance/applog/w0$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/applog/u0;

    invoke-virtual {v10}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v11

    if-nez v9, :cond_1

    .line 59
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    :goto_1
    invoke-virtual {v10, v9}, Lcom/bytedance/applog/u0;->b(Landroid/content/ContentValues;)V

    .line 60
    invoke-virtual {v8, v11, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/bytedance/applog/u0;->a:J

    invoke-virtual {v10}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :goto_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v11, v10, Lcom/bytedance/applog/a1;

    if-eqz v11, :cond_0

    check-cast v10, Lcom/bytedance/applog/a1;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v4

    .line 61
    :goto_3
    :try_start_3
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v8, :cond_5

    .line 62
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 63
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :cond_5
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/applog/u0;

    invoke-virtual {v6}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    check-cast v6, Lcom/bytedance/applog/x0;

    invoke-static {}, Lcom/bytedance/applog/o1;->a()Lcom/bytedance/applog/o1;

    move-result-object v8

    iget-object v9, v6, Lcom/bytedance/applog/x0;->k:Ljava/lang/String;

    iget-object v10, v6, Lcom/bytedance/applog/x0;->l:Ljava/lang/String;

    iget-object v11, v6, Lcom/bytedance/applog/x0;->m:Ljava/lang/String;

    iget-wide v12, v6, Lcom/bytedance/applog/x0;->o:J

    iget-wide v14, v6, Lcom/bytedance/applog/x0;->p:J

    iget-object v6, v6, Lcom/bytedance/applog/x0;->n:Ljava/lang/String;

    move-object/from16 v16, v6

    invoke-virtual/range {v8 .. v16}, Lcom/bytedance/applog/o1;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lcom/bytedance/applog/u0;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    check-cast v6, Lcom/bytedance/applog/z0;

    invoke-static {}, Lcom/bytedance/applog/o1;->a()Lcom/bytedance/applog/o1;

    move-result-object v8

    iget-object v9, v6, Lcom/bytedance/applog/z0;->m:Ljava/lang/String;

    iget-object v6, v6, Lcom/bytedance/applog/z0;->k:Ljava/lang/String;

    if-eqz v6, :cond_8

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object v10, v4

    :goto_6
    invoke-virtual {v8, v9, v10}, Lcom/bytedance/applog/o1;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 65
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_9
    :try_start_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/a1;

    invoke-static {}, Lcom/bytedance/applog/v1;->a()Lcom/bytedance/applog/v1;

    move-result-object v2

    iget-wide v4, v1, Lcom/bytedance/applog/u0;->a:J

    iget-object v1, v1, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v1}, Lcom/bytedance/applog/v1;->onSessionStart(JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 67
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_b

    .line 68
    :try_start_7
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 69
    invoke-static {v3, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_b
    :goto_8
    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public final a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/b1;Lcom/bytedance/applog/c1;Lcom/bytedance/applog/e1;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p6

    const-string v0, "packHistoryData, "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 35
    invoke-static {v0, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/a1;ZLcom/bytedance/applog/e1;Lcom/bytedance/applog/c1;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v8, Lcom/bytedance/applog/a1;->m:Z

    iget-object v3, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    invoke-virtual {v7, v8}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/a1;)Lorg/json/JSONArray;

    move-result-object v16

    iget-boolean v1, v8, Lcom/bytedance/applog/a1;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bytedance/applog/w0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v11, v8

    goto :goto_1

    :cond_1
    move-object v11, v9

    :goto_1
    const/4 v1, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v6, 0x1

    move-object v12, v1

    move-object v5, v14

    move-object/from16 v14, p7

    move-object v4, v15

    move-object/from16 v15, p8

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    goto :goto_2

    :cond_2
    move-object v5, v14

    move-object v4, v15

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    :goto_2
    invoke-virtual {v7, v4, v6, v5, v6}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v1, v0

    :goto_3
    sget-object v0, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v3, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object v15, v4

    move v4, v9

    move-object v14, v5

    move-object/from16 v5, p7

    const/4 v13, 0x1

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v1

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Lcom/bytedance/applog/w0;->a([J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v3, 0x1

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, p7

    move-object v4, v15

    move-object/from16 v15, p8

    invoke-virtual/range {v9 .. v16}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    invoke-virtual {v7, v4, v3, v2, v3}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_4

    :cond_3
    move-object v2, v14

    move-object v4, v15

    const/4 v3, 0x1

    :goto_4
    move-object v5, v2

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lcom/bytedance/applog/c1;Lcom/bytedance/applog/b1;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p5

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packLostData, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 37
    invoke-static {v0, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iput-object v13, v8, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    iput-object v13, v15, Lcom/bytedance/applog/u0;->d:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/a1;ZLcom/bytedance/applog/e1;Lcom/bytedance/applog/c1;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Lcom/bytedance/applog/a1;->m:Z

    invoke-virtual {v7, v12}, Lcom/bytedance/applog/w0;->a([J)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v8, Lcom/bytedance/applog/a1;->m:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v12

    move-object v2, v14

    move-object v1, v15

    goto :goto_4

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iget-boolean v2, v8, Lcom/bytedance/applog/a1;->m:Z

    if-nez v2, :cond_3

    move-object/from16 v11, p3

    goto :goto_2

    :cond_3
    move-object v11, v9

    :goto_2
    iget-boolean v2, v8, Lcom/bytedance/applog/a1;->m:Z

    if-nez v2, :cond_4

    move-object v2, v10

    goto :goto_3

    :cond_4
    move-object v2, v9

    :goto_3
    const/4 v3, 0x0

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object v10, v1

    move-object v4, v12

    move-object v12, v2

    move-object/from16 v13, p8

    move-object v2, v14

    move-object/from16 v14, p9

    move-object v1, v15

    move-object v15, v3

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    invoke-virtual {v7, v1, v5, v2, v6}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_4
    move v3, v0

    :goto_5
    sget-object v0, Lcom/bytedance/applog/w0;->e:[Lcom/bytedance/applog/u0;

    array-length v0, v0

    if-ge v3, v0, :cond_6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v15, v1

    move v1, v3

    move-object v14, v2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v13, v4

    move v4, v8

    const/4 v12, 0x0

    move-object/from16 v5, p8

    const/4 v11, 0x1

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/applog/w0;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v3

    invoke-virtual {v7, v13}, Lcom/bytedance/applog/w0;->a([J)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    const/4 v4, 0x1

    move-object v11, v0

    const/4 v0, 0x0

    move-object v12, v1

    move-object/from16 v13, p8

    move-object v1, v14

    move-object/from16 v14, p9

    move-object v5, v15

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/applog/b1;->a(Lorg/json/JSONObject;Lcom/bytedance/applog/a1;Lcom/bytedance/applog/e1;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    invoke-virtual {v7, v5, v0, v1, v4}, Lcom/bytedance/applog/w0;->a(Lcom/bytedance/applog/b1;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_6

    :cond_5
    move-object v1, v14

    move-object v5, v15

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v4, p9

    move-object v2, v1

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "needLaunch, "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/w0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/applog/w0;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/applog/w0;->c:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a([J)Z
    .locals 7

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    aget-wide v1, p1, v3

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmp-long p1, v1, v4

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
