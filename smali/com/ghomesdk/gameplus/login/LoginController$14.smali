.class Lcom/ghomesdk/gameplus/login/LoginController$14;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->showCodekeyDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$14;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$14;->val$callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$14;->val$callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 667
    invoke-interface {v0, p1, p2, v1}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
