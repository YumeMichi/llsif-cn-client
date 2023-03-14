.class Lcom/ghome/gshare/share_dialog/GShareBaseDialog$1;
.super Ljava/lang/Object;
.source "GShareBaseDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->exitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/share_dialog/GShareBaseDialog;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/share_dialog/GShareBaseDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog$1;->this$0:Lcom/ghome/gshare/share_dialog/GShareBaseDialog;

    invoke-static {p1}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->access$000(Lcom/ghome/gshare/share_dialog/GShareBaseDialog;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
