.class public Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;,
        Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;,
        Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;
    }
.end annotation


# static fields
.field private static instance:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;


# instance fields
.field private debug:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

.field private general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

.field private networking:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->instance:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;-><init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    .line 85
    new-instance v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;-><init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->networking:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;

    .line 121
    new-instance v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;-><init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->debug:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->instance:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    return-object v0
.end method


# virtual methods
.method public getDebugSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->debug:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

    return-object v0
.end method

.method public getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    return-object v0
.end method

.method public getNetworkingSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->networking:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;

    return-object v0
.end method
