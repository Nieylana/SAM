.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->mkDirs()V

    .line 106
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    iget-object v0, v0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->addDownloadedId(Ljava/lang/String;JJ)J

    .line 114
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->download(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 119
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->finish()V

    goto :goto_0
.end method
