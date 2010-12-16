.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;
.super Landroid/os/Handler;
.source "TermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f08001d

    const/4 v7, 0x0

    .line 74
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "APPLICATION"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 76
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/slideme/sam/manager/view/buttons/MappedButton;

    .line 79
    .local v2, imageButton:Lcom/slideme/sam/manager/view/buttons/MappedButton;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)V

    .line 83
    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v3, v8}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;

    invoke-direct {v3, p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$2;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "update"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Z)V

    .line 123
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    const v4, 0x7f0a00ae

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, billing:Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v3, v8}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/widget/TextView;)V

    .line 146
    invoke-virtual {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$3;->start()V

    goto :goto_0

    .end local v1           #billing:Landroid/widget/TextView;
    :cond_2
    move v4, v7

    .line 122
    goto :goto_1

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "locker"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    const v4, 0x7f080051

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 151
    :cond_4
    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(I)V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
