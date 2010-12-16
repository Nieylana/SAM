.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;
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

.field private final synthetic val$adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;Lcom/slideme/sam/manager/view/adapters/ImageAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->val$adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$5(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Z)V

    .line 295
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, screenshotText:Landroid/widget/TextView;
    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$6(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V

    .line 299
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 300
    .local v0, g:Landroid/widget/Gallery;
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->val$adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 302
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2$1;

    invoke-direct {v2, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;)V

    .line 301
    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 315
    invoke-virtual {v0}, Landroid/widget/Gallery;->bringToFront()V

    .line 317
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$7(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 319
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 320
    return-void
.end method
