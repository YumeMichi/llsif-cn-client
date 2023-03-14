.class Lcom/ghomesdk/gameplus/login/LoginController$5;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->getCallback(Lcom/ghomesdk/gameplus/callback/ResultCallback;)Lcom/ghomesdk/gameplus/login/model/StatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$cbResult:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$5;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$5;->val$cbResult:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;IILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/LoginController$5;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/LoginController;->access$200(Lcom/ghomesdk/gameplus/login/LoginController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/ghomesdk/gameplus/login/LoginController$5$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController$5$1;-><init>(Lcom/ghomesdk/gameplus/login/LoginController$5;ILjava/lang/String;IILjava/util/Map;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
