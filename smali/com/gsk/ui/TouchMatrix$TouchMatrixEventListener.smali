.class public interface abstract Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;
.super Ljava/lang/Object;
.source "TouchMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/ui/TouchMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchMatrixEventListener"
.end annotation


# static fields
.field public static final ACTION_TOUCH_FINISH:I = 0x0

.field public static final ACTION_USER_CANCEL:I = 0x1


# virtual methods
.method public abstract onLinkClick(Ljava/lang/String;)V
.end method

.method public abstract onTouchFinished(ILjava/lang/String;)V
.end method

.method public abstract onTouchMatrixWillShown()V
.end method
