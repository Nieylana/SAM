.class public Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_LARGE:I = 0x4

.field public static final DISPLAY_NORMAL:I = 0x2

.field public static final DISPLAY_SMALL:I = 0x1

.field private static final UNU:B = 0x1t

.field private static final ZERO:B


# instance fields
.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public created:J

.field public deviceDisplay:Ljava/lang/String;

.field public deviceLocale:Ljava/lang/String;

.field public deviceSdk:Ljava/lang/String;

.field private display:I

.field public final locales:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxSdkVersion:Ljava/lang/String;

.field public modified:J

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public preview:I

.field public price:D

.field public rating:D

.field public required_displays:Ljava/lang/String;

.field public required_locales:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public size:J

.field public targetSdkVersion:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public vendor:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public youtube:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application$1;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application$1;-><init>()V

    .line 150
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v6, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    .line 40
    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    .line 42
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    .line 51
    iput v6, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    .line 52
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    .line 53
    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    .line 54
    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->modified:J

    .line 55
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    .line 58
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceDisplay:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceLocale:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceSdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_displays:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_locales:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .parameter "in"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    .line 40
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    .line 42
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    .line 48
    const-string v2, ""

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    .line 51
    iput v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    .line 52
    iput-wide v6, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    .line 53
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    .line 54
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->modified:J

    .line 55
    iput-wide v6, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    .line 58
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceDisplay:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceLocale:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceSdk:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_displays:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_locales:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->modified:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceDisplay:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceLocale:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceSdk:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_displays:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_locales:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .local v1, locales:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const-string v13, "Compatibility"

    const-string v12, "Application"

    const-string v11, "SDK"

    .line 197
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;-><init>()V

    .line 198
    .local v0, application:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    const/4 v6, 0x2

    const-string v7, "Application"

    invoke-interface {p0, v6, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v6

    if-eq v9, v6, :cond_0

    .line 202
    const-string v6, "Applications"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, tagName:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 200
    if-eqz v6, :cond_1

    .line 286
    .end local v5           #tagName:Ljava/lang/String;
    :cond_0
    const-string v6, "Application"

    invoke-interface {p0, v9, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v0

    .line 203
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_1
    const-string v6, "UID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    .line 284
    :cond_2
    :goto_1
    invoke-interface {p0, v9, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    const-string v6, "Name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "&#039;"

    const-string v8, "\'"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&amp;"

    const-string v8, "&"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    goto :goto_1

    .line 207
    :cond_4
    const-string v6, "Vendor"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 208
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    goto :goto_1

    .line 209
    :cond_5
    const-string v6, "Version"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 210
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    goto :goto_1

    .line 211
    :cond_6
    const-string v6, "Price"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, price:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    goto :goto_1

    .line 214
    .end local v3           #price:Ljava/lang/String;
    :cond_7
    const-string v6, "Rating"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    goto :goto_1

    .line 216
    :cond_8
    const-string v6, "Class"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 217
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    goto :goto_1

    .line 218
    :cond_9
    const-string v6, "Package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 219
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_a
    const-string v6, "previewCount"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 221
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    goto/16 :goto_1

    .line 222
    :cond_b
    const-string v6, "Size"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    goto/16 :goto_1

    .line 224
    :cond_c
    const-string v6, "videoURL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 225
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_d
    const-string v6, "createdTime"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    goto/16 :goto_1

    .line 228
    :cond_e
    const-string v6, "modifiedTime"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 229
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->modified:J

    goto/16 :goto_1

    .line 230
    :cond_f
    const-string v6, "Category"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 232
    :cond_10
    const-string v6, "Compatibility"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 235
    :cond_11
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v6

    if-eq v9, v6, :cond_2

    .line 237
    const-string v6, "Compatibility"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, cTagName:Ljava/lang/String;
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 235
    if-nez v6, :cond_2

    .line 239
    const-string v6, "Display"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 240
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    goto :goto_2

    .line 241
    :cond_12
    const-string v6, "SDK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 243
    :cond_13
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v6

    if-eq v9, v6, :cond_11

    .line 245
    const-string v6, "SDK"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, sTagName:Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 243
    if-nez v6, :cond_11

    .line 247
    const-string v6, "Maximum"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 248
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    goto :goto_3

    .line 249
    :cond_14
    const-string v6, "Minimum"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 250
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    goto :goto_3

    .line 251
    :cond_15
    const-string v6, "Target"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    goto :goto_3

    .line 255
    :cond_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_13

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_3

    .line 260
    .end local v4           #sTagName:Ljava/lang/String;
    :cond_17
    const-string v6, "Locales"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 262
    :cond_18
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v6

    if-eq v9, v6, :cond_11

    .line 264
    const-string v6, "SDK"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, lTagName:Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 262
    if-nez v6, :cond_11

    .line 265
    const-string v6, "Locale"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 266
    iget-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 269
    :cond_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_18

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_4

    .line 275
    .end local v2           #lTagName:Ljava/lang/String;
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_2

    .line 282
    .end local v1           #cTagName:Ljava/lang/String;
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSize()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    .line 180
    iget-wide v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    div-long v0, v5, v7

    .line 181
    .local v0, kb:J
    div-long v3, v0, v7

    .line 184
    .local v3, x:J
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, s:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 187
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method public cancelDownload()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->cancelDownload(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 165
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getFlurryParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "P"

    iget-wide v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "A"

    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "DUID"

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object v0
.end method

.method public isDownloading()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->isDownloading(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v0

    return-object v0
.end method

.method public supportsScreen(I)Z
    .locals 1
    .parameter "screenType"

    .prologue
    .line 172
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ::: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 118
    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->display:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-wide v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->size:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-wide v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->modified:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-wide v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 124
    iget-wide v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceDisplay:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->deviceSdk:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_displays:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->required_locales:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, l:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
