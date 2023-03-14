.class Lcom/gsk/TouchMatrixActivity$4;
.super Ljava/lang/Object;
.source "TouchMatrixActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/TouchMatrixActivity;->setMessage(Ljava/lang/String;)V
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

    .line 103
    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity$4;->this$0:Lcom/gsk/TouchMatrixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/gsk/TouchMatrixActivity$4;->this$0:Lcom/gsk/TouchMatrixActivity;

    iget-object v1, v0, Lcom/gsk/TouchMatrixActivity;->txtMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/gsk/TouchMatrixActivity;->getIconForHtmlText(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
