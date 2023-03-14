.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView$1;
.super Ljava/lang/Object;
.source "DeleAcctCompleteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctCompleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doComplete()V

    return-void
.end method
