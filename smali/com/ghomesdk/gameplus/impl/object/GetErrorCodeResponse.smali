.class public Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;
.super Ljava/lang/Object;
.source "GetErrorCodeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;
    }
.end annotation


# instance fields
.field codeArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;",
            ">;"
        }
    .end annotation
.end field

.field codeVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->codeArray:Ljava/util/List;

    return-object v0
.end method

.method public getCodeVersion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->codeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->codeArray:Ljava/util/List;

    return-void
.end method

.method public setCodeVersion(Ljava/lang/String;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->codeVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->codeVersion:Ljava/lang/String;

    return-void
.end method
