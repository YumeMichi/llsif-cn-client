.class Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "InputGraphicVerCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 10

    .line 83
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$200(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$400(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$500(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$600(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Z

    move-result v8

    new-instance v9, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;

    invoke-direct {v9, p0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;-><init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;)V

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/ghomesdk/gameplus/login/LoginController;->doCheckCodeVerify(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/login/model/CheckCodeCallback;)V

    return-void
.end method
