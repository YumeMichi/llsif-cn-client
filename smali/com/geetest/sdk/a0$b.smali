.class Lcom/geetest/sdk/a0$b;
.super Ljava/lang/Object;
.source "UICallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/a0;->b(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/geetest/sdk/a0;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/a0;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/a0$b;->d:Lcom/geetest/sdk/a0;

    iput p2, p0, Lcom/geetest/sdk/a0$b;->a:I

    iput-object p3, p0, Lcom/geetest/sdk/a0$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/geetest/sdk/a0$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/a0$b;->d:Lcom/geetest/sdk/a0;

    invoke-static {v0}, Lcom/geetest/sdk/a0;->a(Lcom/geetest/sdk/a0;)Lcom/geetest/sdk/ay;

    move-result-object v0

    iget v1, p0, Lcom/geetest/sdk/a0$b;->a:I

    iget-object v2, p0, Lcom/geetest/sdk/a0$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/geetest/sdk/a0$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/geetest/sdk/ay;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
