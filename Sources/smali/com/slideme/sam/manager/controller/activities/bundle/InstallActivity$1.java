.class Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;
.super Landroid/os/Handler;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v8, 0x7f080031

    const-wide/16 v3, 0x0

    const v2, 0x7f080032

    const/4 v7, 0x1

    const-string v9, " ("

    .line 38
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 39
    .local v6, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    iget-object v0, v0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    iget-object v1, v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->addInstalledId(Ljava/lang/String;JJ)J

    .line 46
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v2, v8}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    const-string v1, "installed"

    invoke-virtual {v0, v6, v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->installNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-wide v0, v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 56
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :goto_1
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    const-string v1, "failed"

    invoke-virtual {v0, v6, v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->installNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 62
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 68
    :pswitch_3
    iget-wide v0, v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v2, v8}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    :goto_2
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v6, v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->installNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    .line 75
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
