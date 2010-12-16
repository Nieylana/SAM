.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;

.field private final synthetic val$billing:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;->this$2:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;->val$billing:Landroid/widget/TextView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;->val$billing:Landroid/widget/TextView;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;->val$billing:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3$1;->this$2:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    move-result-object v1

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    return-void
.end method
