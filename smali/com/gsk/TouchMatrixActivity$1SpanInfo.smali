.class Lcom/gsk/TouchMatrixActivity$1SpanInfo;
.super Ljava/lang/Object;
.source "TouchMatrixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanInfo"
.end annotation


# instance fields
.field public End:I

.field public Flags:I

.field public Span:Ljava/lang/Object;

.field public Start:I

.field final synthetic this$0:Lcom/gsk/TouchMatrixActivity;


# direct methods
.method constructor <init>(Lcom/gsk/TouchMatrixActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity$1SpanInfo;->this$0:Lcom/gsk/TouchMatrixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
