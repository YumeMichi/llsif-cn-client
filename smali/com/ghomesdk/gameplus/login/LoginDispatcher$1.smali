.class Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;
.super Ljava/lang/Object;
.source "LoginDispatcher.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doPay(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

.field final synthetic val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginDispatcher;Lcom/ghomesdk/gameplus/login/model/LoginManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;->val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;->val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 62
    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->init()V

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doPayGuestCallback(IZLcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
