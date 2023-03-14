.class public Lcom/geetest/sdk/w;
.super Lcom/geetest/sdk/u;
.source "GetTypeAndGetHandler.java"


# static fields
.field private static final f:Ljava/lang/String; = "w"


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

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/geetest/sdk/az<",
            "Ljava/lang/Boolean;",
            "Lcom/geetest/sdk/model/beans/a;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/geetest/sdk/utils/u;->a(I)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "get\u63a5\u53e3\u8fd4\u56de\u9519\u8bef\uff0c\u9519\u8bef\u7801\u4e3a\uff1a207-->"

    const-string v2, "0"

    if-nez p1, :cond_3

    const-string p1, "OK"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "error_code"

    .line 9
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 11
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p2}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/geetest/sdk/az;

    invoke-direct {p2, v0, p1}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->g()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 19
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->a()Lcom/geetest/sdk/a$d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/geetest/sdk/a$d;->b()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p1}, Lcom/geetest/sdk/a$d;->e()V

    .line 29
    :cond_2
    :goto_0
    new-instance p1, Lcom/geetest/sdk/az;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "207"

    .line 36
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 38
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p2}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/geetest/sdk/az;

    invoke-direct {p2, v0, p1}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic a(Lcom/geetest/sdk/w;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/w;->b(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;

    move-result-object p0

    return-object p0
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/geetest/sdk/az<",
            "Ljava/lang/Boolean;",
            "Lcom/geetest/sdk/model/beans/a;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/geetest/sdk/utils/u;->a(I)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "0"

    if-nez p1, :cond_1

    const-string p1, "OK"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gettype\u63a5\u53e3\u8fd4\u56de\u9519\u8bef\uff0c\u9519\u8bef\u7801\u4e3a\uff1a206-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "error_code"

    .line 9
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 11
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p2}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/geetest/sdk/az;

    invoke-direct {p2, v0, p1}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/geetest/sdk/az;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gettype\u63a5\u53e3\u8fd4\u56de\u503c\u4e3anull\uff0c\u9519\u8bef\u7801\u4e3a\uff1a206-->"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 25
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "206"

    .line 26
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 28
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p2}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 32
    new-instance p2, Lcom/geetest/sdk/az;

    invoke-direct {p2, v0, p1}, Lcom/geetest/sdk/az;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic b(Lcom/geetest/sdk/w;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/w;->a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/geetest/sdk/bb;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/geetest/sdk/utils/t;->a()Lcom/geetest/sdk/utils/t;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/w$a;

    invoke-direct {v1, p0, p1}, Lcom/geetest/sdk/w$a;-><init>(Lcom/geetest/sdk/w;Lcom/geetest/sdk/bb;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/utils/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method
