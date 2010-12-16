.class public final Lcom/slideme/sam/manager/model/event/Event$Context;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/event/Event$Context$Catalog;,
        Lcom/slideme/sam/manager/model/event/Event$Context$Download;
    }
.end annotation


# static fields
.field public static final CATALOG:I = 0x0

.field public static final DOWNLOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
