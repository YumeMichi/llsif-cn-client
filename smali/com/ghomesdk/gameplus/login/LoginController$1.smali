.class Lcom/ghomesdk/gameplus/login/LoginController$1;
.super Ljava/lang/Object;
.source "LoginController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/LoginController;->doFillRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/LoginController;

.field final synthetic val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/LoginController$1;->this$0:Lcom/ghomesdk/gameplus/login/LoginController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/LoginController$1;->val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 198
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/LoginController$1;->val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    if-eqz p3, :cond_0

    .line 199
    invoke-interface {p3, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
