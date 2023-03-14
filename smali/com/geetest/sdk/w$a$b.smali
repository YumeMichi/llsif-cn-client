.class Lcom/geetest/sdk/w$a$b;
.super Ljava/lang/Object;
.source "GetTypeAndGetHandler.java"

# interfaces
.implements Lcom/geetest/sdk/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/w$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geetest/sdk/ay<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:[Lcom/geetest/sdk/model/beans/a;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/geetest/sdk/w$a;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/w$a;[Z[Lcom/geetest/sdk/model/beans/a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/w$a$b;->d:Lcom/geetest/sdk/w$a;

    iput-object p2, p0, Lcom/geetest/sdk/w$a$b;->a:[Z

    iput-object p3, p0, Lcom/geetest/sdk/w$a$b;->b:[Lcom/geetest/sdk/model/beans/a;

    iput-object p4, p0, Lcom/geetest/sdk/w$a$b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/geetest/sdk/w$a$b;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/w$a$b;->d:Lcom/geetest/sdk/w$a;

    iget-object v0, v0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    invoke-static {v0, p1, p2, p3}, Lcom/geetest/sdk/w;->b(Lcom/geetest/sdk/w;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/az;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/geetest/sdk/w$a$b;->a:[Z

    iget-object p3, p1, Lcom/geetest/sdk/az;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    aput-boolean p3, p2, v0

    .line 4
    iget-object p2, p0, Lcom/geetest/sdk/w$a$b;->b:[Lcom/geetest/sdk/model/beans/a;

    iget-object p1, p1, Lcom/geetest/sdk/az;->b:Ljava/lang/Object;

    check-cast p1, Lcom/geetest/sdk/model/beans/a;

    aput-object p1, p2, v0

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/w$a$b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
