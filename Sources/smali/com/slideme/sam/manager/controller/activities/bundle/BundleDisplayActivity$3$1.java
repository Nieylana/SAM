.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;->val$text:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;->val$text:Ljava/lang/String;

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method
