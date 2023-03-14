.class Lcom/tencent/connect/common/AssistActivity$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/common/AssistActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/AssistActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/AssistActivity;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/tencent/connect/common/AssistActivity$2;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "onActivityResult finish delay"

    .line 326
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity$2;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    return-void
.end method
