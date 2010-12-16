.class public Lcom/slideme/sam/manager/model/installer/AZComparator;
.super Ljava/lang/Object;
.source "AZComparator.java"

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
    .locals 7
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 9
    iget-object v5, p1, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 10
    .local v4, x:I
    if-nez v4, :cond_2

    .line 11
    iget-object v5, p1, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 12
    .local v0, i:J
    iget-object v5, p2, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 13
    .local v2, j:J
    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 14
    const/4 v5, 0x1

    .line 21
    .end local v0           #i:J
    .end local v2           #j:J
    :goto_0
    return v5

    .line 15
    .restart local v0       #i:J
    .restart local v2       #j:J
    :cond_0
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 16
    const/4 v5, -0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .end local v0           #i:J
    .end local v2           #j:J
    :cond_2
    move v5, v4

    .line 21
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

    invoke-virtual {p0, p1, p2}, Lcom/slideme/sam/manager/model/installer/AZComparator;->compare(Lcom/slideme/sam/manager/model/installer/AppInfo;Lcom/slideme/sam/manager/model/installer/AppInfo;)I

    move-result v0

    return v0
.end method
