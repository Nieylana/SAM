.class public final Lcom/slideme/sam/manager/model/state/StatefulComponent$State$Lifecycle;
.super Ljava/lang/Object;
.source "StatefulComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/state/StatefulComponent$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field public static final CANCELLED:I = 0x10

.field public static final COMPLETED:I = 0x40

.field public static final ERROR:I = 0x80

.field public static final INITIANLIZED:I = 0x1

.field public static final RUNNING:I = 0x4

.field public static final STARTED:I = 0x2

.field public static final STOPPED:I = 0x20

.field public static final SUSPENDED:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 5
    .parameter "state"

    .prologue
    const-wide/16 v3, 0x0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "INITIALIZED"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "|STARTED"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-string v1, "|RUNNING"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-wide/16 v1, 0x8

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const-string v1, "|SUSPENDED"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const-string v1, "|CANCELLED"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-wide/16 v1, 0x20

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "|STOPPED"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-wide/16 v1, 0x40

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const-string v1, "|COMPLETED"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-wide/16 v1, 0x80

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    const-string v1, "|ERROR"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "NOT INITIALIZED"

    goto :goto_0

    .line 113
    :cond_1
    const-string v1, "|NOT STARTED"

    goto :goto_1

    .line 114
    :cond_2
    const-string v1, "|NOT RUNNING"

    goto :goto_2

    .line 115
    :cond_3
    const-string v1, "|NOT SUSPENDED"

    goto :goto_3

    .line 116
    :cond_4
    const-string v1, "|NOT CANCELLED}"

    goto :goto_4

    .line 117
    :cond_5
    const-string v1, "|NOT STOPPED}"

    goto :goto_5

    .line 118
    :cond_6
    const-string v1, "|NOT COMPLETED}"

    goto :goto_6

    .line 119
    :cond_7
    const-string v1, "|NOT ERROR}"

    goto :goto_7
.end method
