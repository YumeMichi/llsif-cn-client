.class public final Lcom/geetest/sdk/ad$b;
.super Ljava/lang/Object;
.source "GeeLoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:[B

.field f:[B

.field g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5000

    .line 2
    iput-wide v0, p0, Lcom/geetest/sdk/ad$b;->c:J

    const-wide/32 v0, 0x240c8400

    .line 3
    iput-wide v0, p0, Lcom/geetest/sdk/ad$b;->d:J

    const-wide/32 v0, 0x3200000

    .line 6
    iput-wide v0, p0, Lcom/geetest/sdk/ad$b;->g:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/geetest/sdk/ad$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ad$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a([B)Lcom/geetest/sdk/ad$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/ad$b;->f:[B

    return-object p0
.end method

.method public a()Lcom/geetest/sdk/ad;
    .locals 3

    .line 3
    new-instance v0, Lcom/geetest/sdk/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/ad;-><init>(Lcom/geetest/sdk/ad$a;)V

    .line 4
    iget-object v1, p0, Lcom/geetest/sdk/ad$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geetest/sdk/ad;->a(Lcom/geetest/sdk/ad;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/geetest/sdk/ad$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geetest/sdk/ad;->b(Lcom/geetest/sdk/ad;Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/geetest/sdk/ad$b;->c:J

    invoke-static {v0, v1, v2}, Lcom/geetest/sdk/ad;->a(Lcom/geetest/sdk/ad;J)V

    .line 7
    iget-wide v1, p0, Lcom/geetest/sdk/ad$b;->g:J

    invoke-static {v0, v1, v2}, Lcom/geetest/sdk/ad;->b(Lcom/geetest/sdk/ad;J)V

    .line 8
    iget-wide v1, p0, Lcom/geetest/sdk/ad$b;->d:J

    invoke-static {v0, v1, v2}, Lcom/geetest/sdk/ad;->c(Lcom/geetest/sdk/ad;J)V

    .line 9
    iget-object v1, p0, Lcom/geetest/sdk/ad$b;->e:[B

    invoke-static {v0, v1}, Lcom/geetest/sdk/ad;->a(Lcom/geetest/sdk/ad;[B)V

    .line 10
    iget-object v1, p0, Lcom/geetest/sdk/ad$b;->f:[B

    invoke-static {v0, v1}, Lcom/geetest/sdk/ad;->b(Lcom/geetest/sdk/ad;[B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/geetest/sdk/ad$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ad$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b([B)Lcom/geetest/sdk/ad$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/ad$b;->e:[B

    return-object p0
.end method
