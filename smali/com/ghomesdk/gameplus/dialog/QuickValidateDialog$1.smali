.class Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "QuickValidateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->cancel()V

    return-void
.end method
