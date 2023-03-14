.class Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "GuestUpgradeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 4

    .line 62
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->ctx:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->access$000(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView$3;->this$0:Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;->access$100(Lcom/ghomesdk/gameplus/login/ui/GuestUpgradeView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickConfirmAccDesc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
