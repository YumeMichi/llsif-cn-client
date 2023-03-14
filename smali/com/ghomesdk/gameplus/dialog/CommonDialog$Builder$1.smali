.class Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

.field final synthetic val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;Lcom/ghomesdk/gameplus/dialog/CommonDialog;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->access$000(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->access$000(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;->onClick(Landroid/app/Dialog;Landroid/view/View;)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$1;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->cancel()V

    return-void
.end method
