.class public Lcom/geetest/sdk/ad;
.super Ljava/lang/Object;
.source "GeeLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/ad$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:J

.field f:J

.field g:[B

.field h:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5000

    .line 3
    iput-wide v0, p0, Lcom/geetest/sdk/ad;->c:J

    const-wide/32 v0, 0x240c8400

    .line 4
    iput-wide v0, p0, Lcom/geetest/sdk/ad;->d:J

    const-wide/16 v0, 0x1f4

    .line 5
    iput-wide v0, p0, Lcom/geetest/sdk/ad;->e:J

    const-wide/32 v0, 0x3200000

    .line 6
    iput-wide v0, p0, Lcom/geetest/sdk/ad;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/ad$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/ad;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/geetest/sdk/ad;->d:J

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/ad;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/geetest/sdk/ad;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/ad;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geetest/sdk/ad;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/ad;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/geetest/sdk/ad;->b([B)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/ad;->a:Ljava/lang/String;

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/geetest/sdk/ad;->h:[B

    return-void
.end method

.method private b(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/geetest/sdk/ad;->c:J

    return-void
.end method

.method static synthetic b(Lcom/geetest/sdk/ad;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/geetest/sdk/ad;->c(J)V

    return-void
.end method

.method static synthetic b(Lcom/geetest/sdk/ad;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geetest/sdk/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/geetest/sdk/ad;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/geetest/sdk/ad;->a([B)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/ad;->b:Ljava/lang/String;

    return-void
.end method

.method private b([B)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/geetest/sdk/ad;->g:[B

    return-void
.end method

.method private c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/geetest/sdk/ad;->f:J

    return-void
.end method

.method static synthetic c(Lcom/geetest/sdk/ad;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geetest/sdk/ad;->a(J)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/ad;->g:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/ad;->h:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoganConfig{mCachePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPathPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/geetest/sdk/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/geetest/sdk/ad;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/geetest/sdk/ad;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/geetest/sdk/ad;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMinSDCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/geetest/sdk/ad;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryptKey16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/ad;->g:[B

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryptIv16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/ad;->h:[B

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
