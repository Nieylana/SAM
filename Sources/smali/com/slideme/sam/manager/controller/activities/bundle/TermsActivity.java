.class public Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "TermsActivity.java"


# static fields
.field private static final REQUEST_LOGIN:I = 0x1


# instance fields
.field private hasMenu:Z

.field private loggedIn:Z

.field termsHandler:Landroid/os/Handler;

.field private update:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->hasMenu:Z

    .line 37
    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->loggedIn:Z

    .line 71
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->termsHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->loggedIn:Z

    return v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->update:Z

    return v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->update:Z

    return-void
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRemoteResources(Ljava/lang/String;)V
    .locals 1
    .parameter "bundleId"

    .prologue
    .line 209
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$2;->start()V

    .line 228
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"
    .parameter "defText"

    .prologue
    .line 202
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public formatPrices(D)Ljava/lang/String;
    .locals 3
    .parameter "d"

    .prologue
    .line 231
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "intent"

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 68
    :goto_1
    return-void

    .line 57
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->loggedIn:Z

    goto :goto_0

    .line 65
    :pswitch_1
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v3, 0x7f030023

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setContentView(I)V

    .line 173
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "APPLICATION"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 175
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v3, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v3, "login"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->loggedIn:Z

    .line 180
    :cond_0
    new-instance v3, Lcom/slideme/sam/manager/model/compatibility/Compatibility;

    invoke-direct {v3, v0, p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;-><init>(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/app/Activity;)V

    .line 181
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_max_os()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_min_os()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_target_os()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 183
    .local v2, compatible:Z
    :goto_0
    const v3, 0x7f0a00af

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    .local v1, compatibility:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 185
    const v3, 0x7f080099

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :goto_1
    return-void

    .line 181
    .end local v1           #compatibility:Landroid/widget/TextView;
    .end local v2           #compatible:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 189
    .restart local v1       #compatibility:Landroid/widget/TextView;
    .restart local v2       #compatible:Z
    :cond_2
    const v3, 0x7f08009a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 44
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 45
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 46
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->hasMenu:Z

    .line 49
    :cond_0
    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "login"

    iget-boolean v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->loggedIn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method protected onStart()V
    .locals 10

    .prologue
    const v9, 0x7f08004d

    .line 245
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 246
    const v5, 0x7f080007

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APPLICATION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 250
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v5, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setRemoteResources(Ljava/lang/String;)V

    .line 255
    const v5, 0x7f0a00b3

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/view/buttons/MappedButton;

    .line 256
    .local v1, cancel:Lcom/slideme/sam/manager/view/buttons/MappedButton;
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$3;

    invoke-direct {v5, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)V

    invoke-virtual {v1, v5}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v5, 0x7f0a00b2

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/slideme/sam/manager/view/buttons/MappedButton;

    .line 271
    .local v2, imageButton:Lcom/slideme/sam/manager/view/buttons/MappedButton;
    const v5, 0x7f0a00ad

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 277
    .local v4, price:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "locker"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 278
    .local v3, locker:Z
    iget-wide v5, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    if-nez v3, :cond_0

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    invoke-virtual {p0, v6, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->formatPrices(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " USD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->setTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->termsHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-boolean v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->update:Z

    if-eqz v5, :cond_1

    .line 290
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_1
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 296
    invoke-virtual {v2, v5}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 293
    :cond_1
    const v5, 0x7f080051

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/slideme/sam/manager/view/buttons/MappedButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 323
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 324
    return-void
.end method
