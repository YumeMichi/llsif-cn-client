.class Lcom/gsk/ui/TouchMatrix$1;
.super Ljava/lang/Object;
.source "TouchMatrix.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/ui/TouchMatrix;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/ui/TouchMatrix;


# direct methods
.method constructor <init>(Lcom/gsk/ui/TouchMatrix;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix$1;->this$0:Lcom/gsk/ui/TouchMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix$1;->this$0:Lcom/gsk/ui/TouchMatrix;

    invoke-virtual {v0}, Lcom/gsk/ui/TouchMatrix;->layoutPoints()V

    return-void
.end method
