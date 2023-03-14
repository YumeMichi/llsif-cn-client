.class public final Lcom/sina/weibo/sdk/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public ag:Ljava/lang/String;

.field public ah:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sina.weibo"

    .line 150
    iput-object v0, p0, Lcom/sina/weibo/sdk/b/a$a;->packageName:Ljava/lang/String;

    const-string v0, "com.sina.weibo.SSOActivity"

    .line 152
    iput-object v0, p0, Lcom/sina/weibo/sdk/b/a$a;->ag:Ljava/lang/String;

    return-void
.end method
