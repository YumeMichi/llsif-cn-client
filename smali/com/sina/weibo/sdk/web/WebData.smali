.class public Lcom/sina/weibo/sdk/web/WebData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sina/weibo/sdk/web/WebData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x380a7d70879875b1L


# instance fields
.field protected av:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field protected aw:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/sina/weibo/sdk/web/WebData$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/web/WebData$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/web/WebData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->av:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/web/WebData;->type:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->i:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebData;->aw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WebData;->av:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 24
    iput p2, p0, Lcom/sina/weibo/sdk/web/WebData;->type:I

    .line 25
    iput-object p3, p0, Lcom/sina/weibo/sdk/web/WebData;->i:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/sina/weibo/sdk/web/WebData;->aw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->av:Lcom/sina/weibo/sdk/auth/AuthInfo;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/sina/weibo/sdk/web/WebData;->type:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WebData;->av:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget p2, p0, Lcom/sina/weibo/sdk/web/WebData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WebData;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WebData;->aw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
