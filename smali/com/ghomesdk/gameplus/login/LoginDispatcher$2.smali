.class Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;
.super Ljava/lang/Object;
.source "LoginDispatcher.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/GuestManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginDispatcher;->doClickGuestUpgrade(Landroid/content/Context;ZLjava/lang/String;Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

.field final synthetic val$isLogin:Z

.field final synthetic val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginDispatcher;Lcom/ghomesdk/gameplus/login/model/LoginManager;Z)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-boolean p3, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->this$0:Lcom/ghomesdk/gameplus/login/LoginDispatcher;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->val$oldManager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object v1, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    .line 165
    iget-object v0, v0, Lcom/ghomesdk/gameplus/login/LoginDispatcher;->manager:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/login/LoginDispatcher$2;->val$isLogin:Z

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->doGuestCallback(IZLcom/ghomesdk/gameplus/login/LoginContext;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
