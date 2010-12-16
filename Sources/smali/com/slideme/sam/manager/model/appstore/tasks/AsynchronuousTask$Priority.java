.class public final enum Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;
.super Ljava/lang/Enum;
.source "AsynchronuousTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

.field public static final enum HIGH:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

.field public static final enum IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

.field public static final enum LOW:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

.field public static final enum NORMAL:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->LOW:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    .line 203
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->NORMAL:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    .line 204
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->HIGH:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    .line 205
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->LOW:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->NORMAL:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->HIGH:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    return-object p0
.end method

.method public static values()[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    array-length v1, v0

    new-array v2, v1, [Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
