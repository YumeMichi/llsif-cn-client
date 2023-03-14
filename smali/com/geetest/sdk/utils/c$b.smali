.class Lcom/geetest/sdk/utils/c$b;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/geetest/sdk/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/geetest/sdk/utils/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/utils/c;-><init>(Lcom/geetest/sdk/utils/c$a;)V

    sput-object v0, Lcom/geetest/sdk/utils/c$b;->a:Lcom/geetest/sdk/utils/c;

    return-void
.end method

.method static synthetic a()Lcom/geetest/sdk/utils/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/utils/c$b;->a:Lcom/geetest/sdk/utils/c;

    return-object v0
.end method
