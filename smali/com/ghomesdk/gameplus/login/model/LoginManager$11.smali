.class Lcom/ghomesdk/gameplus/login/model/LoginManager$11;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/LoginManager;->onPwdLoginFailedCallback(Lcom/ghomesdk/gameplus/login/model/LoginConfirm;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/LoginManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    .line 407
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;->this$0:Lcom/ghomesdk/gameplus/login/model/LoginManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginManager$11;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/ghomesdk/gameplus/login/model/LoginManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method
