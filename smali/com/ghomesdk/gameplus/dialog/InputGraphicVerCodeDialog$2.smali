.class Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;
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

    .line 73
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/listener/NoFastClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoFastClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->showImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
