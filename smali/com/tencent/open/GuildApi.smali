.class public Lcom/tencent/open/GuildApi;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final CREATE_GUILD_ERROR_ALREADY_EXIST:I = -0x1

.field public static final JOIN_GUILD_ERROR_NOT_EXIST:I = -0x1


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method
