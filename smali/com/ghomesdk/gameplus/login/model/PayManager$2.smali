.class Lcom/ghomesdk/gameplus/login/model/PayManager$2;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/PayManager;->doClose(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/PayManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/PayManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager$2;->this$0:Lcom/ghomesdk/gameplus/login/model/PayManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/PayManager$2;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/PayManager$2;->this$0:Lcom/ghomesdk/gameplus/login/model/PayManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/PayManager$2;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const-string v0, "doClose"

    invoke-virtual {p1, v0, p2}, Lcom/ghomesdk/gameplus/login/model/PayManager;->onJump(Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
