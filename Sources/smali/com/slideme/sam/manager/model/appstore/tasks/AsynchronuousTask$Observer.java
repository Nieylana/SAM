.class public interface abstract Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
.super Ljava/lang/Object;
.source "AsynchronuousTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract effortUpdate(I)V
.end method

.method public abstract onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
.end method

.method public abstract reviewEstimatedEffort(I)V
.end method
