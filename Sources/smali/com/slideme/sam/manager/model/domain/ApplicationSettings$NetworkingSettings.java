.class public Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkingSettings"
.end annotation


# instance fields
.field private networkTimeout:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkTimeout()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;->networkTimeout:I

    return v0
.end method

.method public setNetworkTimeout(I)V
    .locals 0
    .parameter "networkTimeout"

    .prologue
    .line 80
    iput p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;->networkTimeout:I

    .line 81
    return-void
.end method
