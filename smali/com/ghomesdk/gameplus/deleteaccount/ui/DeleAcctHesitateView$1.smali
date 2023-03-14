.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;
.super Ljava/lang/Object;
.source "DeleAcctHesitateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 34
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;

    iget-object v1, v0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;->ctx:Landroid/content/Context;

    new-instance v2, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1$1;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doConfirmDele(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
