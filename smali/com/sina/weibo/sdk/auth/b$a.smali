.class final Lcom/sina/weibo/sdk/auth/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/auth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final f:Lcom/sina/weibo/sdk/auth/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/sina/weibo/sdk/auth/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/auth/b;-><init>(B)V

    sput-object v0, Lcom/sina/weibo/sdk/auth/b$a;->f:Lcom/sina/weibo/sdk/auth/b;

    return-void
.end method

.method static synthetic c()Lcom/sina/weibo/sdk/auth/b;
    .locals 1

    .line 16
    sget-object v0, Lcom/sina/weibo/sdk/auth/b$a;->f:Lcom/sina/weibo/sdk/auth/b;

    return-object v0
.end method
