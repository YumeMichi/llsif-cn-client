.class Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;
.super Ljava/lang/Object;
.source "BindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 72
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$100(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/app/Activity;

    move-result-object v2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$200(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;->this$0:Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;->access$300(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2$1;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/BindPhoneView$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
