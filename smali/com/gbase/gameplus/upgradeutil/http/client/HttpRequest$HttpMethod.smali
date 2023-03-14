.class public final enum Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum CONNECT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum COPY:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum DELETE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum HEAD:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum MOVE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum OPTIONS:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum POST:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum PUT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

.field public static final enum TRACE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 170
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 171
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->POST:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 172
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3, v4}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->PUT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 173
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x3

    const-string v5, "HEAD"

    invoke-direct {v0, v5, v4, v5}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->HEAD:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 174
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v5, 0x4

    const-string v6, "MOVE"

    invoke-direct {v0, v6, v5, v6}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->MOVE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 175
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v6, 0x5

    const-string v7, "COPY"

    invoke-direct {v0, v7, v6, v7}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->COPY:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 176
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v7, 0x6

    const-string v8, "DELETE"

    invoke-direct {v0, v8, v7, v8}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->DELETE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 177
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const-string v8, "OPTIONS"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v9, v8}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->OPTIONS:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 178
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const-string v8, "TRACE"

    const/16 v9, 0x8

    const-string v10, "TRACE"

    invoke-direct {v0, v8, v9, v10}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->TRACE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    .line 179
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const-string v8, "CONNECT"

    const/16 v9, 0x9

    const-string v10, "CONNECT"

    invoke-direct {v0, v8, v9, v10}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->CONNECT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/16 v0, 0xa

    .line 169
    new-array v0, v0, [Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    sget-object v8, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v8, v0, v1

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->POST:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->PUT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->HEAD:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->MOVE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->COPY:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->DELETE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->OPTIONS:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->TRACE:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->CONNECT:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;
    .locals 1

    .line 169
    const-class v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;
    .locals 1

    .line 169
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
