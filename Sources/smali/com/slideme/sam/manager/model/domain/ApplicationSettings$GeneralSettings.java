.class public Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralSettings"
.end annotation


# instance fields
.field private appsPerPage:I

.field private country:Ljava/lang/String;

.field private freeApps:Z

.field private xScreenshots:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->xScreenshots:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppsPerPage()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->appsPerPage:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeApps()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->freeApps:Z

    return v0
.end method

.method public getXScreenshots()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->xScreenshots:I

    return v0
.end method

.method public setAppsPerPage(I)V
    .locals 0
    .parameter "appsPerPage"

    .prologue
    .line 31
    iput p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->appsPerPage:I

    .line 32
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->country:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFreeApps(Z)V
    .locals 0
    .parameter "freeApps"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->freeApps:Z

    .line 49
    return-void
.end method

.method public setXScreenshots(I)V
    .locals 1
    .parameter "xScreenshots"

    .prologue
    .line 56
    const/4 v0, -0x2

    if-le p1, v0, :cond_0

    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 57
    iput p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->xScreenshots:I

    .line 58
    :cond_0
    return-void
.end method
