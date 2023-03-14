.class Lcom/gsk/api/GskWebApi$AliHandler;
.super Landroid/os/Handler;
.source "GskWebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/api/GskWebApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliHandler"
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private webApi:Lcom/gsk/api/GskWebApi;


# direct methods
.method public constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$AliHandler;->webApi:Lcom/gsk/api/GskWebApi;

    .line 384
    iput-object p2, p0, Lcom/gsk/api/GskWebApi$AliHandler;->callback:Ljava/lang/String;

    return-void
.end method

.method private zfbString2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 391
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 392
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    aget-object v3, v2, p2

    aget-object v4, p1, v1

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "javascript:%s(%s, \"%s\")"

    const-string v1, "{}"

    .line 403
    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alipayHelper handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 405
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x2710

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 408
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 409
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :cond_1
    const-string v7, ";"

    .line 412
    invoke-direct {p0, v6, v7}, Lcom/gsk/api/GskWebApi$AliHandler;->zfbString2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "resultStatus"

    .line 413
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 414
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "result"

    .line 415
    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const-string v8, "memo"

    .line 417
    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, "9000"

    .line 420
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v7, "0"

    .line 422
    :cond_2
    new-array v6, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/gsk/api/GskWebApi$AliHandler;->callback:Ljava/lang/String;

    aput-object v8, v6, v3

    aput-object v7, v6, v5

    invoke-static {v1}, Lcom/gsk/api/GskWebApi;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v6, p0, Lcom/gsk/api/GskWebApi$AliHandler;->webApi:Lcom/gsk/api/GskWebApi;

    invoke-static {v1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    .line 424
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ali pay js:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed. "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gsk/api/GskWebApi$AliHandler;->callback:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v3, "-1"

    aput-object v3, v1, v5

    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$AliHandler;->webApi:Lcom/gsk/api/GskWebApi;

    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
