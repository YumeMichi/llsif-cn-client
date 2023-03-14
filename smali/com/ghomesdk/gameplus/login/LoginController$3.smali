.class Lcom/ghomesdk/gameplus/login/LoginController$3;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$3;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;

    if-eqz v0, :cond_2

    const-string v0, ""

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "checkCodeGuid"

    .line 259
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "checkCodeUrl"

    .line 260
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 261
    :goto_1
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$3;->val$_callback:Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;

    invoke-interface {p3, p1, p2, v1, v0}, Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;->callback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
