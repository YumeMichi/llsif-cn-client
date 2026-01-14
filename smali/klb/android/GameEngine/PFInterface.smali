.class public Lklb/android/GameEngine/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/PFInterface$DeviceKeyEvent;,
        Lklb/android/GameEngine/PFInterface$DeviceKeyMap;,
        Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    }
.end annotation


# static fields
.field public static final E_FACEBOOK_CONNECTED:I = 0xb

.field public static final E_FACEBOOK_DISCONNECTED:I = 0xa

.field public static final E_INPUT_TYPE_CANCEL:I = 0x3

.field public static final E_INPUT_TYPE_CLICK:I = 0x0

.field public static final E_INPUT_TYPE_DRAG:I = 0x1

.field public static final E_INPUT_TYPE_RELEASE:I = 0x2

.field public static final E_PERMISSION_LOCATION:I = 0x1

.field public static final E_PERMISSION_NOTIFICATION:I = 0x2

.field public static final E_PERMISSION_WRITE_PHOTO:I = 0x3

.field public static final E_PF_GAME_SERVICE_CONNECTED:I = 0xd

.field public static final E_PF_GAME_SERVICE_FAILED:I = 0xc

.field public static final E_PF_GAME_SERVICE_UNSUPPORTED:I = 0xe

.field public static final E_STORE_BAD_ITEMID:I = 0x0

.field public static final E_STORE_CANCELED:I = 0x9

.field public static final E_STORE_DEFERRED:I = 0x4

.field public static final E_STORE_FAILED:I = 0x5

.field public static final E_STORE_GET_PRODUCTS:I = 0x1

.field public static final E_STORE_GET_PRODUCTS_FAILED:I = 0xa

.field public static final E_STORE_PURCHASHED:I = 0x3

.field public static final E_STORE_PURCHASHING:I = 0x2

.field public static final E_STORE_RESTORE:I = 0x6

.field public static final E_STORE_RESTORE_COMPLETED:I = 0x8

.field public static final E_STORE_RESTORE_FAILED:I = 0x7

.field public static MOVIE_FINISHED:I = 0x0

.field private static final PACKAGE_VER:I = 0x0

.field static final TX_ALIGN_CENTER:I = 0x1

.field static final TX_ALIGN_LEFT:I = 0x0

.field static final TX_ALIGN_RIGHT:I = 0x2

.field static cipher:Ljavax/crypto/Cipher;

.field static fileToWriteAlbum:Ljava/lang/String;

