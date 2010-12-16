.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;
.super Ljava/lang/Thread;
.source "TermsActivity.java"


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

.field private final synthetic val$billing:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->val$billing:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService;->isPuchased(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->val$billing:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v0

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$2;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->val$billing:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$2;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
