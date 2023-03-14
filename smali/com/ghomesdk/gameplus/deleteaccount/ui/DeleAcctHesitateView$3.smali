.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$3;
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

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctHesitateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doClose()V

    return-void
.end method
