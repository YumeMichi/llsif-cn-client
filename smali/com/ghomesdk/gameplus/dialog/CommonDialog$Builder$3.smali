.class Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;
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

    .line 146
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;->this$0:Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->access$200(Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-interface {v0, v1, p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;->onClick(Landroid/app/Dialog;Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder$3;->val$commonDialog:Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->cancel()V

    return-void
.end method
