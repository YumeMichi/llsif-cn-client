.class Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "SetPasswordInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView$1;->this$0:Lcom/ghomesdk/gameplus/login/ui/SetPasswordInputView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doBack()V

    return-void
.end method
