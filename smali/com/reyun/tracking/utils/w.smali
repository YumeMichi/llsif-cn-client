.class public Lcom/reyun/tracking/utils/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/reyun/tracking/utils/w;


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reyun/tracking/utils/w;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/utils/w;->h:I

    iput-object p1, p0, Lcom/reyun/tracking/utils/w;->c:Ljava/lang/String;

    iput p2, p0, Lcom/reyun/tracking/utils/w;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;)B
    .locals 0

    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->mapApi2Byte(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public static a()Lcom/reyun/tracking/utils/w;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/reyun/tracking/utils/w;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/utils/w;

    invoke-direct {v0, p0, p1}, Lcom/reyun/tracking/utils/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    sget-object p0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/reyun/tracking/utils/w;->g:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/reyun/tracking/utils/w;->h:I

    :cond_0
    sget-object p0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    return-object p0
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/w;Ljava/io/InputStream;)S
    .locals 0

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/w;->a(Ljava/io/InputStream;)S

    move-result p0

    return p0
.end method

.method private a(Ljava/io/InputStream;)S
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/reyun/tracking/utils/w;->a(Ljava/io/InputStream;I)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private a(Lcom/reyun/tracking/utils/p;)V
    .locals 2

    const-string v0, "Tracking"

    const-string v1, "\u91cd\u65b0\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/reyun/tracking/utils/w;->d()V

    const-wide/16 v0, 0x1770

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/w;->b(Lcom/reyun/tracking/utils/p;)V

    return-void
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/w;Lcom/reyun/tracking/utils/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/w;->b(Lcom/reyun/tracking/utils/p;)V

    return-void
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/w;)Z
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/w;->e()Z

    move-result p0

    return p0
.end method

.method public static a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/w;Ljava/io/InputStream;I)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reyun/tracking/utils/w;->a(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 3

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, p2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/reyun/tracking/utils/w;->g:Z

    invoke-direct {v0}, Lcom/reyun/tracking/utils/w;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/reyun/tracking/utils/w;->a:Lcom/reyun/tracking/utils/w;

    :cond_0
    return-void
.end method

.method private b(Lcom/reyun/tracking/utils/p;)V
    .locals 5

    const-string v0, "Tracking"

    const-string v1, "\u521d\u59cb\u5316\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/reyun/tracking/utils/w;->c:Ljava/lang/String;

    iget v4, p0, Lcom/reyun/tracking/utils/w;->d:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/reyun/tracking/utils/w;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/reyun/tracking/utils/w;->f:Ljava/io/OutputStream;

    iput v0, p0, Lcom/reyun/tracking/utils/w;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u6ca1\u8fde\u63a5\u4e0a"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/reyun/tracking/utils/w;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   errorCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/reyun/tracking/utils/w;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Test"

    invoke-static {v2, v1}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/reyun/tracking/utils/w;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/reyun/tracking/utils/w;->h:I

    iget v1, p0, Lcom/reyun/tracking/utils/w;->h:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->setUseTcp(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/reyun/tracking/utils/w;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/w;->a(Lcom/reyun/tracking/utils/p;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/reyun/tracking/utils/w;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/reyun/tracking/utils/w;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/reyun/tracking/utils/w;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic d(Lcom/reyun/tracking/utils/w;)I
    .locals 2

    iget v0, p0, Lcom/reyun/tracking/utils/w;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/reyun/tracking/utils/w;->h:I

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/reyun/tracking/utils/w;->e:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/reyun/tracking/utils/w;->e:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/w;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lcom/reyun/tracking/utils/w;->f:Ljava/io/OutputStream;

    :cond_1
    iget-object v0, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iput-object v1, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/reyun/tracking/utils/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/w;->d()V

    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/w;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/reyun/tracking/utils/w;)I
    .locals 0

    iget p0, p0, Lcom/reyun/tracking/utils/w;->h:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;
    .locals 7

    iput-object p1, p0, Lcom/reyun/tracking/utils/w;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;)B

    move-result v5

    new-instance v6, Lcom/reyun/tracking/utils/x;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/reyun/tracking/utils/x;-><init>(Lcom/reyun/tracking/utils/w;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;B)V

    return-object v6
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/utils/w;->h:I

    return-void
.end method
