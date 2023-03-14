.class Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$1;
.super Lcom/ghomesdk/gameplus/listener/NoFastClickListener;
.source "InputGraphicVerCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$1;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->cancel()V

    return-void
.end method
