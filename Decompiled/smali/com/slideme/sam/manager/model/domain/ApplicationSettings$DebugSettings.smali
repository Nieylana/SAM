.class public Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugSettings"
.end annotation


# instance fields
.field private bugReporting:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getBugReporting()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;->bugReporting:Z

    return v0
.end method

.method public isBugReporting()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;->bugReporting:Z

    return v0
.end method

.method public setBugReporting(Z)V
    .locals 0
    .parameter "bugReporting"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;->bugReporting:Z

    .line 114
    return-void
.end method
