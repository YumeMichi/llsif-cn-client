.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;
.super Ljava/lang/Object;
.source "DeleAcctAgreementView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

.field final synthetic val$btCheck:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;Landroid/widget/TextView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;->val$btCheck:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctAgreementView$5;->val$btCheck:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
