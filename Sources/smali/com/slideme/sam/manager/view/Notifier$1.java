.class Lcom/slideme/sam/manager/view/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/view/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$0()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, notifStr:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 82
    .end local p0
    :cond_0
    return-void

    .line 65
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$1()Ljava/util/Date;

    move-result-object v2

    .line 66
    .local v2, lastUpdate:Ljava/util/Date;
    move-object v3, v2

    .line 67
    .local v3, lastUpdateInFile:Ljava/util/Date;
    invoke-static {v4, v2}, Lcom/slideme/sam/manager/view/Notifier;->access$2(Ljava/lang/String;Ljava/util/Date;)V

    .line 68
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .end local p0
    .local v0, cnt:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 72
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/SamNotification;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/SamNotification;

    invoke-static {p0, v1}, Lcom/slideme/sam/manager/view/Notifier;->access$4(Lcom/slideme/sam/manager/model/domain/SamNotification;I)V

    .line 76
    :cond_2
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/SamNotification;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    invoke-static {}, Lcom/slideme/sam/manager/view/Notifier;->access$3()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/SamNotification;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/domain/SamNotification;->getDate()Ljava/util/Date;

    move-result-object v2

    .line 79
    :cond_3
    const/4 v5, 0x1

    sub-int v5, v0, v5

    if-ne v1, v5, :cond_4

    .line 80
    invoke-static {v2}, Lcom/slideme/sam/manager/view/Notifier;->access$5(Ljava/util/Date;)V

    .line 71
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
