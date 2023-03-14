.class Lcom/gsk/TouchMatrixActivity$1;
.super Ljava/lang/Object;
.source "TouchMatrixActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/TouchMatrixActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/TouchMatrixActivity;


# direct methods
.method constructor <init>(Lcom/gsk/TouchMatrixActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity$1;->this$0:Lcom/gsk/TouchMatrixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity$1;->this$0:Lcom/gsk/TouchMatrixActivity;

    invoke-virtual {p1}, Lcom/gsk/TouchMatrixActivity;->finish()V

    return-void
.end method
