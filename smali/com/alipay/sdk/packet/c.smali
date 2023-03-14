.class public final Lcom/alipay/sdk/packet/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    const/16 p1, 0x18

    .line 3
    invoke-static {p1}, Lcom/alipay/sdk/util/l;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%05d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/alipay/sdk/encrypt/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/encrypt/e;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([[B)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 73
    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 81
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 85
    array-length v6, v5

    invoke-static {v6}, Lcom/alipay/sdk/packet/c;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 87
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-object v0, p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 103
    :goto_2
    :try_start_4
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 107
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    nop

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 102
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    return-object v0

    :catchall_2
    move-exception p0

    goto :goto_1

    :goto_5
    if-eqz v0, :cond_4

    .line 107
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 112
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 113
    :catch_7
    :cond_5
    throw p0

    :cond_6
    :goto_7
    return-object v0
.end method

.method public static b(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/encrypt/e;->b(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alipay/sdk/packet/d;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    .locals 5

    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    .line 25
    :try_start_1
    new-array v3, v2, [B

    .line 26
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v3

    .line 28
    new-array v3, v3, [B

    .line 29
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 30
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    new-array v2, v2, [B

    .line 33
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 34
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 37
    new-array v2, v2, [B

    .line 38
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 40
    iget-boolean v3, p0, Lcom/alipay/sdk/packet/c;->a:Z

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-static {v2}, Lcom/alipay/sdk/encrypt/b;->b([B)[B

    move-result-object v2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 53
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v4, v1

    .line 54
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 58
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    move-object p1, v0

    :catch_4
    :goto_2
    if-nez v4, :cond_4

    if-nez p1, :cond_4

    return-object v0

    .line 67
    :cond_4
    new-instance p2, Lcom/alipay/sdk/packet/b;

    invoke-direct {p2, v4, p1}, Lcom/alipay/sdk/packet/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_5

    .line 68
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 70
    :catch_5
    :cond_5
    throw p1
.end method

.method public a(Lcom/alipay/sdk/packet/b;ZLjava/lang/String;)Lcom/alipay/sdk/packet/d;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/b;->a([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 15
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/sdk/packet/c;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/cons/a;->e:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/alipay/sdk/packet/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 17
    iget-object v5, p0, Lcom/alipay/sdk/packet/c;->b:Ljava/lang/String;

    invoke-static {v5, p1, p3}, Lcom/alipay/sdk/packet/c;->b(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1

    const/4 p3, 0x3

    .line 18
    new-array p3, p3, [[B

    aput-object v0, p3, v1

    aput-object v2, p3, v3

    aput-object p1, p3, v4

    invoke-static {p3}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_2
    new-array p3, v4, [[B

    aput-object v0, p3, v1

    aput-object p1, p3, v3

    invoke-static {p3}, Lcom/alipay/sdk/packet/c;->a([[B)[B

    move-result-object p1

    .line 22
    :goto_1
    new-instance p3, Lcom/alipay/sdk/packet/d;

    invoke-direct {p3, p2, p1}, Lcom/alipay/sdk/packet/d;-><init>(Z[B)V

    return-object p3
.end method
