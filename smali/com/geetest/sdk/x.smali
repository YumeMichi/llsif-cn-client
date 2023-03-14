.class public Lcom/geetest/sdk/x;
.super Lcom/geetest/sdk/u;
.source "WebviewHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/x$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "x"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geetest/sdk/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 5
    sget-object v0, Lcom/geetest/sdk/x;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p2}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 7
    invoke-virtual {p2, p3}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p4}, Lcom/geetest/sdk/model/beans/a;->a(Z)V

    .line 12
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/a;)V

    .line 13
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/bb;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public a(Lcom/geetest/sdk/bb;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/geetest/sdk/x$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/geetest/sdk/x$b;-><init>(Lcom/geetest/sdk/x;Lcom/geetest/sdk/x$a;)V

    .line 4
    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/av;)V

    return-void
.end method
