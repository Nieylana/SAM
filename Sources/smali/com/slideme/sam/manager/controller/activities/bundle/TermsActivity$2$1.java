.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->val$text:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 218
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 219
    .local v0, terms:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v3

    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$4(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
