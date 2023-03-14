.class Lcom/geetest/sdk/ax$a;
.super Ljava/lang/Object;
.source "GtRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/ax;->a(Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/aw;

.field final synthetic b:Lcom/geetest/sdk/ay;

.field final synthetic c:Lcom/geetest/sdk/ax;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/ax;Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ax$a;->c:Lcom/geetest/sdk/ax;

    iput-object p2, p0, Lcom/geetest/sdk/ax$a;->a:Lcom/geetest/sdk/aw;

    iput-object p3, p0, Lcom/geetest/sdk/ax$a;->b:Lcom/geetest/sdk/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ax$a;->c:Lcom/geetest/sdk/ax;

    iget-object v1, p0, Lcom/geetest/sdk/ax$a;->a:Lcom/geetest/sdk/aw;

    iget-object v2, p0, Lcom/geetest/sdk/ax$a;->b:Lcom/geetest/sdk/ay;

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/ax;->b(Lcom/geetest/sdk/aw;Lcom/geetest/sdk/ay;)V

    return-void
.end method
