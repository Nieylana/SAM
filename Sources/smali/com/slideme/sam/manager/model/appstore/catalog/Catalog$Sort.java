.class public final Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
.super Ljava/lang/Object;
.source "Catalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sort"
.end annotation


# static fields
.field public static FIELD:[Ljava/lang/String;

.field public static ORDER:[Ljava/lang/String;


# instance fields
.field public field:Ljava/lang/String;

.field public order:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-array v0, v4, [Ljava/lang/String;

    .line 104
    const-string v1, "ASC"

    aput-object v1, v0, v2

    const-string v1, "DESC"

    aput-object v1, v0, v3

    .line 103
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->ORDER:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    const-string v1, "NAME"

    aput-object v1, v0, v2

    const-string v1, "RATING"

    aput-object v1, v0, v3

    const-string v1, "PRICE"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "POPULARITY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "VENDOR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CREATED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "UPDATED"

    aput-object v2, v0, v1

    .line 108
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->FIELD:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->order:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->field:Ljava/lang/String;

    .line 100
    return-void
.end method
