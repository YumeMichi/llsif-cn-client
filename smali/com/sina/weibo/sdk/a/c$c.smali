.class abstract Lcom/sina/weibo/sdk/a/c$c;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Q:Lcom/sina/weibo/sdk/a/c;

.field priority:I


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/a/c;Lcom/sina/weibo/sdk/a/c$d;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/c$c;->Q:Lcom/sina/weibo/sdk/a/c;

    .line 185
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 186
    iget p1, p2, Lcom/sina/weibo/sdk/a/c$d;->priority:I

    iput p1, p0, Lcom/sina/weibo/sdk/a/c$c;->priority:I

    return-void
.end method
