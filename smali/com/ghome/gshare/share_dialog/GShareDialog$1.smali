.class Lcom/ghome/gshare/share_dialog/GShareDialog$1;
.super Ljava/lang/Object;
.source "GShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/share_dialog/GShareDialog;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/share_dialog/GShareDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-static {p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->access$000(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;->onClickCancel()V

    .line 116
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-static {p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->access$000(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;->saveFile()V

    .line 117
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareDialog;

    invoke-virtual {p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->cancel()V

    return-void
.end method
