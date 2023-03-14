.class public final Lcom/sina/weibo/sdk/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static K:Lcom/sina/weibo/sdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/sina/weibo/sdk/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/a/b;-><init>(B)V

    sput-object v0, Lcom/sina/weibo/sdk/a/b$a;->K:Lcom/sina/weibo/sdk/a/b;

    return-void
.end method

.method public static synthetic k()Lcom/sina/weibo/sdk/a/b;
    .locals 1

    .line 13
    sget-object v0, Lcom/sina/weibo/sdk/a/b$a;->K:Lcom/sina/weibo/sdk/a/b;

    return-object v0
.end method
