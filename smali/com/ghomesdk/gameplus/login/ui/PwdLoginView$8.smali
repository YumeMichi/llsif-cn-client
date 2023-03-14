.class Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "PwdLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 151
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$200(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView$8;->this$0:Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;->access$300(Lcom/ghomesdk/gameplus/login/ui/PwdLoginView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/PhoneStrUtil;->getPhoneStr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->doClickForgetPassword(Ljava/lang/String;)V

    return-void
.end method
