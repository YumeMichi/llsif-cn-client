.class public Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;
.super Ljava/lang/Object;
.source "GetAgreementVersionAContent.java"


# instance fields
.field public agreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    return-void
.end method
