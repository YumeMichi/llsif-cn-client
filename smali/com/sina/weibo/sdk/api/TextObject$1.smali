.class final Lcom/sina/weibo/sdk/api/TextObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/TextObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sina/weibo/sdk/api/TextObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1

    .line 34
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/TextObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/sina/weibo/sdk/api/TextObject;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/sina/weibo/sdk/api/TextObject;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/TextObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object p1

    return-object p1
.end method
