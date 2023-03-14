.class Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;
.super Ljava/lang/Object;
.source "WebViewGsk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;

.field final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;->this$1:Lcom/gsk/ui/WebViewGsk$LoadingHandler$1;

    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk$LoadingHandler$1$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
