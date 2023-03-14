.class Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "FillRealInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 7

    .line 96
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    iget-object v2, v1, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->ctx:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->access$000(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->access$100(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;->this$0:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;->access$200(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView;)Z

    move-result v5

    new-instance v6, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5$1;-><init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$5;)V

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/login/LoginController;->doFillRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
