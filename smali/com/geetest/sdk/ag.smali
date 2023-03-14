.class Lcom/geetest/sdk/ag;
.super Ljava/lang/Object;
.source "GeeLoggerProtocol.java"

# interfaces
.implements Lcom/geetest/sdk/ak;


# static fields
.field private static d:Lcom/geetest/sdk/ag;


# instance fields
.field private a:Lcom/geetest/sdk/ak;

.field private b:Z

.field private c:Lcom/geetest/sdk/aj;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Lcom/geetest/sdk/ag;
    .locals 2

    .line 1
    sget-object v0, Lcom/geetest/sdk/ag;->d:Lcom/geetest/sdk/ag;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/geetest/sdk/ag;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/geetest/sdk/ag;

    invoke-direct {v1}, Lcom/geetest/sdk/ag;-><init>()V

    sput-object v1, Lcom/geetest/sdk/ag;->d:Lcom/geetest/sdk/ag;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_0
    :goto_0
    sget-object v0, Lcom/geetest/sdk/ag;->d:Lcom/geetest/sdk/ag;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ag;->a:Lcom/geetest/sdk/ak;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geetest/sdk/ak;->a()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;JLjava/lang/String;JZ)V
    .locals 10

    move-object v0, p0

    .line 3
    iget-object v1, v0, Lcom/geetest/sdk/ag;->a:Lcom/geetest/sdk/ak;

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    .line 4
    invoke-interface/range {v1 .. v9}, Lcom/geetest/sdk/ak;->a(ILjava/lang/String;JLjava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/geetest/sdk/aj;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/geetest/sdk/ag;->c:Lcom/geetest/sdk/aj;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 5
    iget-boolean v0, p0, Lcom/geetest/sdk/ag;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/geetest/sdk/z;->c()Lcom/geetest/sdk/z;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/ag;->a:Lcom/geetest/sdk/ak;

    .line 9
    iget-object v1, p0, Lcom/geetest/sdk/ag;->c:Lcom/geetest/sdk/aj;

    invoke-interface {v0, v1}, Lcom/geetest/sdk/ak;->a(Lcom/geetest/sdk/aj;)V

    .line 10
    iget-object v2, p0, Lcom/geetest/sdk/ag;->a:Lcom/geetest/sdk/ak;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/geetest/sdk/ak;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/geetest/sdk/ag;->b:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/geetest/sdk/ag;->a:Lcom/geetest/sdk/ak;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/geetest/sdk/ak;->a(Z)V

    :cond_0
    return-void
.end method
