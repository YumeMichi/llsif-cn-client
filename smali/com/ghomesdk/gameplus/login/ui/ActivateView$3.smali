.class Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "ActivateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/ActivateView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/ActivateView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ActivateView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 4

    .line 57
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ActivateView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/ActivateView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/ActivateView;->access$000(Lcom/ghomesdk/gameplus/login/ui/ActivateView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3$1;

    invoke-direct {v3, p0}, Lcom/ghomesdk/gameplus/login/ui/ActivateView$3$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/ActivateView$3;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ghomesdk/gameplus/login/LoginController;->doActivate(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
