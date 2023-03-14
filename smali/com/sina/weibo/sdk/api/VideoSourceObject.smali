.class public Lcom/sina/weibo/sdk/api/VideoSourceObject;
.super Lcom/sina/weibo/sdk/api/MediaObject;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sina/weibo/sdk/api/VideoSourceObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x261a4f9ed6ad3287L


# instance fields
.field public coverPath:Landroid/net/Uri;

.field public during:J

.field public videoPath:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/sina/weibo/sdk/api/VideoSourceObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VideoSourceObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/MediaObject;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/api/MediaObject;-><init>(Landroid/os/Parcel;)V

    .line 43
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->coverPath:Landroid/net/Uri;

    .line 44
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->during:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 32
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/api/MediaObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->coverPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    iget-wide v0, p0, Lcom/sina/weibo/sdk/api/VideoSourceObject;->during:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
