.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

.field private final synthetic val$cancel:Landroid/widget/Button;

.field private final synthetic val$isPackagePresent:Ljava/lang/Boolean;

.field private final synthetic val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final synthetic val$newState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I
    .locals 3

    .prologue
    .line 464
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->values()[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->CANCELLED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->COMPLETED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ERROR:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->INITIALIZING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->PENDING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Landroid/widget/Button;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$newState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$cancel:Landroid/widget/Button;

    iput-object p4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iput-object p6, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$isPackagePresent:Ljava/lang/Boolean;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    .line 467
    invoke-static {}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$newState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$isPackagePresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$9(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V

    .line 472
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$isPackagePresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$9(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V

    .line 478
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v1

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;->val$isPackagePresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$9(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
