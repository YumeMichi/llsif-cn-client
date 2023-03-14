.class public Lcom/reyun/tracking/utils/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/p;


# instance fields
.field private a:Lcom/reyun/tracking/utils/p;

.field private b:B

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/reyun/tracking/utils/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    iput-object p2, p0, Lcom/reyun/tracking/utils/ab;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/reyun/tracking/sdk/Tracking;->mapApi2Byte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Lcom/reyun/tracking/utils/ab;->b:B

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 8

    const-string p1, "UTF-8"

    const-string v0, "status"

    const-string v1, "api"

    check-cast p2, [B

    check-cast p2, [B

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Tracking"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=======> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/reyun/tracking/utils/ab;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".response.statusCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-byte v4, p0, Lcom/reyun/tracking/utils/ab;->b:B

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/16 v0, 0xd

    if-eq v4, v0, :cond_0

    iget-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    :goto_0
    invoke-interface {p1, v2, v3}, Lcom/reyun/tracking/utils/p;->a(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "dp_url"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dp_path"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "info"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "array"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    const-string p1, "ts"

    invoke-virtual {v3, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    new-instance v0, Ljava/lang/Exception;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/reyun/tracking/utils/ab;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u9519\u8bef\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/reyun/tracking/utils/ab;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u5f02\u5e38"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ab;->a:Lcom/reyun/tracking/utils/p;

    invoke-interface {v0, p1, p2}, Lcom/reyun/tracking/utils/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
