.class final Lcom/sina/weibo/sdk/api/MediaObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/MediaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sina/weibo/sdk/api/MediaObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MediaObject;
    .locals 1

    .line 74
    new-instance v0, Lcom/sina/weibo/sdk/api/MediaObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/MediaObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MediaObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/MediaObject;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/sina/weibo/sdk/api/MediaObject;
    .locals 0

    .line 79
    new-array p1, p1, [Lcom/sina/weibo/sdk/api/MediaObject;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/MediaObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/MediaObject;

    move-result-object p1

    return-object p1
.end method
