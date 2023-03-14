.class Lcom/geetest/sdk/w$a$c;
.super Ljava/lang/Object;
.source "GetTypeAndGetHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/w$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/w$a;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/w$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    iget-object v1, v0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/bb;)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    iget-object v1, v0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/bb;)V

    return-void
.end method