.field private static geomagnetic:[F

.field private static gravity:[F

.field private static instance:Lklb/android/GameEngine/PFInterface;

.field private static mDeviceToken:Ljava/lang/String;

.field private static m_path_external:Ljava/lang/String;

.field private static m_path_install:Ljava/lang/String;

.field private static m_phi:F

.field private static m_theta:F

.field static rnd:Ljava/security/SecureRandom;

.field private static s:Landroid/content/pm/Signature;

.field private static s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

.field private static s_movieIDCounter:I

.field private static s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

.field private static sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static shareCompatCallback:Ljava/lang/String;


# instance fields
.field private MAX_EDIT_TEXT:I

.field private MAX_MOVIE_VIEW:I

.field private MAX_WEB_VIEW:I

.field private isActive:Z

.field private m_bexec:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field private m_height:I

.field private m_indicator:Lklb/android/GameEngine/IndicatorItem;

.field private m_movieList:[Lklb/android/GameEngine/MovieViewItem;

.field private m_movieListCount:I

.field private m_osversion:Ljava/lang/String;

.field private m_textList:[Lklb/android/GameEngine/EditBoxItem;

.field private m_textListCount:I

.field private m_tzone:Ljava/lang/String;

.field private m_webList:[Lklb/android/GameEngine/WebViewItem;

.field private m_webListCount:I

.field private m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 172
    new-instance v0, Lklb/android/GameEngine/PFInterface;

    invoke-direct {v0}, Lklb/android/GameEngine/PFInterface;-><init>()V

    sput-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    const/4 v0, 0x0

    .line 173
    sput-object v0, Lklb/android/GameEngine/PFInterface;->m_path_external:Ljava/lang/String;

    .line 174
    sput-object v0, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    .line 185
    sput-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    .line 186
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 200
    sput v1, Lklb/android/GameEngine/PFInterface;->m_theta:F

    .line 201
    sput v1, Lklb/android/GameEngine/PFInterface;->m_phi:F

    const/4 v1, 0x3

    .line 202
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lklb/android/GameEngine/PFInterface;->gravity:[F

    .line 203
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sput-object v1, Lklb/android/GameEngine/PFInterface;->geomagnetic:[F

    .line 204
    sput-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 206
    sput-object v0, Lklb/android/GameEngine/PFInterface;->shareCompatCallback:Ljava/lang/String;

    const/4 v1, 0x1

    .line 208
    sput v1, Lklb/android/GameEngine/PFInterface;->MOVIE_FINISHED:I

    .line 210
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 211
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 212
    sput v1, Lklb/android/GameEngine/PFInterface;->s_movieIDCounter:I

    .line 1247
    sput-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1256
    sput-object v0, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    .line 1686
    sput-object v0, Lklb/android/GameEngine/PFInterface;->fileToWriteAlbum:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 179
    iput-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    const/16 v1, 0x64

    .line 181
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    .line 182
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    const/16 v1, 0x32

    .line 183
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    .line 187
    iput-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    .line 189
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    new-array v0, v0, [Lklb/android/GameEngine/EditBoxItem;

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    .line 192
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    new-array v1, v1, [Lklb/android/GameEngine/WebViewItem;

    iput-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    .line 193
    iput v0, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    .line 195
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    new-array v1, v1, [Lklb/android/GameEngine/MovieViewItem;

    iput-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    .line 196
    iput v0, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    return-void
.end method

.method public static MovieCreate(Ljava/lang/String;III)I
    .locals 1

    .line 1825
    :try_start_0
    new-instance v0, Lklb/android/GameEngine/MovieTextureWrapper;

    invoke-direct {v0}, Lklb/android/GameEngine/MovieTextureWrapper;-><init>()V

    .line 1826
    invoke-virtual {v0, p0, p1, p2, p3}, Lklb/android/GameEngine/MovieTextureWrapper;->createMovie(Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1827
    sget-object p0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    iput-object p0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1828
    sget p0, Lklb/android/GameEngine/PFInterface;->s_movieIDCounter:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lklb/android/GameEngine/PFInterface;->s_movieIDCounter:I

    iput p0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    .line 1829
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1830
    sget p0, Lklb/android/GameEngine/PFInterface;->s_movieIDCounter:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 1831
    sput p0, Lklb/android/GameEngine/PFInterface;->s_movieIDCounter:I

    .line 1834
    :cond_0
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1835
    iget p0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    return p0

    .line 1837
    :cond_1
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1840
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static MovieGetInfo(II)F
    .locals 2

    .line 1893
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1894
    sget-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-eqz v1, :cond_0

    iget v1, v1, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_0

    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1896
    iget v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_1

    .line 1897
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1898
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/MovieTextureWrapper;->getInfo(I)F

    move-result p0

    return p0

    .line 1900
    :cond_1
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static MovieRefreshTexture(I)V
    .locals 2

    .line 1876
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1877
    sget-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-eqz v1, :cond_0

    iget v1, v1, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_0

    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1879
    iget v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_1

    .line 1881
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->updateTexture()V

    .line 1882
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1884
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1888
    :cond_1
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static MovieRelease(I)V
    .locals 5

    .line 1848
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1851
    iget-object v3, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1852
    iget v4, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v4, p0, :cond_1

    if-nez v2, :cond_0

    .line 1854
    iput-object v3, v2, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_1

    .line 1856
    :cond_0
    sput-object v3, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1859
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1861
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1863
    :goto_2
    iput-object v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1864
    sget-object p0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-ne p0, v0, :cond_2

    .line 1865
    sput-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_3

    :cond_1
    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method

.method public static MovieResetLoop(I)V
    .locals 2

    .line 1966
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1967
    sget-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-eqz v1, :cond_0

    iget v1, v1, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_0

    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1969
    iget v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_1

    .line 1971
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->resetLoop()V

    .line 1972
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1974
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1978
    :cond_1
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static MovieSetPause(I)V
    .locals 2

    .line 1937
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1938
    sget-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-eqz v1, :cond_0

    iget v1, v1, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_0

    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1940
    iget v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_1

    .line 1942
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->setPause()V

    .line 1943
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1945
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1949
    :cond_1
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static MovieSetPauseOnResign()V
    .locals 1

    .line 1955
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    :goto_0
    if-eqz v0, :cond_0

    .line 1958
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->setPauseOnResign()V

    .line 1959
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static MovieSetPlay(I)V
    .locals 2

    .line 1907
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 1908
    sget-object v1, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    if-eqz v1, :cond_0

    iget v1, v1, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_0

    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1910
    iget v1, v0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    if-ne v1, p0, :cond_1

    .line 1913
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->setPlay()V

    .line 1914
    sput-object v0, Lklb/android/GameEngine/PFInterface;->s_lastAccess:Lklb/android/GameEngine/MovieTextureWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1916
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1920
    :cond_1
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static MovieSetPlayOnResume()V
    .locals 1

    .line 1926
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s_movieList:Lklb/android/GameEngine/MovieTextureWrapper;

    :goto_0
    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieTextureWrapper;->setPlayOnResume()V

    .line 1930
    iget-object v0, v0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .line 111
    sget-object v0, Lklb/android/GameEngine/PFInterface;->geomagnetic:[F

    return-object v0
.end method

.method static synthetic access$002([F)[F
    .locals 0

    .line 111
    sput-object p0, Lklb/android/GameEngine/PFInterface;->geomagnetic:[F

    return-object p0
.end method

.method static synthetic access$100()[F
    .locals 1

    .line 111
    sget-object v0, Lklb/android/GameEngine/PFInterface;->gravity:[F

    return-object v0
.end method

.method static synthetic access$202(F)F
    .locals 0

    .line 111
    sput p0, Lklb/android/GameEngine/PFInterface;->m_theta:F

    return p0
.end method

.method static synthetic access$302(F)F
    .locals 0

    .line 111
    sput p0, Lklb/android/GameEngine/PFInterface;->m_phi:F

    return p0
.end method

.method public static billingBuyItem(Ljava/lang/String;)V
    .locals 1

    .line 1014
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestBuy(Ljava/lang/String;)V

    return-void
.end method

.method public static billingConsume(Ljava/lang/String;)V
    .locals 2

    .line 987
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestConsume(Ljava/lang/String;I)V

    return-void
.end method

.method public static billingGetProducts(Ljava/lang/String;)V
    .locals 6

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 996
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1000
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestGetProducts(Ljava/util/List;I)V

    return-void

    .line 1004
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal json string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PFInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static billingInit()V
    .locals 1

    .line 977
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public static billingTerminate()V
    .locals 0

    .line 982
    invoke-static {}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestTerminate()V

    return-void
.end method

.method private static calAPKSignature(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const-string v0, "ERROR"

    .line 1584
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1585
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1588
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x40

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    sput-object p0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    .line 1589
    sget-object p0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    if-nez p0, :cond_0

    const-string p0, "NOT_FOUND"

    return-object p0

    .line 1595
    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "X.509"

    .line 1598
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 1599
    invoke-virtual {v3, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    const-string v4, "SHA256"

    .line 1600
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 1601
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1602
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 1603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1604
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    add-int/lit8 v5, v4, -0x2

    if-ge v1, v5, :cond_1

    .line 1607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v8, v2

    move-object v2, v1

    move v1, v8

    goto :goto_0

    .line 1610
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1620
    :catch_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    return-object v0
.end method

.method public static cancelLocalNotification(Ljava/lang/String;I)V
    .locals 2

    .line 1144
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1145
    invoke-static {p0, p1}, Lklb/android/GameEngine/PFInterface;->onNotificationExpired(Landroid/content/Context;I)V

    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lklb/android/lovelivecn/AlarmBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    .line 1147
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    .line 1148
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 1150
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static clearCookies()V
    .locals 3

    .line 1063
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1065
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1067
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1071
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method public static copyToClipBoard(Ljava/lang/String;)V
    .locals 2

    .line 1434
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1436
    new-instance v1, Lklb/android/GameEngine/PFInterface$5;

    invoke-direct {v1, v0, p0}, Lklb/android/GameEngine/PFInterface$5;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static decryptAES128CBC([B[B[B)I
    .locals 5

    .line 1342
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a

    .line 1350
    :try_start_1
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p0, v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 1358
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v4, 0x2

    .line 1365
    :try_start_3
    invoke-virtual {v1, v4, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1372
    :try_start_4
    array-length p1, p0

    sub-int/2addr p1, v2

    invoke-virtual {v1, p0, v2, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    .line 1373
    array-length p1, p0

    invoke-static {p0, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1374
    array-length p0, p0
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    return p0

    :catch_0
    const/16 p0, -0x9

    return p0

    :catch_1
    const/4 p0, -0x8

    return p0

    :catch_2
    const/4 p0, -0x7

    return p0

    :catch_3
    const/4 p0, -0x6

    return p0

    :catch_4
    const/16 p0, -0xc

    return p0

    :catch_5
    const/4 p0, -0x5

    return p0

    :catch_6
    const/4 p0, -0x4

    return p0

    :catch_7
    const/4 p0, -0x3

    return p0

    :catch_8
    const/16 p0, -0xb

    return p0

    :catch_9
    const/16 p0, -0xa

    return p0

    :catch_a
    const/4 p0, -0x2

    return p0

    :catch_b
    const/4 p0, -0x1

    return p0
.end method

.method public static delKeyChain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 415
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v1, "GameEngineActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 418
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x1

    return p0
.end method

.method public static drawText(Landroid/graphics/Paint;[IIIIFFLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 860
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 861
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 862
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    move v6, p3

    move v7, p4

    .line 864
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 865
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 866
    invoke-virtual {v0, p7, p5, p6, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v0, p2

    .line 868
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public static encryptAES128CBC([B[B[B)I
    .locals 4

    .line 1303
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x10

    const-string v2, "AES"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 1311
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v1, 0x1

    .line 1318
    :try_start_2
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1323
    :try_start_3
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 1324
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 1325
    array-length v0, p1

    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    array-length v0, p1

    array-length v1, p0

    invoke-static {p0, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    array-length p1, p1

    array-length p0, p0
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/2addr p1, p0

    return p1

    :catch_0
    const/16 p0, -0x9

    return p0

    :catch_1
    const/4 p0, -0x8

    return p0

    :catch_2
    const/4 p0, -0x7

    return p0

    :catch_3
    const/4 p0, -0x6

    return p0

    :catch_4
    const/4 p0, -0x5

    return p0

    :catch_5
    const/4 p0, -0x4

    return p0

    :catch_6
    const/4 p0, -0x3

    return p0

    :catch_7
    const/4 p0, -0x2

    return p0

    :catch_8
    const/4 p0, -0x1

    return p0
.end method

.method public static eraseFolder(Ljava/lang/String;)Z
    .locals 2

    .line 1569
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1572
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static eventNoticing(Ljava/lang/String;)Z
    .locals 1

    .line 877
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/KLBExtensionRuntime;->onInGameEvent(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static exitGame()V
    .locals 1

    .line 1387
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    .line 1388
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static forbidSleep(Z)V
    .locals 1

    .line 1179
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0, p0}, Lklb/android/GameEngine/GameEngineActivity;->forbidSleep(Z)V

    :cond_0
    return-void
.end method

.method public static genUserID()Ljava/lang/String;
    .locals 1

    .line 376
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateDeviceIdent()Ljava/lang/String;
    .locals 5

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4170000000000000L    # 1.6777216E7

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAPKSignature()Ljava/lang/String;
    .locals 1

    .line 1717
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1718
    invoke-static {v0}, Lklb/android/GameEngine/PFInterface;->calAPKSignature(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity()Lklb/android/GameEngine/GameEngineActivity;
    .locals 1

    .line 226
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object v0
.end method

.method public static getBasePath()Ljava/lang/String;
    .locals 3

    .line 294
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    sget-object v0, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .line 956
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 941
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1392
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryCodeRAW()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 299
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getDateTimeNow()Ljava/lang/String;
    .locals 3

    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 364
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "Asia/Tokyo"

    .line 365
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 366
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 946
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceToken()Ljava/lang/String;
    .locals 3

    .line 341
    sget-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "deviceToken"

    .line 344
    invoke-static {v0, v0}, Lklb/android/GameEngine/PFInterface;->getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    .line 345
    sget-object v1, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->bakeDeviceToken()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    .line 349
    sget-object v1, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    invoke-static {v0, v0, v1}, Lklb/android/GameEngine/PFInterface;->setKeyChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    :cond_0
    sget-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableNotification()Z
    .locals 1

    .line 1155
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1156
    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getFingerPrint()Ljava/lang/String;
    .locals 1

    .line 967
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getFreeMemorySize()D
    .locals 4

    .line 1448
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v1, "activity"

    .line 1449
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1450
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1451
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1453
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance()Lklb/android/GameEngine/PFInterface;
    .locals 1

    .line 222
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    return-object v0
.end method

.method public static getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 407
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v1, "GameEngineActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 409
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguageCodeRAW()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 318
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getLocation()V
    .locals 1

    .line 1468
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1469
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getLocation()V

    return-void
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 936
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMode()I
    .locals 3

    .line 538
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 539
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 951
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOptimalAudioHz()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1397
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1398
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->isLowLatencyAudioOptimisationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "audio"

    .line 1400
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 1401
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const v0, 0xac44

    return v0
.end method

.method public static getOptimalAudioSamples()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1411
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1412
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->isLowLatencyAudioOptimisationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "audio"

    .line 1414
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 1415
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x400

    return v0
.end method

.method public static getOption()I
    .locals 5

    .line 544
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 545
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 546
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    .line 548
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 358
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionStatus()I
    .locals 1

    .line 1506
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1507
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPermissionStatus()I

    move-result v0

    return v0
.end method

.method public static getPhi()F
    .locals 1

    .line 1820
    sget v0, Lklb/android/GameEngine/PFInterface;->m_phi:F

    return v0
.end method

.method public static getPreferredLangCodeRAW()Ljava/lang/String;
    .locals 3

    .line 332
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getLanguageCodeRAW()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getCountryCodeRAW()Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .line 931
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRandomBytes([B)Z
    .locals 1

    .line 1249
    sget-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1252
    :cond_0
    sget-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x1

    return p0
.end method

.method static getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    .line 1188
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    const-string p0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDWvpCOQGvWEgauCr3lkQQOdeoJhr7zWG+F6OwahRx8Jn+SSeAG5Rurz+upF+gVURk6YNEbwMquG18WhZDJ+2rJwKtCPwQtB4YJAkW11eD56WNvccM/xnPOH71hckc0izAJh8wVheUEc/3RCeIV9mp8RFVKor1XW4lTwTLEcyKyZQIDAQAB"

    const/4 v3, 0x0

    .line 1205
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1206
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1209
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getString()Ljava/lang/String;
    .locals 1

    .line 313
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTags()Ljava/lang/String;
    .locals 1

    .line 972
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public static getTheta()F
    .locals 1

    .line 1815
    sget v0, Lklb/android/GameEngine/PFInterface;->m_theta:F

    return v0
.end method

.method public static getUNIXTimeNow()D
    .locals 4

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getUsedMemorySize()D
    .locals 4

    .line 1458
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v1, "activity"

    .line 1459
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1460
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1461
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1463
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getVersionCode()I
    .locals 3

    .line 1076
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1077
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1080
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1081
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1084
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v2
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 3

    .line 1162
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1163
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1166
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1167
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1170
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    const-string v1, "getVersionName"

    .line 1173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getVersionRelease()Ljava/lang/String;
    .locals 1

    .line 962
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionSDK()I
    .locals 1

    .line 926
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static indicator_cmd(II)V
    .locals 0

    .line 782
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/IndicatorItem;->cmd(I)V

    :cond_0
    return-void
.end method

.method public static indicator_create(IIIIZ)I
    .locals 9

    .line 729
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 730
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 731
    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-nez v1, :cond_0

    .line 733
    new-instance v8, Lklb/android/GameEngine/IndicatorItem;

    move-object v1, v8

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lklb/android/GameEngine/IndicatorItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;IIIIZ)V

    .line 734
    iput-object v8, v0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 739
    invoke-virtual {v1, p0}, Lklb/android/GameEngine/IndicatorItem;->setVisible(Z)V

    const/4 p0, -0x1

    return p0
.end method

.method public static indicator_destroy(I)Z
    .locals 1

    .line 746
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    .line 747
    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 749
    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    :cond_0
    return v0
.end method

.method public static indicator_getText(I)Ljava/lang/String;
    .locals 1

    .line 765
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 767
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indicator_setText(ILjava/lang/String;)Z
    .locals 0

    .line 757
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static indicator_update(IIIIIZZ)V
    .locals 0

    .line 773
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    .line 774
    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz p0, :cond_0

    .line 776
    invoke-virtual {p0, p1, p2, p3, p4}, Lklb/android/GameEngine/IndicatorItem;->move(IIII)V

    :cond_0
    return-void
.end method

.method public static movieview_cmd(II)V
    .locals 1

    .line 721
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object p0, v0, p0

    .line 722
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/MovieViewItem;->cmd(I)V

    return-void
.end method

.method public static movieview_create(IIIILjava/lang/String;Z)I
    .locals 12

    .line 666
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 667
    iget-object v3, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 668
    :goto_0
    iget v1, v0, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    if-ge v10, v1, :cond_2

    .line 669
    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v1, v1, v10

    if-nez v1, :cond_1

    .line 670
    new-instance v11, Lklb/android/GameEngine/MovieViewItem;

    move-object v1, v11

    move v2, v10

    move-object/from16 v4, p4

    move v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lklb/android/GameEngine/MovieViewItem;-><init>(ILklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V

    .line 671
    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aput-object v11, v1, v10

    .line 672
    iget v1, v0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-le v10, v1, :cond_0

    iput v10, v0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    :cond_0
    return v10

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static movieview_destroy(I)Z
    .locals 1

    .line 681
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 682
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object p0, v0, p0

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    return v0
.end method

.method public static movieview_getText(I)Ljava/lang/String;
    .locals 1

    .line 704
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static movieview_setText(ILjava/lang/String;)Z
    .locals 2

    .line 689
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 694
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v1, Lklb/android/GameEngine/PFInterface$3;

    invoke-direct {v1, p0, p1}, Lklb/android/GameEngine/PFInterface$3;-><init>(Lklb/android/GameEngine/MovieViewItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static movieview_update(IIIIIZZ)V
    .locals 0

    .line 712
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p5

    .line 713
    iget-object p5, p5, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object p0, p5, p0

    if-eqz p0, :cond_0

    .line 715
    invoke-virtual {p0, p1, p2, p3, p4}, Lklb/android/GameEngine/MovieViewItem;->move(IIII)V

    :cond_0
    return-void
.end method

.method public static nanotime()J
    .locals 2

    .line 872
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1632
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lklb/android/GameEngine/KLBExtensionRuntime;->onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onNotificationExpired(Landroid/content/Context;I)V
    .locals 1

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/external/alarm/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".info"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1754
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1760
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static onResetLocalNotification(Landroid/content/Context;)V
    .locals 9

    .line 1726
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/external/alarm/0.info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1727
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1728
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1729
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1730
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, ";"

    .line 1734
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 1735
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    const/4 v1, 0x1

    .line 1737
    aget-object v4, v0, v1

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x2

    aget-object v6, v0, v1

    const/4 v1, 0x4

    aget-object v8, v0, v1

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lklb/android/GameEngine/PFInterface;->setLocalNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static publicKeyEncrypt([B[B[B)I
    .locals 4

    .line 1258
    invoke-static {p1}, Lklb/android/GameEngine/PFInterface;->getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1262
    :cond_0
    sget-object v1, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    if-nez v1, :cond_1

    .line 1263
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1265
    :cond_1
    sget-object v1, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "RSA/None/PKCS1Padding"

    const-string v2, "BC"

    .line 1267
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    .line 1280
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    sget-object v3, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1286
    :try_start_2
    sget-object p1, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 1287
    array-length p1, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1288
    array-length p0, p0
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :catch_1
    return v0
.end method

.method public static publicKeyVerify([B[B[B)Z
    .locals 2

    :try_start_0
    const-string v0, "SHA1withRSA"

    .line 1221
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1226
    invoke-static {p2}, Lklb/android/GameEngine/PFInterface;->getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 1231
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1237
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 1238
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    return v1

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public static quitGame()V
    .locals 2

    .line 1424
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1425
    new-instance v1, Lklb/android/GameEngine/PFInterface$4;

    invoke-direct {v1}, Lklb/android/GameEngine/PFInterface$4;-><init>()V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static requirePermission(I)V
    .locals 2

    .line 1481
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->requireWritePhotoPermission()V

    goto :goto_0

    .line 1493
    :cond_1
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->requireNotificationPermission()V

    goto :goto_0

    .line 1488
    :cond_2
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->requireLocationPermission()V

    :goto_0
    return-void
.end method

.method public static savePhotoToAlbum()V
    .locals 4

    .line 1695
    sget-object v0, Lklb/android/GameEngine/PFInterface;->fileToWriteAlbum:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1697
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1698
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1704
    :try_start_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1705
    invoke-virtual {v2}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lklb/android/GameEngine/PFInterface;->fileToWriteAlbum:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :catch_0
    sput-object v1, Lklb/android/GameEngine/PFInterface;->fileToWriteAlbum:Ljava/lang/String;

    return-void
.end method

.method public static savePng2Album(Ljava/lang/String;)V
    .locals 0

    .line 1689
    sput-object p0, Lklb/android/GameEngine/PFInterface;->fileToWriteAlbum:Ljava/lang/String;

    const/4 p0, 0x3

    .line 1690
    invoke-static {p0}, Lklb/android/GameEngine/PFInterface;->requirePermission(I)V

    return-void
.end method

.method public static setKeyChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 396
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 397
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v2, "GameEngineActivity"

    invoke-virtual {v0, v2, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 400
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x1

    return p0
.end method

.method public static setLocalNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-string v0, ";"

    .line 1091
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xd

    .line 1093
    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->add(II)V

    .line 1095
    new-instance p4, Landroid/content/Intent;

    const-class v2, Lklb/android/lovelivecn/AlarmBroadcastReceiver;

    invoke-direct {p4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tag"

    .line 1096
    invoke-virtual {p4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msg"

    .line 1097
    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "soundName"

    .line 1098
    invoke-virtual {p4, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    .line 1099
    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 1101
    invoke-static {p0, p2, p4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    const-string v2, "alarm"

    .line 1102
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1103
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v3, v5, :cond_0

    .line 1106
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1108
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_1

    .line 1110
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1119
    :goto_0
    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/external/alarm/"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1120
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 1122
    new-instance p4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".info"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    .line 1124
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p4, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1125
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 1127
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1128
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setLocalNotificationWithAlarm(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1138
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 1139
    invoke-static/range {v1 .. v6}, Lklb/android/GameEngine/PFInterface;->setLocalNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "No Such Algorithm: SHA512"

    :try_start_0
    const-string v1, "SHA-512"

    .line 383
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 385
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 390
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1639
    :try_start_0
    sput-object p0, Lklb/android/GameEngine/PFInterface;->shareCompatCallback:Ljava/lang/String;

    .line 1640
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p0

    iget-object p0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1641
    invoke-static {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    .line 1643
    invoke-virtual {v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    if-eqz p2, :cond_0

    .line 1646
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 1648
    invoke-virtual {v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    const-string p1, "image/png"

    .line 1649
    invoke-virtual {v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "text/plain"

    .line 1653
    invoke-virtual {v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    .line 1655
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->startShare(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1032
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1033
    invoke-virtual {v0, p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1057
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1058
    invoke-virtual {v0, p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->startApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startBrowser(Ljava/lang/String;)V
    .locals 1

    .line 1039
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1040
    invoke-virtual {v0, p0}, Lklb/android/GameEngine/GameEngineActivity;->startBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public static startMailer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1025
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1026
    invoke-virtual {v0, p0, p1, p2}, Lklb/android/GameEngine/GameEngineActivity;->startExternalApplicationMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startMap(DD)V
    .locals 1

    .line 1045
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1046
    invoke-virtual {v0, p0, p1, p2, p3}, Lklb/android/GameEngine/GameEngineActivity;->startMap(DD)V

    return-void
.end method

.method public static startObservation()V
    .locals 4

    .line 1765
    sget-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    return-void

    .line 1766
    :cond_0
    new-instance v0, Lklb/android/GameEngine/PFInterface$6;

    invoke-direct {v0}, Lklb/android/GameEngine/PFInterface$6;-><init>()V

    sput-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1798
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1799
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 1800
    sget-object v1, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1801
    sget-object v1, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public static startSettings()V
    .locals 1

    .line 1051
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1052
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->startSettings()V

    return-void
.end method

.method public static stopGetLocation()Z
    .locals 1

    .line 1474
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1475
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->stopGetLocation()Z

    move-result v0

    return v0
.end method

.method public static stopObservation()V
    .locals 2

    .line 1806
    sget-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    return-void

    .line 1807
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1808
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 1809
    sget-object v1, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 1810
    sput-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static textbox_create(IIIILjava/lang/String;Z)I
    .locals 10

    .line 425
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 426
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 427
    new-instance v9, Lklb/android/GameEngine/EditBoxItem;

    move-object v1, v9

    move-object v3, p4

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lklb/android/GameEngine/EditBoxItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V

    const/4 p0, 0x0

    .line 428
    :goto_0
    iget p1, v0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    if-ge p0, p1, :cond_2

    .line 429
    iget-object p1, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p2, p1, p0

    if-nez p2, :cond_1

    .line 430
    aput-object v9, p1, p0

    .line 431
    iget p1, v0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-le p0, p1, :cond_0

    iput p0, v0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    :cond_0
    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static textbox_destroy(I)Z
    .locals 1

    .line 441
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 442
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    return v0
.end method

.method public static textbox_getText(I)Ljava/lang/String;
    .locals 1

    .line 466
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/EditBoxItem;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static textbox_setAlignment(II)V
    .locals 2

    .line 517
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 518
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 533
    :goto_0
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/EditBoxItem;->setGravity(I)V

    return-void
.end method

.method public static textbox_setMaxlen(II)V
    .locals 1

    .line 505
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 506
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/EditBoxItem;->setMaxlen(I)V

    return-void
.end method

.method public static textbox_setText(ILjava/lang/String;)Z
    .locals 2

    .line 449
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 456
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v1, Lklb/android/GameEngine/PFInterface$1;

    invoke-direct {v1, p0, p1}, Lklb/android/GameEngine/PFInterface$1;-><init>(Lklb/android/GameEngine/EditBoxItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static textbox_sethint(ILjava/lang/String;)V
    .locals 1

    .line 496
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 497
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/EditBoxItem;->setHint(Ljava/lang/String;)V

    return-void
.end method

.method public static textbox_setpaint(ILandroid/graphics/Paint;)V
    .locals 1

    .line 486
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 487
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/EditBoxItem;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public static textbox_update(IIIIIZZ)V
    .locals 1

    .line 474
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 475
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lklb/android/GameEngine/EditBoxItem;->move(IIII)V

    .line 479
    invoke-virtual {p0, p6}, Lklb/android/GameEngine/EditBoxItem;->setVisible(Z)V

    .line 480
    invoke-virtual {p0, p5}, Lklb/android/GameEngine/EditBoxItem;->setEnable(Z)V

    return-void
.end method

.method public static webview_create(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 20

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v2, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    .line 559
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v15

    .line 560
    iget-object v1, v15, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 561
    new-instance v18, Lklb/android/GameEngine/WebViewItem;

    move-object/from16 v0, v18

    iget-object v14, v15, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v15, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lklb/android/GameEngine/WebViewItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v0, v19

    const/4 v1, 0x0

    .line 564
    :goto_0
    iget v2, v0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    if-ge v1, v2, :cond_2

    .line 565
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v3, v2, v1

    if-nez v3, :cond_1

    .line 566
    aput-object v18, v2, v1

    .line 567
    iget v2, v0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-le v1, v2, :cond_0

    iput v1, v0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static webview_destroy(I)Z
    .locals 1

    .line 577
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 578
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    return v0
.end method

.method public static webview_getText(I)Ljava/lang/String;
    .locals 1

    .line 638
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static webview_getTmpText(I)Ljava/lang/String;
    .locals 1

    .line 646
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/WebViewItem;->getTmpText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static webview_getWebViewItem(Landroid/webkit/WebView;)I
    .locals 4

    .line 603
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 604
    :goto_0
    iget v2, v0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    if-ge v1, v2, :cond_1

    .line 606
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lklb/android/GameEngine/WebViewItem;->isEqual(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static webview_setColor(III)V
    .locals 1

    .line 624
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-virtual {p0, p1, p2}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    return-void
.end method

.method public static webview_setText(ILjava/lang/String;)Z
    .locals 2

    .line 585
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 588
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v1, Lklb/android/GameEngine/PFInterface$2;

    invoke-direct {v1, p1, p0}, Lklb/android/GameEngine/PFInterface$2;-><init>(Ljava/lang/String;Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static webview_setWhiteUrl(ILjava/lang/String;)V
    .locals 1

    .line 631
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/WebViewItem;->setWhiteUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static webview_setZoom(IZ)V
    .locals 1

    .line 616
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-nez p0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/WebViewItem;->setZoom(Z)V

    return-void
.end method

.method public static webview_update(IIIIIZZ)V
    .locals 1

    .line 654
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 655
    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object p0, v0, p0

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {p0, p1, p2, p3, p4}, Lklb/android/GameEngine/WebViewItem;->move(IIII)V

    .line 658
    invoke-virtual {p0, p6}, Lklb/android/GameEngine/WebViewItem;->setVisible(Z)V

    .line 659
    invoke-virtual {p0, p5}, Lklb/android/GameEngine/WebViewItem;->setEnable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IsInstallEnd()Z
    .locals 1

    .line 1018
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1019
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->IsInstallEnd()Z

    move-result v0

    return v0
.end method

.method public native OnLocationCallback(IIDDLjava/lang/String;)V
.end method

.method public native OnNotificationCallback(IILjava/lang/String;)V
.end method

.method public native WebViewControlEvent(Landroid/webkit/WebView;ILjava/lang/String;)V
.end method

.method public callInit(IILjava/lang/String;)Z
    .locals 9

    .line 883
    iput p1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    .line 884
    iput p2, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    .line 885
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 886
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 887
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 888
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "JST"

    .line 891
    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    .line 898
    iget-object v8, p0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lklb/android/GameEngine/PFInterface;->initSequence(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    .line 900
    iput-boolean p2, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    return p1
.end method

.method public native clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native clientResumeGame()V
.end method

.method public native frameFlip(I)V
.end method

.method public getActive()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    return v0
.end method

.method public getBacktracePath()Ljava/lang/String;
    .locals 3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lklb/android/GameEngine/PFInterface;->m_path_external:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Backtrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .line 236
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object v0
.end method

.method public native getGLVersion()I
.end method

.method public getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1533
    invoke-virtual {p0, p1, p2}, Lklb/android/GameEngine/PFInterface;->internalGetLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 1535
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const/4 v1, 0x0

    .line 1539
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v2}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1541
    :try_start_0
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    .line 1545
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1

    .line 1547
    :cond_2
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public native initSequence(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native inputDeviceKey(IC)V
.end method

.method public native inputPoint(IIII)V
.end method

.method public native internalGetLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public loadProxy(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "jniproxy"

    .line 1556
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lib/libjniproxy.so"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1563
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public native onActivityPause()V
.end method

.method public native onActivityResume()V
.end method

.method public native onHeadsetActive()V
.end method

.method public native onKLabIdResult(ILjava/lang/String;)V
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    .line 259
    sget-object v0, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 262
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 263
    sget-object v1, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 266
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->MovieSetPauseOnResign()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    .line 272
    sget-object v1, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v1, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 275
    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 276
    sget-object v2, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 277
    sget-object v2, Lklb/android/GameEngine/PFInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 279
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->MovieSetPlayOnResume()V

    return-void
.end method

.method public native onShareCallback(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public onShareResult(ILandroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    .line 1665
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tweet"

    aput-object v3, v1, v2

    const-string v3, "Unknown"

    if-eqz p2, :cond_2

    .line 1669
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1671
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 1673
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1682
    :goto_2
    sget-object p1, Lklb/android/GameEngine/PFInterface;->shareCompatCallback:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lklb/android/GameEngine/PFInterface;->onShareCallback(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 1683
    sput-object p1, Lklb/android/GameEngine/PFInterface;->shareCompatCallback:Ljava/lang/String;

    return-void
.end method

.method public native resetViewport()V
.end method

.method public native rotateScreenOrientation(III)V
.end method

.method public screenRotation(I)V
    .locals 2

    .line 905
    iget-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_3

    .line 908
    iget p1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 909
    :cond_1
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-le v0, v1, :cond_5

    :cond_2
    move v0, v1

    goto :goto_1

    .line 913
    :cond_3
    iget p1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-le p1, v0, :cond_4

    goto :goto_0

    :cond_4
    move p1, v0

    .line 914
    :goto_0
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-ge v0, v1, :cond_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 917
    invoke-virtual {p0, v1, p1, v0}, Lklb/android/GameEngine/PFInterface;->rotateScreenOrientation(III)V

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    return-void
.end method

.method public setBasePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 240
    sput-object p2, Lklb/android/GameEngine/PFInterface;->m_path_external:Ljava/lang/String;

    .line 241
    sput-object p1, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    return-void
.end method

.method public setContext(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 3

    .line 230
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    :goto_1
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public native setLoadAppPath(Ljava/lang/String;)V
.end method

.method public native toNativeSignal(II)V
.end method

.method public declared-synchronized updateControl()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 791
    :goto_0
    :try_start_0
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    .line 792
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 793
    :cond_0
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->remove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aput-object v3, v2, v1

    goto :goto_1

    .line 797
    :cond_1
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->create()V

    .line 798
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->update()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    :cond_2
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    const/4 v2, -0x1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    iget v4, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    aget-object v1, v1, v4

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 802
    :goto_2
    iget v5, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-ge v1, v5, :cond_4

    .line 803
    iget-object v5, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    move v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 805
    :cond_4
    iput v4, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    :cond_5
    const/4 v1, 0x0

    .line 808
    :goto_3
    iget v4, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-gt v1, v4, :cond_8

    .line 809
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v4, v4, v1

    if-nez v4, :cond_6

    goto :goto_4

    .line 810
    :cond_6
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/WebViewItem;->remove()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 811
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aput-object v3, v4, v1

    goto :goto_4

    .line 814
    :cond_7
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/WebViewItem;->create()V

    .line 815
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/WebViewItem;->update()V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 817
    :cond_8
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-ltz v1, :cond_b

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    iget v4, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    aget-object v1, v1, v4

    if-nez v1, :cond_b

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 819
    :goto_5
    iget v5, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-ge v1, v5, :cond_a

    .line 820
    iget-object v5, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v5, v5, v1

    if-eqz v5, :cond_9

    move v4, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 822
    :cond_a
    iput v4, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    :cond_b
    const/4 v1, 0x0

    .line 825
    :goto_6
    iget v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-gt v1, v4, :cond_e

    .line 826
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v4, v4, v1

    if-nez v4, :cond_c

    goto :goto_7

    .line 827
    :cond_c
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/MovieViewItem;->remove()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 828
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aput-object v3, v4, v1

    goto :goto_7

    .line 831
    :cond_d
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/MovieViewItem;->create()V

    .line 832
    iget-object v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lklb/android/GameEngine/MovieViewItem;->update()V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 834
    :cond_e
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-ltz v1, :cond_11

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    iget v4, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    aget-object v1, v1, v4

    if-nez v1, :cond_11

    .line 836
    :goto_8
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-ge v0, v1, :cond_10

    .line 837
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    move v2, v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 839
    :cond_10
    iput v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    .line 843
    :cond_11
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz v0, :cond_13

    .line 845
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v0}, Lklb/android/GameEngine/IndicatorItem;->remove()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 847
    iput-object v3, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 849
    :cond_12
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz v0, :cond_13

    .line 851
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v0}, Lklb/android/GameEngine/IndicatorItem;->create()V

    .line 852
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v0}, Lklb/android/GameEngine/IndicatorItem;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
