.class public Lcom/slideme/sam/manager/model/appstore/C$FEED;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FEED"
.end annotation


# static fields
.field public static final APPLICATION:Ljava/lang/String; = "Application"

.field public static final APPLICATIONS:Ljava/lang/String; = "Applications"

.field public static final CATALOG:Ljava/lang/String; = "Catalog"

.field public static final CATEGORIES:Ljava/lang/String; = "Categories"

.field public static final CATEGORY:Ljava/lang/String; = "Category"

.field public static final CLASS:Ljava/lang/String; = "Class"

.field public static final COMPATIBILITY:Ljava/lang/String; = "Compatibility"

.field public static final COUNT:Ljava/lang/String; = "Count"

.field public static final CREATED:Ljava/lang/String; = "createdTime"

.field public static final DISPLAY:Ljava/lang/String; = "Display"

.field public static final FEEDS_TABLE:[Ljava/lang/String; = null

.field public static final LOCALE:Ljava/lang/String; = "Locale"

.field public static final LOCALES:Ljava/lang/String; = "Locales"

.field public static final MAX:Ljava/lang/String; = "Maximum"

.field public static final MIN:Ljava/lang/String; = "Minimum"

.field public static final MODIFIED:Ljava/lang/String; = "modifiedTime"

.field public static final NAME:Ljava/lang/String; = "Name"

.field public static final PACKAGE:Ljava/lang/String; = "Package"

.field public static final PAGE:Ljava/lang/String; = "Page"

.field public static final PREVIEW_COUNT:Ljava/lang/String; = "previewCount"

.field public static final PRICE:Ljava/lang/String; = "Price"

.field public static final RATING:Ljava/lang/String; = "Rating"

.field public static final RESERVED_1:Ljava/lang/String; = "Reserved_1"

.field public static final RESERVED_10:Ljava/lang/String; = "Reserved_10"

.field public static final RESERVED_2:Ljava/lang/String; = "Reserved_3"

.field public static final RESERVED_3:Ljava/lang/String; = "Reserved_3"

.field public static final RESERVED_4:Ljava/lang/String; = "Reserved_4"

.field public static final RESERVED_5:Ljava/lang/String; = "Reserved_5"

.field public static final RESERVED_6:Ljava/lang/String; = "Reserved_6"

.field public static final RESERVED_7:Ljava/lang/String; = "Reserved_7"

.field public static final RESERVED_8:Ljava/lang/String; = "Reserved_8"

.field public static final RESERVED_9:Ljava/lang/String; = "Reserved_9"

.field public static final SDK:Ljava/lang/String; = "SDK"

.field public static final SIZE:Ljava/lang/String; = "Size"

.field public static final TARGET:Ljava/lang/String; = "Target"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final VENDOR:Ljava/lang/String; = "Vendor"

.field public static final VERSION:Ljava/lang/String; = "Version"

.field public static final VIDEO_URL:Ljava/lang/String; = "videoURL"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "Reserved_3"

    .line 56
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    const-string v2, "Catalog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "Categories"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "Category"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "Applications"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "Application"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    const-string v2, "UID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 64
    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 65
    const-string v2, "Package"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 66
    const-string v2, "Class"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 67
    const-string v2, "Vendor"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 68
    const-string v2, "Version"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 69
    const-string v2, "Price"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 70
    const-string v2, "previewCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 71
    const-string v2, "videoURL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 72
    const-string v2, "Compatibility"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 73
    const-string v2, "Display"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 74
    const-string v2, "SDK"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 75
    const-string v2, "Minimum"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 76
    const-string v2, "Target"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 77
    const-string v2, "Maximum"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 78
    const-string v2, "Locales"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 79
    const-string v2, "Locale"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 80
    const-string v2, "createdTime"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 81
    const-string v2, "modifiedTime"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 82
    const-string v2, "Rating"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 83
    const-string v2, "Count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 84
    const-string v2, "Page"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 85
    const-string v2, "Reserved_1"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 86
    const-string v2, "Reserved_3"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    .line 87
    const-string v2, "Reserved_3"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    .line 88
    const-string v2, "Reserved_4"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 89
    const-string v2, "Reserved_5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 90
    const-string v2, "Reserved_6"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 91
    const-string v2, "Reserved_7"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 92
    const-string v2, "Reserved_8"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 93
    const-string v2, "Reserved_9"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 94
    const-string v2, "Reserved_10"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/C$FEED;->FEEDS_TABLE:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
