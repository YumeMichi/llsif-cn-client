.class Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "FillRealBindPhoneInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 8

    .line 94
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    iget-object v2, v1, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->ctx:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->access$000(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->access$100(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->access$200(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;->access$300(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4$1;

    invoke-direct {v7, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealBindPhoneInfoView$4;)V

    invoke-virtual/range {v0 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdFillRealBindPHone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
