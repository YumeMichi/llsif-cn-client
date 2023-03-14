.class Lcom/ghomesdk/gameplus/dialog/AgreementDialog$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "AgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/AgreementDialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->access$002(Z)Z

    .line 51
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/AgreementDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/AgreementDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementDialog;->cancel()V

    return-void
.end method
