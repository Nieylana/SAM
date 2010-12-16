.class public Lcom/slideme/sam/manager/model/state/StatefulComponent;
.super Ljava/lang/Object;
.source "StatefulComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/state/StatefulComponent$State;
    }
.end annotation


# instance fields
.field private state:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addState(I)V
    .locals 4
    .parameter "substate"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    .line 57
    return-void
.end method

.method public getState()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    return-wide v0
.end method

.method public isInState(I)Z
    .locals 6
    .parameter "substate"

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    int-to-long v4, p1

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeState(I)V
    .locals 4
    .parameter "substate"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/model/state/StatefulComponent;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    int-to-long v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    .line 48
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/slideme/sam/manager/model/state/StatefulComponent;->state:J

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/model/state/StatefulComponent$State$Lifecycle;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
