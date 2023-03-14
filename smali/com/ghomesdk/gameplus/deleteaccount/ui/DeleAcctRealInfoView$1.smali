.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;
.super Ljava/lang/Object;
.source "DeleAcctRealInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 44
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;

    iget-object v2, v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->ctx:Landroid/content/Context;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->access$000(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1$1;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctRealInfoView$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doCheckRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
