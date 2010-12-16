.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->mkDirs()V

    .line 300
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    iget-object v0, v0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->addDownloadedId(Ljava/lang/String;JJ)J

    .line 301
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-wide v0, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->download(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->finish()V

    .line 314
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->download(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    goto :goto_0
.end method
