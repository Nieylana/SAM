.class public Lcom/slideme/sam/manager/model/installer/DateComparator;
.super Ljava/lang/Object;
.source "DateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/slideme/sam/manager/model/installer/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/slideme/sam/manager/model/installer/AppInfo;Lcom/slideme/sam/manager/model/installer/AppInfo;)I
    .locals 6
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 8
    iget-object v4, p1, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 9
    .local v0, i:J
    iget-object v4, p2, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 10
    .local v2, j:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 11
    const/4 v4, 0x1

    .line 15
    :goto_0
    return v4

    .line 12
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 13
    const/4 v4, -0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v4, p1, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/slideme/sam/manager/model/installer/AppInfo;

    check-cast p2, Lcom/slideme/sam/manager/model/installer/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/slideme/sam/manager/model/installer/DateComparator;->compare(Lcom/slideme/sam/manager/model/installer/AppInfo;Lcom/slideme/sam/manager/model/installer/AppInfo;)I

    move-result v0

    return v0
.end method
