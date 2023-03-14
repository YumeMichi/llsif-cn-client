.class Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4$1;
.super Ljava/lang/Object;
.source "FillRealInfoView.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4$1;->this$1:Lcom/ghomesdk/gameplus/login/ui/FillRealInfoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
